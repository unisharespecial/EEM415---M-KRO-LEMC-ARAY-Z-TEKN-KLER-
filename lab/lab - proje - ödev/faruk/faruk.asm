;  ASM code generated by mikroVirtualMachine for PIC - V. 8.0.0.0
;  Date/Time: 05.01.2010 20:33:47
;  Info: http://www.mikroe.com


; ADDRESS	OPCODE	ASM
; ----------------------------------------------
$0000	$EF39	F000			GOTO	_main
$0008	$	_init:
;faruk.c,4 :: 			void init()
;faruk.c,5 :: 			{TRISB=1;
$0008	$0E01	    			MOVLW	1
$000A	$6E93	    			MOVWF	TRISB, 0
;faruk.c,6 :: 			PORTB=0;
$000C	$6A81	    			CLRF	PORTB, 0
;faruk.c,7 :: 			TRISC=0;
$000E	$6A94	    			CLRF	TRISC, 0
;faruk.c,8 :: 			PORTC=0;
$0010	$6A82	    			CLRF	PORTC, 0
;faruk.c,9 :: 			TRISD=0;
$0012	$6A95	    			CLRF	TRISD, 0
;faruk.c,10 :: 			PORTD=0;
$0014	$6A83	    			CLRF	PORTD, 0
;faruk.c,11 :: 			}
$0016	$0012	    			RETURN
$0018	$	GlobalInifaruk:
$0018	$0E00	    			MOVLW	0
$001A	$6E15	    			MOVWF	_i+0, 0
$001C	$0E00	    			MOVLW	0
$001E	$6E16	    			MOVWF	_i+1, 0
$0020	$0E00	    			MOVLW	0
$0022	$6E17	    			MOVWF	_j+0, 0
$0024	$0E00	    			MOVLW	0
$0026	$6E18	    			MOVWF	_j+1, 0
$0028	$0E00	    			MOVLW	0
$002A	$6E19	    			MOVWF	_x+0, 0
$002C	$0E00	    			MOVLW	0
$002E	$6E1A	    			MOVWF	_x+1, 0
$0030	$0E01	    			MOVLW	1
$0032	$6E1B	    			MOVWF	_dizi+0, 0
$0034	$0E00	    			MOVLW	0
$0036	$6E1C	    			MOVWF	_dizi+1, 0
$0038	$0E02	    			MOVLW	2
$003A	$6E1D	    			MOVWF	_dizi+2, 0
$003C	$0E00	    			MOVLW	0
$003E	$6E1E	    			MOVWF	_dizi+3, 0
$0040	$0E04	    			MOVLW	4
$0042	$6E1F	    			MOVWF	_dizi+4, 0
$0044	$0E00	    			MOVLW	0
$0046	$6E20	    			MOVWF	_dizi+5, 0
$0048	$0E08	    			MOVLW	8
$004A	$6E21	    			MOVWF	_dizi+6, 0
$004C	$0E00	    			MOVLW	0
$004E	$6E22	    			MOVWF	_dizi+7, 0
$0050	$0E10	    			MOVLW	16
$0052	$6E23	    			MOVWF	_dizi+8, 0
$0054	$0E00	    			MOVLW	0
$0056	$6E24	    			MOVWF	_dizi+9, 0
$0058	$0E20	    			MOVLW	32
$005A	$6E25	    			MOVWF	_dizi+10, 0
$005C	$0E00	    			MOVLW	0
$005E	$6E26	    			MOVWF	_dizi+11, 0
$0060	$0E40	    			MOVLW	64
$0062	$6E27	    			MOVWF	_dizi+12, 0
$0064	$0E00	    			MOVLW	0
$0066	$6E28	    			MOVWF	_dizi+13, 0
$0068	$0E80	    			MOVLW	128
$006A	$6E29	    			MOVWF	_dizi+14, 0
$006C	$0E00	    			MOVLW	0
$006E	$6E2A	    			MOVWF	_dizi+15, 0
;faruk.c,2 :: 			int dizi[]={1,2,4,8,16,32,64,128};
$0070	$0012	    			RETURN
$0072	$	_main:
;faruk.c,12 :: 			void main()
;faruk.c,13 :: 			{init();
$0072	$EC0C	F000			CALL	GlobalInifaruk
$0076	$EC04	F000			CALL	_init
;faruk.c,14 :: 			do{ if(PORTB==2)
$007A	$	L_main_0:
$007A	$5081	    			MOVF	PORTB, 0, 0
$007C	$0A02	    			XORLW	2
$007E	$E12F	    			BNZ	L_main_2
;faruk.c,15 :: 			{i=1;
$0080	$0E01	    			MOVLW	1
$0082	$6E15	    			MOVWF	_i, 0
$0084	$0E00	    			MOVLW	0
$0086	$6E16	    			MOVWF	_i+1, 0
;faruk.c,16 :: 			if(i==1 && PORTB==3)
$0088	$5081	    			MOVF	PORTB, 0, 0
$008A	$0A03	    			XORLW	3
$008C	$E128	    			BNZ	L_main_5
$008E	$	L22_ex_L_main_5:
;faruk.c,18 :: 			PORTC=dizi[x];
$008E	$0E01	    			MOVLW	1
$0090	$6E04	    			MOVWF	STACK_4, 0
$0092	$C019	F000			MOVFF	_x, STACK_0
$0096	$C01A	F001			MOVFF	_x+1, STACK_0+1
$009A	$5004	    			MOVF	STACK_4, 0, 0
$009C	$	L_main_15:
$009C	$E005	    			BZ	L_main_16
$009E	$3600	    			RLCF	STACK_0, 1, 0
$00A0	$9000	    			BCF	STACK_0, 0, 0
$00A2	$3601	    			RLCF	STACK_0+1, 1, 0
$00A4	$0FFF	    			ADDLW	255
$00A6	$D7FA	    			BRA	L_main_15
$00A8	$	L_main_16:
$00A8	$0E1B	    			MOVLW	_dizi
$00AA	$2400	    			ADDWF	STACK_0, 0, 0
$00AC	$6EE9	    			MOVWF	FSR0L, 0
$00AE	$0E00	    			MOVLW	@_dizi
$00B0	$2001	    			ADDWFC	STACK_0+1, 0, 0
$00B2	$6EEA	    			MOVWF	FSR0L+1, 0
$00B4	$CFEE	FF82			MOVFF	POSTINC0, PORTC
;faruk.c,19 :: 			if(x==0)
$00B8	$0E00	    			MOVLW	0
$00BA	$181A	    			XORWF	_x+1, 0, 0
$00BC	$E102	    			BNZ	L_main_17
$00BE	$0E00	    			MOVLW	0
$00C0	$1819	    			XORWF	_x, 0, 0
$00C2	$	L_main_17:
$00C2	$E105	    			BNZ	L_main_6
;faruk.c,20 :: 			x=8;
$00C4	$0E08	    			MOVLW	8
$00C6	$6E19	    			MOVWF	_x, 0
$00C8	$0E00	    			MOVLW	0
$00CA	$6E1A	    			MOVWF	_x+1, 0
$00CC	$D004	    			BRA	L_main_7
$00CE	$	L_main_6:
;faruk.c,21 :: 			else x--;
$00CE	$0E01	    			MOVLW	1
$00D0	$5E19	    			SUBWF	_x, 1, 0
$00D2	$0E00	    			MOVLW	0
$00D4	$5A1A	    			SUBWFB	_x+1, 1, 0
$00D6	$	L_main_7:
;faruk.c,22 :: 			i=0;
$00D6	$6A15	    			CLRF	_i, 0
$00D8	$6A16	    			CLRF	_i+1, 0
;faruk.c,23 :: 			PORTD=1;
$00DA	$0E01	    			MOVLW	1
$00DC	$6E83	    			MOVWF	PORTD, 0
;faruk.c,24 :: 			}
$00DE	$	L_main_5:
;faruk.c,25 :: 			}
$00DE	$	L_main_2:
;faruk.c,27 :: 			if(PORTB==1)
$00DE	$5081	    			MOVF	PORTB, 0, 0
$00E0	$0A01	    			XORLW	1
$00E2	$E12C	    			BNZ	L_main_8
;faruk.c,28 :: 			{ j=1;
$00E4	$0E01	    			MOVLW	1
$00E6	$6E17	    			MOVWF	_j, 0
$00E8	$0E00	    			MOVLW	0
$00EA	$6E18	    			MOVWF	_j+1, 0
;faruk.c,29 :: 			if(j==1 && PORTB==3)
$00EC	$5081	    			MOVF	PORTB, 0, 0
$00EE	$0A03	    			XORLW	3
$00F0	$E124	    			BNZ	L_main_11
$00F2	$	L51_ex_L_main_11:
;faruk.c,31 :: 			PORTC=dizi[x];
$00F2	$0E01	    			MOVLW	1
$00F4	$6E04	    			MOVWF	STACK_4, 0
$00F6	$C019	F000			MOVFF	_x, STACK_0
$00FA	$C01A	F001			MOVFF	_x+1, STACK_0+1
$00FE	$5004	    			MOVF	STACK_4, 0, 0
$0100	$	L_main_18:
$0100	$E005	    			BZ	L_main_19
$0102	$3600	    			RLCF	STACK_0, 1, 0
$0104	$9000	    			BCF	STACK_0, 0, 0
$0106	$3601	    			RLCF	STACK_0+1, 1, 0
$0108	$0FFF	    			ADDLW	255
$010A	$D7FA	    			BRA	L_main_18
$010C	$	L_main_19:
$010C	$0E1B	    			MOVLW	_dizi
$010E	$2400	    			ADDWF	STACK_0, 0, 0
$0110	$6EE9	    			MOVWF	FSR0L, 0
$0112	$0E00	    			MOVLW	@_dizi
$0114	$2001	    			ADDWFC	STACK_0+1, 0, 0
$0116	$6EEA	    			MOVWF	FSR0L+1, 0
$0118	$CFEE	FF82			MOVFF	POSTINC0, PORTC
;faruk.c,32 :: 			if(x==8)
$011C	$0E00	    			MOVLW	0
$011E	$181A	    			XORWF	_x+1, 0, 0
$0120	$E102	    			BNZ	L_main_20
$0122	$0E08	    			MOVLW	8
$0124	$1819	    			XORWF	_x, 0, 0
$0126	$	L_main_20:
$0126	$E103	    			BNZ	L_main_12
;faruk.c,33 :: 			x=0;
$0128	$6A19	    			CLRF	_x, 0
$012A	$6A1A	    			CLRF	_x+1, 0
$012C	$D002	    			BRA	L_main_13
$012E	$	L_main_12:
;faruk.c,34 :: 			else x++;
$012E	$4A19	    			INFSNZ	_x, 1, 0
$0130	$2A1A	    			INCF	_x+1, 1, 0
$0132	$	L_main_13:
;faruk.c,35 :: 			j=0;
$0132	$6A17	    			CLRF	_j, 0
$0134	$6A18	    			CLRF	_j+1, 0
;faruk.c,36 :: 			PORTD=2;
$0136	$0E02	    			MOVLW	2
$0138	$6E83	    			MOVWF	PORTD, 0
;faruk.c,37 :: 			}
$013A	$	L_main_11:
;faruk.c,38 :: 			}
$013A	$D002	    			BRA	L_main_14
$013C	$	L_main_8:
;faruk.c,39 :: 			else portd=255;
$013C	$0EFF	    			MOVLW	255
$013E	$6E83	    			MOVWF	PORTD, 0
$0140	$	L_main_14:
;faruk.c,44 :: 			}while(1);
$0140	$D79C	    			BRA	L_main_0
;faruk.c,45 :: 			}
$0142	$D7FF	    			BRA	$
