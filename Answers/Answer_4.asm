ORG 0000H;
	LJMP MAIN;
	
ORG 0003H;
	MOV R2, #01H;
	RETI;
	
ORG 300H;
	MAIN: MOV R2, #00H;
	
		INIT: MOV A, #38H;
			  ACALL CMD;
			  MOV A, #0FH;
			  ACALL CMD;
			  MOV A, #01H;
			  ACALL CMD;
			  MOV A, #06H;
			  ACALL CMD;
			  MOV A, #80H;
			  ACALL CMD;
			  MOV A, #06H;
			  ACALL CMD;
			  MOV A, #80H;
			  ACALL CMD;
			  CJNE R2, #00H, DISPLAY_REGNO;
			  
		SETUP_1: MOV R7, #09H;
				 MOV R0, #100H;
			  
		DISPLAY_NAME: MOV A, @R0;
					  ACALL DAT;
					  INC R0;
					  DJNZ R7, DISPLAY_NAME;
					  SJMP INIT;
					  
	    DISPLAY_REGNO: 
			SETUP_2: MOV R7, #09H;
					 MOV R0, #150H;
					 
			DISP: MOV A, @R0;
			      ACALL DAT;
				  INC R0;
				  DJNZ R7, DISP;
				  MOV R2, #00H;
				  SJMP INIT;
		
		CMD: MOV P2, A;
			 CLR P1.0;
			 CLR P1.1;
			 SETB P1.2;
			 CLR P1.2;
			 ACALL DELAY;
			 RET;
			 
	    DAT: MOV P2, A;
			 SETB P1.0;
			 CLR P1.1;
			 SETB P1.2;
			 CLR P1.2;
			 ACALL DELAY;
			 RET;
			 
	    DELAY: MOV TMOD, #01H;
			   MOV TH0, #0D8H;
			   MOV TL0, #0F0H;
			   SETB TR0;
			   
			   WAIT: JNB TF0, WAIT;
			   CLR TF0;
			   CLR TR0;
			   RET;
			   
ORG 100H;
	DB "HEYITSDSP";
		
ORG 150H;
	DB "19BEE0375";
		
END;				  
		