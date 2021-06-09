ORG 0000H;
	LJMP MAIN;
	
ORG 300H;
	MAIN: MOV P1, #00H;		Initializing P1 as an output port
		  MOV P0, #0FFH;	Initializing P0 as an input port
		  
		  JB P0.0, STATE_2;
		  MOV R4, #04H;
		  
    STATE_1: 
		MOV R3, #08H;
		MOV R1, #100H;
		CYCLE_1: MOV A, @R1;
				 MOV P1, A;
				 ACALL DELAY;
				 INC R1;
				 DJNZ R3, CYCLE_1;
		MOV R3, #08H;
		DEC R1;
		CYCLE_2: MOV A, @R1;
				 MOV P1, A;
				 ACALL DELAY;
				 DEC R1;
				 DJNZ R3, CYCLE_2;
		DJNZ R4, STATE_1;
		ACALL CONSTANT;
		SJMP MAIN;
		
	STATE_2: 
		MOV R3, #04H;
		MOV R1, #50H;
		CYCLE: MOV A, @R1;
			   MOV P1, A;
			   ACALL DELAY;
			   INC R1;
			   DJNZ R3, CYCLE;
		DJNZ R4, STATE_2;
		ACALL CONSTANT;
		SJMP MAIN;
		
	DELAY: MOV TMOD, #01H;
		   MOV TH0, #0D8H;
		   MOV TL0, #0F0H;
		   SETB TR0;
		   
		   WAIT: JNB TF0, WAIT;
		   CLR TR0;
		   CLR TF0;
		   RET;
    
	CONSTANT: MOV P1, #0FFH;
			  ACALL DELAY;
			  RET;		 
			 
ORG 50H;
	DB 81H, 42H, 24H, 18H;
ORG 100H;
	DB 01H, 02H, 04H, 08H, 10H, 20H, 40H, 80H;

END;	