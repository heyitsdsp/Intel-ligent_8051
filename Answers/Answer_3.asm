ORG 0000H;
	LJMP MAIN;
	
ORG 0003H;
	MOV R2, #00H;
	RETI;
	
ORG 200H;
	MAIN: MOV R2, #01H;
		  MOV P0, #00H;
	
	STATE: CJNE R2, #01H, STATE_2;
		   MOV R1, #50H;
		   MOV R3, #0AH;
	   ASC: MOV A, @R1;
			MOV P0, A;
			ACALL DELAY;
			INC R1;
			DJNZ R3, ASC;
	   SJMP STATE;
	   
	   STATE_2: MOV R3, #0AH;
				MOV R1, #59H;
			DESC: MOV A, @R1;
				  MOV P0, A;
				  ACALL DELAY;
				  DEC R1;
				  DJNZ R3, DESC;
				  
	   SJMP MAIN;

	DELAY: MOV TMOD, #01H;
		   MOV TH0, #3CH;
		   MOV TL0, #0B0H;
		   SETB TR0;
		   
		   WAIT: JNB TF0, WAIT;
		   CLR TF0;
		   CLR TR0;
		   RET;   
	   
ORG 50H;
	DB 0FCH, 60H, 0DAH, 0F2H, 66H, 0B6H, 0BEH, 0E0H, 0FEH, 0F6H;
		
END;