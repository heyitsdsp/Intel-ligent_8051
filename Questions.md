# Programming questions 

1.	Write an assembly language program to interface LEDs and switches with the 8051 microcontroller, in which normally the LEDs should display the lights in the pattern of – two LEDs should glow in which one led should go off first and followed by the next, and this should scroll from right to left when input port pin P0.0 is reset and scrolling should happen from left to right when the port pin P0.0 is set.

2.	Write an assembly language program to interface LEDs and switches with 8051 microcontroller, in which a single led should go from right to left (turning on) and vice versa 4 times and then all LEDs should be turned on if port pin P0.0 is reset and when P0.0 is set 1 LED from left should go (turning on) to the centre and 1 led from right should go to the centre – this should happen 4 times and then all LEDs should constantly glow. 

3.	Write an assembly language program to interface seven segment LED with 8051 microcontroller, the display should display the numbers in ascending order sequence normally and when external interrupt 0 is activated the numbers should be displayed in descending order.

4.	Write an assembly language program to interface LCD with 8051 microcontroller and make the screen display your name normally, when External Interrupt 0 is activated it should display your register number.

5.	Write an assembly language program to interface LEDs and switches with the 8051 microcontroller, in which normally the LEDs should display the lights in the pattern of – all LEDs should glow in the beginning and gradually each LEDs should turn off from right to left normally and when external interrupt 0 is activated it should happen from left to right when the port pin P0.0 is set.

6.	Write an assembly language program to generate a square wave with timer (timer in mode 2) interrupt with 10μs time delay. Use external interrupt to change the delay to 20 μs.

7.	Write an assembly language program to generate two square waves with 10 μs delay but 1800 phase shifted with each other.

8.	Write an assembly language program to generate squarewave of 50Hz frequency normally and the frequency should change to 100 Hz when the port pin P0.0 is reset.

9.	Write an assembly language program to interface LEDs and switches with the 8051 microcontroller, in which normally the LEDs should display the lights in the pattern of – all LEDs should glow in the beginning and gradually each LEDs should turn off from right to left and when external interrupt 0 is activated turning off should happen from left to right.

10.	Write a program to count the number of vowels in the given string. Get string input from RAM location 45H. String “MICRO”. 

11. Write an 8051-assembly program to 
    1. Create a Square wave of 66% duty cycle on bit 5 of port 1.
    2. Create a Square wave of 75% duty cycle on bit 3 of port 2.

12. Write an assembly language program to solve the following equation <br />
<p align = 'center'><a href="https://imgbb.com/"><img src="https://i.ibb.co/K2H9pnq/equation.png" alt="equation" border="0"></a></p>
Assume a, b and c are 8 bit numbers and x is a 16 bit number

13. Write a program to generate PWM by comparing triangular wave and constant DC line.

14. Assume that register “A” has packed BCD. Write a program to convert packed BCD  into two unpacked numbers and place them in R2 & R6.

15. Assume that the INT1 pin is connected to a switch that is normally high. Whenever it goes low, it should turn on an LED. The LED is connected to P1.3 and is normally off. When it is turned on it should stay on for a fraction of second. As long as the switch is pressed low, the LED should stay on. Write an 8051-assembly program with the above specifications.

16. Write a program that continuously gets a single bit of data from P3.2 and send it to P1.0, while simultaneously creating a square wave of 200 µs period on pin P2.5. Use timer 0 to create square wave. Assume that XTAL = 11.0592 MHz

17. Write an 8051-assembly language program to generate 50 Hz sinusoidal wave form on port 1. 

18. Write an 8051-assembly language program to generate a 50 Hz triangular wave form on pin 3 of port 2.

19. Write an 8051-assembly language program to generate a 50 Hz sawtooth wave form on pin 2 of port 1.

20. Write an 8051-assembly language program to generate a 50 Hz square wave form on port 1.

21.  A simple burglar alarm system has 4 zone inputs connected to an 8051 I/O port. If any one of these inputs is activated a bell will sound for 5 minutes and the corresponding zone LED, or LEDS, will be activated. Design an 8051 assembly language program to implement the required functionality for this system. 

22. A single digit 7-segment display device, as shown, is to be interfaced to Port 1 of an 8051 microcontroller. <br />
<p align = "center"><a href="https://imgbb.com/"><img src="https://i.ibb.co/0rwXgLz/equation.png" alt="equation" border="0"></a></p><p>Assume each LED of the display is connected individually to pins 0 to 6 of port 1. Write an assembly language program to count from 1-9 over and over again and to display that count on the 7-segment LED.</p>

23. As part of a industrial automation system two wheels are driven by two separate motors, motor A and motor B. The rotation sensors give a logic low level as the wheel magnet passes the sensor. Each motor can be turned on of off by providing a logic signal as indicated in the diagram. An 8051 is to be used to control these motors where a motor can be turned on and allowed run for N rotations and then turned off. The sensor signals will cause timer/counter interrupts. <br />
<p align = "center"><a href="https://imgbb.com/"><img src="https://i.ibb.co/Nnnhtnr/Screenshot-189.png" alt="Screenshot-189" border="0"></a>
</p><p>Write an 8051 assembly language program which will turn on the two motors at the same time. Motor A will do 200 rotations and will then be stopped. Motor B will do 20,000 rotations and will then be stopped. A separate timer/counter interrupt is to be used for the control of each motor.</p>

24. Write an algorithm and assembly program for a cash bill of “N” materials. A rupee and paisa are a two-digit number which are stored in two different arrays. Find the total amount for the “N” materials. Subtract 10% discount on the total and give the actual amount to be paid.

25. Write an assembly language program to generate a cosine waveform with a frequency of 50 Hz, show the calculations involved. Show how a DAC should be interfaced to obtain the waveform?

26. Write an assembly language program to check whether the given string is palindrome. 

27. Write an assembly language program to get input from switches from Port 0 and do the following by connecting LEDs in Port1 
    1.	Rotate a single LED towards right if 01H is the input from Port0
    2.	Rotate a single LED towards left if 02H is the input from Port 0
    3.	Make the alternate LED to blink if 03H is the input from Port 0.

28. Write an 8051-assembly program with the following assumptions. Port P1.4 is an input and represents the condition of an oven. If it goes high it means that the oven is hot. Monitor the bit continuously. When it goes high send a low – to – high pulse to port 2.5 to turn on a buzzer.

29. Assume LM35 is connected with Port0 of 8051 microcontroller, write an assembly language to read the value from the sensor and display the same in the LCD display with the message “Value is = ____ unit”, show the necessary blocks.

30. Write an assembly language program to generate a square wave in Port 0 with a frequency of 50 Hz normally, the frequency should get doubled when INT0 is activated and it should be tripled when INT1 is activated.

31. You are going to conduct the survey regarding, whether the Government of India can allow opening abroad universities in India? To conduct the survey, you are going to use 8051 microcontroller, two buttons, and one display. Write a program and display the following contents.
    1. A number of people participated in the survey.
    2. A number of people who agreed and not agreed.

32. Write an assembly language program to convert a given hexadecimal number into BCD number.

33. In elevator, IR sensors are mounted and it can accommodate maximum of 8 persons. Write a program to perform the following 
    1.	Turn on LED’s which is connected in P2 to indicate when elevator overloads.
    2.	Switch ON the lights and fans when a person enters into the elevator.
    3.	When elevator is ideal for a while, turn OFF the lights and fans.   Assume lights and fans are connected in P1.

34. Akeyboard has two keys; run and stop. Write a program that is interrupt driven by these two keys using INT0 for the run key, and INT1 for the stop key. If the run key is selected, set pin P3.0 high; if stop is selected, set the pin low.

35. Write an 8051-assembly language program to generate the Fibonacci series and to output it on Port 1 








