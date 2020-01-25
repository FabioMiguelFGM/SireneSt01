
_wail:

;SireneSt01.c,8 :: 		void wail(void){
;SireneSt01.c,10 :: 		if(sel1 == 0 && sel2 == 0 && sel3 == 1){  //wail
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_wail2
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_wail2
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_wail2
L__wail223:
;SireneSt01.c,11 :: 		freq = 110;                  //110
	MOVLW      110
	MOVWF      R7+0
	MOVLW      0
	MOVWF      R7+1
;SireneSt01.c,12 :: 		for(d = 0;d < 63;d++){      //70
	CLRF       R5+0
	CLRF       R5+1
L_wail3:
	MOVLW      128
	XORWF      R5+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__wail250
	MOVLW      63
	SUBWF      R5+0, 0
L__wail250:
	BTFSC      STATUS+0, 0
	GOTO       L_wail4
;SireneSt01.c,13 :: 		if(sel1 == 0 && sel2 == 0 && sel3 == 1){
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_wail8
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_wail8
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_wail8
L__wail222:
;SireneSt01.c,14 :: 		for(b = 0;b < 20;b++){     //20
	CLRF       R3+0
	CLRF       R3+1
L_wail9:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__wail251
	MOVLW      20
	SUBWF      R3+0, 0
L__wail251:
	BTFSC      STATUS+0, 0
	GOTO       L_wail10
;SireneSt01.c,15 :: 		som1 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,16 :: 		som2 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,17 :: 		if(sel1 == 0 && sel2 == 0 && sel3 == 1)for(a=0;a<freq;a++);
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_wail14
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_wail14
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_wail14
L__wail221:
	CLRF       R1+0
	CLRF       R1+1
L_wail15:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__wail252
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__wail252:
	BTFSC      STATUS+0, 0
	GOTO       L_wail16
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_wail15
L_wail16:
L_wail14:
;SireneSt01.c,18 :: 		som1 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,19 :: 		som2 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,20 :: 		if(sel1 == 0 && sel2 == 0 && sel3 == 1)for(a=0;a<freq;a++);
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_wail20
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_wail20
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_wail20
L__wail220:
	CLRF       R1+0
	CLRF       R1+1
L_wail21:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__wail253
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__wail253:
	BTFSC      STATUS+0, 0
	GOTO       L_wail22
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_wail21
L_wail22:
L_wail20:
;SireneSt01.c,14 :: 		for(b = 0;b < 20;b++){     //20
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;SireneSt01.c,21 :: 		}//end for
	GOTO       L_wail9
L_wail10:
;SireneSt01.c,22 :: 		}//end if
L_wail8:
;SireneSt01.c,23 :: 		freq--;
	MOVLW      1
	SUBWF      R7+0, 1
	BTFSS      STATUS+0, 0
	DECF       R7+1, 1
;SireneSt01.c,12 :: 		for(d = 0;d < 63;d++){      //70
	INCF       R5+0, 1
	BTFSC      STATUS+0, 2
	INCF       R5+1, 1
;SireneSt01.c,24 :: 		}//end for
	GOTO       L_wail3
L_wail4:
;SireneSt01.c,25 :: 		for(d = 0;d < 63;d++){    //70
	CLRF       R5+0
	CLRF       R5+1
L_wail24:
	MOVLW      128
	XORWF      R5+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__wail254
	MOVLW      63
	SUBWF      R5+0, 0
L__wail254:
	BTFSC      STATUS+0, 0
	GOTO       L_wail25
;SireneSt01.c,26 :: 		if(sel1 == 0 && sel2 == 0 && sel3 == 1){
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_wail29
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_wail29
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_wail29
L__wail219:
;SireneSt01.c,27 :: 		for(b = 0;b < 20;b++){   //20
	CLRF       R3+0
	CLRF       R3+1
L_wail30:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__wail255
	MOVLW      20
	SUBWF      R3+0, 0
L__wail255:
	BTFSC      STATUS+0, 0
	GOTO       L_wail31
;SireneSt01.c,28 :: 		som1 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,29 :: 		som2 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,30 :: 		if(sel1 == 0 && sel2 == 0 && sel3 == 1)for(a=0;a<freq;a++);
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_wail35
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_wail35
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_wail35
L__wail218:
	CLRF       R1+0
	CLRF       R1+1
L_wail36:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__wail256
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__wail256:
	BTFSC      STATUS+0, 0
	GOTO       L_wail37
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_wail36
L_wail37:
L_wail35:
;SireneSt01.c,31 :: 		som1 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,32 :: 		som2 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,33 :: 		if(sel1 == 0 && sel2 == 0 && sel3 == 1)for(a=0;a<freq;a++);
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_wail41
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_wail41
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_wail41
L__wail217:
	CLRF       R1+0
	CLRF       R1+1
L_wail42:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__wail257
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__wail257:
	BTFSC      STATUS+0, 0
	GOTO       L_wail43
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_wail42
L_wail43:
L_wail41:
;SireneSt01.c,27 :: 		for(b = 0;b < 20;b++){   //20
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;SireneSt01.c,34 :: 		}//end for
	GOTO       L_wail30
L_wail31:
;SireneSt01.c,35 :: 		}// end if
L_wail29:
;SireneSt01.c,36 :: 		freq++;
	INCF       R7+0, 1
	BTFSC      STATUS+0, 2
	INCF       R7+1, 1
;SireneSt01.c,25 :: 		for(d = 0;d < 63;d++){    //70
	INCF       R5+0, 1
	BTFSC      STATUS+0, 2
	INCF       R5+1, 1
;SireneSt01.c,37 :: 		}//end for
	GOTO       L_wail24
L_wail25:
;SireneSt01.c,38 :: 		}//end if wail
L_wail2:
;SireneSt01.c,39 :: 		}//end wail
L_end_wail:
	RETURN
; end of _wail

_yelp:

;SireneSt01.c,41 :: 		void yelp(void){
;SireneSt01.c,43 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 0){  //yelp
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_yelp47
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_yelp47
	BTFSC      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_yelp47
L__yelp226:
;SireneSt01.c,44 :: 		freq = 56;  //
	MOVLW      56
	MOVWF      R7+0
	MOVLW      0
	MOVWF      R7+1
;SireneSt01.c,45 :: 		for(d = 0;d < 10;d++){
	CLRF       R5+0
	CLRF       R5+1
L_yelp48:
	MOVLW      128
	XORWF      R5+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__yelp259
	MOVLW      10
	SUBWF      R5+0, 0
L__yelp259:
	BTFSC      STATUS+0, 0
	GOTO       L_yelp49
;SireneSt01.c,46 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 0){
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_yelp53
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_yelp53
	BTFSC      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_yelp53
L__yelp225:
;SireneSt01.c,47 :: 		for(b = 0;b < 11;b++){
	CLRF       R3+0
	CLRF       R3+1
L_yelp54:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__yelp260
	MOVLW      11
	SUBWF      R3+0, 0
L__yelp260:
	BTFSC      STATUS+0, 0
	GOTO       L_yelp55
;SireneSt01.c,48 :: 		som1 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,49 :: 		som2 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,50 :: 		for(a=0;a<freq;a++);
	CLRF       R1+0
	CLRF       R1+1
L_yelp57:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__yelp261
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__yelp261:
	BTFSC      STATUS+0, 0
	GOTO       L_yelp58
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_yelp57
L_yelp58:
;SireneSt01.c,51 :: 		som1 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,52 :: 		som2 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,53 :: 		for(a=0;a<freq;a++);
	CLRF       R1+0
	CLRF       R1+1
L_yelp60:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__yelp262
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__yelp262:
	BTFSC      STATUS+0, 0
	GOTO       L_yelp61
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_yelp60
L_yelp61:
;SireneSt01.c,47 :: 		for(b = 0;b < 11;b++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;SireneSt01.c,54 :: 		}//end for
	GOTO       L_yelp54
L_yelp55:
;SireneSt01.c,55 :: 		}//end if
L_yelp53:
;SireneSt01.c,56 :: 		freq = freq-3;
	MOVLW      3
	SUBWF      R7+0, 1
	BTFSS      STATUS+0, 0
	DECF       R7+1, 1
;SireneSt01.c,45 :: 		for(d = 0;d < 10;d++){
	INCF       R5+0, 1
	BTFSC      STATUS+0, 2
	INCF       R5+1, 1
;SireneSt01.c,58 :: 		}//end for
	GOTO       L_yelp48
L_yelp49:
;SireneSt01.c,59 :: 		for(d = 0;d < 10;d++){
	CLRF       R5+0
	CLRF       R5+1
L_yelp63:
	MOVLW      128
	XORWF      R5+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__yelp263
	MOVLW      10
	SUBWF      R5+0, 0
L__yelp263:
	BTFSC      STATUS+0, 0
	GOTO       L_yelp64
;SireneSt01.c,60 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 0){
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_yelp68
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_yelp68
	BTFSC      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_yelp68
L__yelp224:
;SireneSt01.c,61 :: 		for(b = 0;b < 11;b++){
	CLRF       R3+0
	CLRF       R3+1
L_yelp69:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__yelp264
	MOVLW      11
	SUBWF      R3+0, 0
L__yelp264:
	BTFSC      STATUS+0, 0
	GOTO       L_yelp70
;SireneSt01.c,62 :: 		som1 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,63 :: 		som2 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,64 :: 		for(a=0;a<freq;a++);
	CLRF       R1+0
	CLRF       R1+1
L_yelp72:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__yelp265
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__yelp265:
	BTFSC      STATUS+0, 0
	GOTO       L_yelp73
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_yelp72
L_yelp73:
;SireneSt01.c,65 :: 		som1 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,66 :: 		som2 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,67 :: 		for(a=0;a<freq;a++);
	CLRF       R1+0
	CLRF       R1+1
L_yelp75:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__yelp266
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__yelp266:
	BTFSC      STATUS+0, 0
	GOTO       L_yelp76
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_yelp75
L_yelp76:
;SireneSt01.c,61 :: 		for(b = 0;b < 11;b++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;SireneSt01.c,68 :: 		}//end for
	GOTO       L_yelp69
L_yelp70:
;SireneSt01.c,69 :: 		}//end if
L_yelp68:
;SireneSt01.c,70 :: 		freq = freq+3;
	MOVLW      3
	ADDWF      R7+0, 1
	BTFSC      STATUS+0, 0
	INCF       R7+1, 1
;SireneSt01.c,59 :: 		for(d = 0;d < 10;d++){
	INCF       R5+0, 1
	BTFSC      STATUS+0, 2
	INCF       R5+1, 1
;SireneSt01.c,71 :: 		}//end for
	GOTO       L_yelp63
L_yelp64:
;SireneSt01.c,72 :: 		}//end if yelp
L_yelp47:
;SireneSt01.c,73 :: 		}//end yelp
L_end_yelp:
	RETURN
; end of _yelp

_hilo:

;SireneSt01.c,75 :: 		void hilo(void){
;SireneSt01.c,77 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 1){  //hilo
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_hilo80
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_hilo80
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_hilo80
L__hilo233:
;SireneSt01.c,78 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 1){
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_hilo83
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_hilo83
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_hilo83
L__hilo232:
;SireneSt01.c,79 :: 		for(b = 0;b < 850;b++){
	CLRF       R3+0
	CLRF       R3+1
L_hilo84:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      3
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__hilo268
	MOVLW      82
	SUBWF      R3+0, 0
L__hilo268:
	BTFSC      STATUS+0, 0
	GOTO       L_hilo85
;SireneSt01.c,80 :: 		som1 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,81 :: 		som2 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,82 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 1)for(a=0;a<30;a++);  //33
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_hilo89
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_hilo89
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_hilo89
L__hilo231:
	CLRF       R1+0
	CLRF       R1+1
L_hilo90:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__hilo269
	MOVLW      30
	SUBWF      R1+0, 0
L__hilo269:
	BTFSC      STATUS+0, 0
	GOTO       L_hilo91
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_hilo90
L_hilo91:
L_hilo89:
;SireneSt01.c,83 :: 		som1 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,84 :: 		som2 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,85 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 1)for(a=0;a<30;a++);
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_hilo95
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_hilo95
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_hilo95
L__hilo230:
	CLRF       R1+0
	CLRF       R1+1
L_hilo96:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__hilo270
	MOVLW      30
	SUBWF      R1+0, 0
L__hilo270:
	BTFSC      STATUS+0, 0
	GOTO       L_hilo97
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_hilo96
L_hilo97:
L_hilo95:
;SireneSt01.c,79 :: 		for(b = 0;b < 850;b++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;SireneSt01.c,86 :: 		}//end for                                                //33
	GOTO       L_hilo84
L_hilo85:
;SireneSt01.c,87 :: 		}//end if
L_hilo83:
;SireneSt01.c,88 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 1){
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_hilo101
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_hilo101
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_hilo101
L__hilo229:
;SireneSt01.c,89 :: 		for(b = 0;b < 700;b++){
	CLRF       R3+0
	CLRF       R3+1
L_hilo102:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      2
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__hilo271
	MOVLW      188
	SUBWF      R3+0, 0
L__hilo271:
	BTFSC      STATUS+0, 0
	GOTO       L_hilo103
;SireneSt01.c,90 :: 		som1 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,91 :: 		som2 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,92 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 1)for(a=0;a<48;a++);   //48
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_hilo107
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_hilo107
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_hilo107
L__hilo228:
	CLRF       R1+0
	CLRF       R1+1
L_hilo108:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__hilo272
	MOVLW      48
	SUBWF      R1+0, 0
L__hilo272:
	BTFSC      STATUS+0, 0
	GOTO       L_hilo109
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_hilo108
L_hilo109:
L_hilo107:
;SireneSt01.c,93 :: 		som1 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,94 :: 		som2 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,95 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 1)for(a=0;a<48;a++);  //48
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_hilo113
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_hilo113
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_hilo113
L__hilo227:
	CLRF       R1+0
	CLRF       R1+1
L_hilo114:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__hilo273
	MOVLW      48
	SUBWF      R1+0, 0
L__hilo273:
	BTFSC      STATUS+0, 0
	GOTO       L_hilo115
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_hilo114
L_hilo115:
L_hilo113:
;SireneSt01.c,89 :: 		for(b = 0;b < 700;b++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;SireneSt01.c,96 :: 		}//end for
	GOTO       L_hilo102
L_hilo103:
;SireneSt01.c,97 :: 		}//end if
L_hilo101:
;SireneSt01.c,98 :: 		}//end if hilo
L_hilo80:
;SireneSt01.c,99 :: 		}//end hilo
L_end_hilo:
	RETURN
; end of _hilo

_priority:

;SireneSt01.c,101 :: 		void priority(void){      //priority
;SireneSt01.c,103 :: 		if(sel1 == 1 && sel2 == 0 && sel3 == 0){
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_priority119
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_priority119
	BTFSC      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_priority119
L__priority236:
;SireneSt01.c,104 :: 		freq = 45;
	MOVLW      45
	MOVWF      R7+0
	MOVLW      0
	MOVWF      R7+1
;SireneSt01.c,105 :: 		for(d = 0;d < 8;d++){
	CLRF       R5+0
	CLRF       R5+1
L_priority120:
	MOVLW      128
	XORWF      R5+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__priority275
	MOVLW      8
	SUBWF      R5+0, 0
L__priority275:
	BTFSC      STATUS+0, 0
	GOTO       L_priority121
;SireneSt01.c,106 :: 		if(sel1 == 1 && sel2 == 0 && sel3 == 0){
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_priority125
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_priority125
	BTFSC      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_priority125
L__priority235:
;SireneSt01.c,107 :: 		for(b = 0;b < 5;b++){
	CLRF       R3+0
	CLRF       R3+1
L_priority126:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__priority276
	MOVLW      5
	SUBWF      R3+0, 0
L__priority276:
	BTFSC      STATUS+0, 0
	GOTO       L_priority127
;SireneSt01.c,108 :: 		som1 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,109 :: 		som2 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,110 :: 		for(a=0;a<freq;a++);
	CLRF       R1+0
	CLRF       R1+1
L_priority129:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__priority277
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__priority277:
	BTFSC      STATUS+0, 0
	GOTO       L_priority130
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_priority129
L_priority130:
;SireneSt01.c,111 :: 		som1 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,112 :: 		som2 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,113 :: 		for(a=0;a<freq;a++);
	CLRF       R1+0
	CLRF       R1+1
L_priority132:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__priority278
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__priority278:
	BTFSC      STATUS+0, 0
	GOTO       L_priority133
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_priority132
L_priority133:
;SireneSt01.c,107 :: 		for(b = 0;b < 5;b++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;SireneSt01.c,114 :: 		}//end for
	GOTO       L_priority126
L_priority127:
;SireneSt01.c,115 :: 		freq = freq-3;
	MOVLW      3
	SUBWF      R7+0, 1
	BTFSS      STATUS+0, 0
	DECF       R7+1, 1
;SireneSt01.c,116 :: 		}//end if
L_priority125:
;SireneSt01.c,105 :: 		for(d = 0;d < 8;d++){
	INCF       R5+0, 1
	BTFSC      STATUS+0, 2
	INCF       R5+1, 1
;SireneSt01.c,117 :: 		}//end for
	GOTO       L_priority120
L_priority121:
;SireneSt01.c,118 :: 		for(d = 0;d < 7;d++){
	CLRF       R5+0
	CLRF       R5+1
L_priority135:
	MOVLW      128
	XORWF      R5+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__priority279
	MOVLW      7
	SUBWF      R5+0, 0
L__priority279:
	BTFSC      STATUS+0, 0
	GOTO       L_priority136
;SireneSt01.c,119 :: 		if(sel1 == 1 && sel2 == 0 && sel3 == 0){
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_priority140
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_priority140
	BTFSC      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_priority140
L__priority234:
;SireneSt01.c,120 :: 		for(b = 0;b < 5;b++){
	CLRF       R3+0
	CLRF       R3+1
L_priority141:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__priority280
	MOVLW      5
	SUBWF      R3+0, 0
L__priority280:
	BTFSC      STATUS+0, 0
	GOTO       L_priority142
;SireneSt01.c,121 :: 		som1 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,122 :: 		som2 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,123 :: 		for(a=0;a<freq;a++);
	CLRF       R1+0
	CLRF       R1+1
L_priority144:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__priority281
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__priority281:
	BTFSC      STATUS+0, 0
	GOTO       L_priority145
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_priority144
L_priority145:
;SireneSt01.c,124 :: 		som1 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,125 :: 		som2 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,126 :: 		for(a=0;a<freq;a++);
	CLRF       R1+0
	CLRF       R1+1
L_priority147:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R7+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__priority282
	MOVF       R7+0, 0
	SUBWF      R1+0, 0
L__priority282:
	BTFSC      STATUS+0, 0
	GOTO       L_priority148
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_priority147
L_priority148:
;SireneSt01.c,120 :: 		for(b = 0;b < 5;b++){
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;SireneSt01.c,127 :: 		}//end for
	GOTO       L_priority141
L_priority142:
;SireneSt01.c,128 :: 		freq = freq+3;
	MOVLW      3
	ADDWF      R7+0, 1
	BTFSC      STATUS+0, 0
	INCF       R7+1, 1
;SireneSt01.c,129 :: 		}//end if
L_priority140:
;SireneSt01.c,118 :: 		for(d = 0;d < 7;d++){
	INCF       R5+0, 1
	BTFSC      STATUS+0, 2
	INCF       R5+1, 1
;SireneSt01.c,130 :: 		}//end for
	GOTO       L_priority135
L_priority136:
;SireneSt01.c,131 :: 		}//end if prio
L_priority119:
;SireneSt01.c,132 :: 		}//end priority
L_end_priority:
	RETURN
; end of _priority

_horn:

;SireneSt01.c,134 :: 		void horn(void){
;SireneSt01.c,136 :: 		if(sel1 == 1 && sel2 == 0 && sel3 == 1){  //horn
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_horn152
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_horn152
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_horn152
L__horn237:
;SireneSt01.c,137 :: 		for(b = 0;b < 3;b++){                //5
	CLRF       R3+0
	CLRF       R3+1
L_horn153:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__horn284
	MOVLW      3
	SUBWF      R3+0, 0
L__horn284:
	BTFSC      STATUS+0, 0
	GOTO       L_horn154
;SireneSt01.c,138 :: 		som1 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,139 :: 		som2 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,140 :: 		for(a=0;a<110;a++);           //110
	CLRF       R1+0
	CLRF       R1+1
L_horn156:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__horn285
	MOVLW      110
	SUBWF      R1+0, 0
L__horn285:
	BTFSC      STATUS+0, 0
	GOTO       L_horn157
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_horn156
L_horn157:
;SireneSt01.c,141 :: 		som1 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,142 :: 		som2 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,143 :: 		for(a=0;a<110;a++);           //110
	CLRF       R1+0
	CLRF       R1+1
L_horn159:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__horn286
	MOVLW      110
	SUBWF      R1+0, 0
L__horn286:
	BTFSC      STATUS+0, 0
	GOTO       L_horn160
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_horn159
L_horn160:
;SireneSt01.c,137 :: 		for(b = 0;b < 3;b++){                //5
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;SireneSt01.c,144 :: 		}//end for
	GOTO       L_horn153
L_horn154:
;SireneSt01.c,145 :: 		for(b = 0;b < 4;b++){               //6
	CLRF       R3+0
	CLRF       R3+1
L_horn162:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__horn287
	MOVLW      4
	SUBWF      R3+0, 0
L__horn287:
	BTFSC      STATUS+0, 0
	GOTO       L_horn163
;SireneSt01.c,146 :: 		som1 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,147 :: 		som2 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,148 :: 		for(a=0;a<95;a++);             //89
	CLRF       R1+0
	CLRF       R1+1
L_horn165:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__horn288
	MOVLW      95
	SUBWF      R1+0, 0
L__horn288:
	BTFSC      STATUS+0, 0
	GOTO       L_horn166
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_horn165
L_horn166:
;SireneSt01.c,149 :: 		som1 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,150 :: 		som2 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,151 :: 		for(a=0;a<95;a++);            //89
	CLRF       R1+0
	CLRF       R1+1
L_horn168:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__horn289
	MOVLW      95
	SUBWF      R1+0, 0
L__horn289:
	BTFSC      STATUS+0, 0
	GOTO       L_horn169
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_horn168
L_horn169:
;SireneSt01.c,145 :: 		for(b = 0;b < 4;b++){               //6
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;SireneSt01.c,152 :: 		}//end for
	GOTO       L_horn162
L_horn163:
;SireneSt01.c,153 :: 		}//end if horn
L_horn152:
;SireneSt01.c,154 :: 		}//end horn
L_end_horn:
	RETURN
; end of _horn

_man:

;SireneSt01.c,156 :: 		void man(void){               //man
;SireneSt01.c,158 :: 		freq = 25;
	MOVLW      25
	MOVWF      R5+0
	MOVLW      0
	MOVWF      R5+1
;SireneSt01.c,159 :: 		while(sel1 == 1 && sel2 == 1 && sel3 == 1){
L_man171:
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_man172
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_man172
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_man172
L__man240:
;SireneSt01.c,162 :: 		for(b = 0;b < 20;b++){   //20
	CLRF       R3+0
	CLRF       R3+1
L_man175:
	MOVLW      128
	XORWF      R3+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__man291
	MOVLW      20
	SUBWF      R3+0, 0
L__man291:
	BTFSC      STATUS+0, 0
	GOTO       L_man176
;SireneSt01.c,163 :: 		som1 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,164 :: 		som2 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,165 :: 		if(sel1 == 1 && sel2 == 1 && sel3 == 1)for(a=0;a<freq;a++);
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_man180
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_man180
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_man180
L__man239:
	CLRF       R1+0
	CLRF       R1+1
L_man181:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R5+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__man292
	MOVF       R5+0, 0
	SUBWF      R1+0, 0
L__man292:
	BTFSC      STATUS+0, 0
	GOTO       L_man182
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_man181
L_man182:
L_man180:
;SireneSt01.c,166 :: 		som1 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;SireneSt01.c,167 :: 		som2 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;SireneSt01.c,168 :: 		if(sel1 == 1 && sel2 == 1 && sel3 == 1)for(a=0;a<freq;a++);
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_man186
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_man186
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_man186
L__man238:
	CLRF       R1+0
	CLRF       R1+1
L_man187:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R5+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__man293
	MOVF       R5+0, 0
	SUBWF      R1+0, 0
L__man293:
	BTFSC      STATUS+0, 0
	GOTO       L_man188
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
	GOTO       L_man187
L_man188:
L_man186:
;SireneSt01.c,162 :: 		for(b = 0;b < 20;b++){   //20
	INCF       R3+0, 1
	BTFSC      STATUS+0, 2
	INCF       R3+1, 1
;SireneSt01.c,169 :: 		}//end for
	GOTO       L_man175
L_man176:
;SireneSt01.c,171 :: 		freq++;
	INCF       R5+0, 1
	BTFSC      STATUS+0, 2
	INCF       R5+1, 1
;SireneSt01.c,172 :: 		}//end if
	GOTO       L_man171
L_man172:
;SireneSt01.c,187 :: 		}//end man
L_end_man:
	RETURN
; end of _man

_yelp2:

;SireneSt01.c,189 :: 		void yelp2(void){
;SireneSt01.c,191 :: 		}//end yelp2
L_end_yelp2:
	RETURN
; end of _yelp2

_main:

;SireneSt01.c,193 :: 		void main(){
;SireneSt01.c,195 :: 		CMCON = 0b00001111;
	MOVLW      15
	MOVWF      CMCON+0
;SireneSt01.c,197 :: 		TRISA = 0b10000011;        //0 COMO SAIDA 1 COMO ENTRADA
	MOVLW      131
	MOVWF      TRISA+0
;SireneSt01.c,198 :: 		TRISB = 0b00000000;        //0 COMO SAIDA 1 COMO ENTRADA
	CLRF       TRISB+0
;SireneSt01.c,200 :: 		PORTA = 0;
	CLRF       PORTA+0
;SireneSt01.c,201 :: 		PORTB = 0;
	CLRF       PORTB+0
;SireneSt01.c,203 :: 		while (1){
L_main190:
;SireneSt01.c,204 :: 		if(sel1 == 0 && sel2 == 0 && sel3 == 1)wail();
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main194
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main194
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_main194
L__main248:
	CALL       _wail+0
L_main194:
;SireneSt01.c,205 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 0)yelp();
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main197
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main197
	BTFSC      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_main197
L__main247:
	CALL       _yelp+0
L_main197:
;SireneSt01.c,206 :: 		if(sel1 == 0 && sel2 == 1 && sel3 == 1)hilo();
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main200
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main200
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_main200
L__main246:
	CALL       _hilo+0
L_main200:
;SireneSt01.c,207 :: 		if(sel1 == 1 && sel2 == 0 && sel3 == 0)priority();
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main203
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main203
	BTFSC      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_main203
L__main245:
	CALL       _priority+0
L_main203:
;SireneSt01.c,208 :: 		if(sel1 == 1 && sel2 == 0 && sel3 == 1)horn();
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main206
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main206
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_main206
L__main244:
	CALL       _horn+0
L_main206:
;SireneSt01.c,209 :: 		if(sel1 == 1 && sel2 == 1 && sel3 == 0)yelp2();
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main209
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main209
	BTFSC      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_main209
L__main243:
	CALL       _yelp2+0
L_main209:
;SireneSt01.c,210 :: 		if(sel1 == 1 && sel2 == 1 && sel3 == 1)man();
	BTFSS      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main212
	BTFSS      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main212
	BTFSS      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_main212
L__main242:
	CALL       _man+0
L_main212:
;SireneSt01.c,211 :: 		while(sel1 == 0 && sel2 == 0 && sel3 == 0)som1 = 0;
L_main213:
	BTFSC      RA1_bit+0, BitPos(RA1_bit+0)
	GOTO       L_main214
	BTFSC      RA0_bit+0, BitPos(RA0_bit+0)
	GOTO       L_main214
	BTFSC      RA7_bit+0, BitPos(RA7_bit+0)
	GOTO       L_main214
L__main241:
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
	GOTO       L_main213
L_main214:
;SireneSt01.c,212 :: 		}//end while
	GOTO       L_main190
;SireneSt01.c,213 :: 		}//end main
L_end_main:
	GOTO       $+0
; end of _main
