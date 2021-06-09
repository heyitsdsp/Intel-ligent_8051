ORG 0000H;
	LJMP MAIN;
	
ORG 300H;
	MAIN: MOV P0, #0FFH;	Set up P0 as an input port
		  MOV P1, #03H;		Turn on the two LEDs connected to P0.0 and P0.1
		  
		  JNB P0.0, RIGHT_TO_LEFT;
		  
    LEFT_TO_RIGHT: CLR P1.0;
				   ACALL DELAY;
				   CLR P1.1;
				   ACALL DELAY;
				   SJMP MAIN;
				   
    RIGHT_TO_LEFT: CLR P1.1;
				   ACALL DELAY;
				   CLR P1.0;
				   ACALL DELAY;
				   SJMP MAIN;
				   
    DELAY: MOV TMOD, #01H;
		   MOV TH0, #0D8H;
		   MOV TL0, #0F0H;
		   SETB TR0;
		   
		   WAIT: JNB TF0, WAIT;		Wait for timer to stop counting
		   
		   CLR TR0;
		   CLR TF0;
		   RET;
	END;