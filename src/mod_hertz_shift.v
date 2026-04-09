/*
MODULE: mod_hertz_hi_speed. v1.0 20/11/2013.

Written by Nikiforov Andrey (C)2013,IKI,Moscow,Russia

ОПИСАНИЕ РАБОТЫ:
----------------

Модуль выдает секундную метку либо по HZ_IN, либо автоматически.
Он также выдает время либо принятое от порцессора, либо автоматически принятое.

АЛГОРИТМ РАБОТЫ:
-----------------
При режиме АВТО:
Выдаем метку раз в секунду, при выдаче метки увеличиваем время на 1.

Если пришла метка от процессора, то выдаем метку потом согласно этой новой метке.

При режиме процессор: 
при получении метки от процессора выжидаем 1 сек - сдвижку и выдаем метку и время на 1 больше.

History:
--------
v1.0 20/11/2013 - начало (ПОКА БЕЗ ПЛАВНОГО).			
*/

module mod_hertz_shift(
//////////////////////////// ОБЩИЕ
CLK, 
RESET,

HZ_IN,
KBV_IN,
SHIFT_IN,

HZ_OUT,
KBV_OUT,

STATUS_HZ_IN_NOT_AUTO,

BIT_KBV_CORRECTION
);

///////////////////////////////////////////////////////////////////
//
// Parameters
// 

//`define test_simulation

`ifdef test_simulation 	// TEST СИМУЛЯЦИЯ!!!

	// Ширина адресной шины
	parameter QUARTZ = 24;

`else 					// WORK РАБОЧИЙ РЕЖИМ

	// Ширина адресной шины
	parameter QUARTZ = 12;

`endif

///////////////////////////////////////////////////////////////////
//
// Inputs, Outputs, InOuts
// 

//////////////////////////// ОБЩИЕ

// Входная частота. Контроллер полностью синхронизирован от этой частоты
input 			CLK; 
// Общий ресет контроллера. GND - активный. (то есть при GND  всё в ресете.)
input 			RESET;

// входные секунды
input 			HZ_IN;
// время входное
input [31:0]	KBV_IN;

// значение сдвижки в мкс.
input [19:0]	SHIFT_IN;

// выходная секунда
output			HZ_OUT;
// время выходное
output [31:0]	KBV_OUT;

// (1 - секундная метка приходит снаружи, 0 - автоматически генерится)
output			STATUS_HZ_IN_NOT_AUTO;

// строб - произошла коррекция времени.
output			BIT_KBV_CORRECTION;

///////////////////////////////////////////////////////////////////
//
// Local Wires and Registers
//

//////////////////////// КОНТРОЛЛЕР ДЕЙСТВИЙ //////////////////////////////////////////////////////


// метка и время от CPU
reg			reg_HZ_IN;
reg [31:0]	reg_KBV_IN;	
reg [19:0]	reg_SHIFT_IN;

////////////////////// КОНТРОЛЛЕР ДЕЙСТВИЙ //////////////////////////////////////////////////////
reg	[1:0]	fsm_state;

parameter	FSM_IDLE 	= 2'd0,
			FSM_HZ_OUT 	= 2'd1;

reg			HZ_OUT;
reg			reg_HZ_IN_stop;
reg			str_change_time;

// ВРЕМЯ КБВ
reg [31:0]	KBV_OUT;	
reg			BIT_KBV_CORRECTION;

// (1 - секундная метка приходит снаружи, 0 - автоматически генерится)
reg			STATUS_HZ_IN_NOT_AUTO;

// часы
reg	[5:0]	mks_count;
reg	[19:0]	time_mks;			

///////////////////////////////////////////////////////////////////
//
// Begin

// метка и время от CPU
always @(posedge CLK or negedge RESET)
begin 
	if (~RESET)  							// глобальный сброс
		begin
			reg_HZ_IN <= 1'b0;
			
			reg_KBV_IN[31:0] <= 32'b0;	
			reg_SHIFT_IN[19:0] <= 20'b0;
		end
	else if (reg_HZ_IN_stop)
		begin
			reg_HZ_IN <= 1'b0;
		end
	else if (HZ_IN & ~reg_HZ_IN)
		begin
			reg_HZ_IN <= 1'b1;
			
			reg_KBV_IN[31:0] <= KBV_IN[31:0];	
			reg_SHIFT_IN[19:0] <= SHIFT_IN[19:0];
		end
end		

////////////////////// КОНТРОЛЛЕР ДЕЙСТВИЙ //////////////////////////////////////////////////////
always @ (posedge CLK or negedge RESET)
begin
	if (~RESET) 
		begin	
			HZ_OUT <= 1'b0;
			reg_HZ_IN_stop <= 1'b0;
			str_change_time <= 1'b0;
			
			fsm_state  <= FSM_IDLE;
     	end 
	else begin
       case(fsm_state)
	 FSM_IDLE : 
		begin	
	 		HZ_OUT <= 1'b0;

			if (reg_HZ_IN & ~reg_HZ_IN_stop)
				begin
					reg_HZ_IN_stop <= 1'b1;
				end
			else if (reg_HZ_IN_stop)
				begin
					if (mks_count == QUARTZ - 2)	
						begin
							str_change_time <= 1'b1;
							fsm_state  <= FSM_HZ_OUT;
						end
				end
			else
				begin
					if ((mks_count == QUARTZ - 2) & (time_mks[19:0] == 20'd9999))	
						begin
							str_change_time <= 1'b1;
							fsm_state  <= FSM_HZ_OUT;
						end				
				end			
	 	end
	 FSM_HZ_OUT :
		begin
	 		HZ_OUT <= 1'b1;
	 		reg_HZ_IN_stop <= 1'b0;
	 		str_change_time <= 1'b0;
	 		
	 		fsm_state  <= FSM_IDLE;
	 	end
	default : 				fsm_state  <= FSM_IDLE;
       endcase
	end
end

// ВРЕМЯ КБВ
always @(posedge CLK or negedge RESET)
begin 
	if (~RESET)  							// глобальный сброс
		begin
			KBV_OUT[31:0] <= 32'b0;	
			BIT_KBV_CORRECTION <= 1'b0;
		end
	else if (str_change_time)
		begin
			if  (reg_HZ_IN_stop)
				begin
					KBV_OUT[31:0] <= reg_KBV_IN[31:0];
					
					if (KBV_OUT[31:0] != reg_KBV_IN[31:0])	BIT_KBV_CORRECTION <= 1'b1;	
				end
			else
				begin
					KBV_OUT[31:0] <= KBV_OUT[31:0] + 1'b1;					
				end
		end
	else
		begin
			BIT_KBV_CORRECTION <= 1'b0;		
		end
end		

// (1 - секундная метка приходит снаружи, 0 - автоматически генерится)
always @(posedge CLK or negedge RESET)
begin 
	if (~RESET)  							// глобальный сброс
		begin
			STATUS_HZ_IN_NOT_AUTO <= 1'b0;
		end
	else if (str_change_time)
		begin
			STATUS_HZ_IN_NOT_AUTO <= reg_HZ_IN_stop;
		end
end		

// часы
always @(posedge CLK or negedge RESET)
begin 
	if (~RESET)  							// глобальный сброс
		begin
			mks_count[5:0] <= 6'b0;
			
			time_mks[19:0] 	<= 20'b0;	
		end
	else if ((fsm_state  == FSM_HZ_OUT) | (reg_HZ_IN & ~reg_HZ_IN_stop))
		begin
			mks_count[5:0] <= 6'b0;
			
			time_mks[19:0] 	<= 20'b0;	
		end
	else
		begin
			if (mks_count == QUARTZ - 1) 	
				begin
					mks_count[5:0] <= 6'b0;
				end
			else		
				begin
					mks_count[5:0] <= mks_count[5:0] + 1'b1;
				end
				
			if (mks_count[5:0] == QUARTZ - 1) time_mks[19:0] <= time_mks[19:0] + 1'b1;	
		end
end		

endmodule
