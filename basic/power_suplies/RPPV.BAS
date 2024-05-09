10 REM KEY 3, "GOTO10" + CHR$(10)
20 CLS
30 PRINT
40 PRINT "€‘—…’ ‚›ŸŒˆ’…‹…‰"
50 PRINT
60 PRINT "ˆ‘•Ž„›… „€›…:"
70 PRINT
80 PRINT "’ˆ ‚›ŸŒˆ’…‹Ÿ:"
90 PRINT "O„ŽŽ‹“…ˆŽ„›‰...1"
100 PRINT "„‚“•Ž‹“…ˆŽ„›‰...2"
110 PRINT "ŒŽ‘’Ž‚Ž‰............3"
120 PRINT "‘ “„‚Ž…ˆ…Œ.........4"
130 INPUT "‘ “ŒŽ†…ˆ…Œ........5      "; T%
140 IF T% < 1 OR T% > 5 THEN 20
150 ON T% GOTO 170, 230, 290, 350, 1300
160 GOTO 20
170 M! = 1
180 KR! = 2.3
190 K1! = 1
200 K2! = 1
210 K3! = 1
220 GOTO 410
230 M! = 2
240 KR! = 4.7
250 K1! = 1
260 K2! = 1
270 K3! = .5
280 GOTO 410
290 M! = 2
300 KR! = 3.5
310 K1! = 2
320 K2! = 1
330 K3! = 1 / SQR(2)
340 GOTO 410
350 M! = 1
360 KR! = .9
370 K1! = 1
380 K2! = .5
390 K3! = SQR(2)
400 GOTO 410
410 INPUT "‚›ŸŒ‹…Ž… €Ÿ†…ˆ…,‚ "; E0!
420 IF E0! <= 0 THEN 410
430 INPUT "’ŽŠ €ƒ“‡Šˆ,€ "; I0!
440 IF I0! <= 0 THEN 430
450 INPUT "’ˆ ‘…„…—ˆŠ€(˜‹-1,‹-2,Ž‹-3)"; S!
460 IF S! < 1 OR S! > 3 THEN 450
470 IF S! = 3 THEN S! = 1
480 INPUT "ŠŽ””ˆ–ˆ…’ “‹œ‘€–ˆ‰,% "; KP!
490 IF KP! < 1 THEN 480
500 KP! = KP! / 100
510 INPUT "—€‘’Ž’€,ƒ–"; F!
520 IF F! <= 0 THEN 510
530 INPUT "MAX €Œ‹ˆ’“„€ Œ€ƒˆ’Ž‰ ˆ„“Š–ˆˆ,T‹ "; BM!
540 IF BM! < 0 THEN 530
550 RT! = KR! * E0! * ((S! * F! * BM! / (E0! * I0!)) ^ .25) / (I0! * F! * BM!)
560 RI! = .7 * M! / (3 * I0!)
570 R! = RT! + K1! * RI!
580 A0! = I0! * R! / (M! * E0!)
585 A0! = A0! * 3.14159
590 O1! = 32
600 OD! = 32
610 O! = O1! * 3.14159 / 180
620 A! = TAN(O!) - O!
630 LET DA! = (A! - A0!) / A0!
640 S! = SGN(DA!)
650 AD! = ABS(DA!)
660 IF AD! <= .01 THEN 700
670 OD! = .5 * OD!
680 O1! = O1! - S! * OD!
690 GOTO 610
700 KO! = SIN(O!) - O! * COS(O!)
710 LET FO! = 3.14159 * (1 - COS(O!)) / KO!
720 BO! = 1 / SQR(2) / COS(O!)
730 DO1! = SQR(3.14159 * (O! * (1 + COS(2 * O!) / 2) - 3 * SIN(2 * O!) / 4)) / KO!
740 U2! = E0! * BO! * K2!
750 IM! = I0! * FO! / M!
760 IV! = I0! * DO1! / M!
770 IS1! = I0! / M!
780 I2! = I0! * DO1! * K3!
790 C! = (1 / M! + O! / 3.14159) * I0! / (2 * M! * KP! * F! * E0!) * 1000000!
800 CLS
810 VV% = 0
820 INPUT "„«ï ¢ë¢®¤  ­  ¯à¨­â¥à ­ ¡¥à¨â¥ [1]"; VV%
830 PRINT "…‡“‹œ’€’› €‘—…’€:"
840 PRINT
850 PRINT "U¢å=";
860 IF T% = 2 THEN PRINT "2*";
870 PRINT U2!; "‚"
880 IF VV% = 1 THEN LPRINT "Uin=";  ELSE 910
890 IF T% = 2 THEN LPRINT "2*";
900 LPRINT U2!; "V"
910 PRINT "I¢å="; I2!; "A"
920 IF VV% = 1 THEN LPRINT "Iin="; I2!; "A"
930 PRINT "Id_max="; IM!; "A"
940 IF VV% = 1 THEN LPRINT "Id_max="; IM!; "A"
950 PRINT "Id_cp ="; IS1!; "A"
960 IF VV% = 1 THEN LPRINT "Id_cp ="; IS1!; "A"
970 PRINT "Id_íää="; IV!; "A"
980 IF VV% = 1 THEN LPRINT "Id_aff="; IV!; "A"
990 PRINT "C="; C!; "¬ª”"
1000 IF VV% = 1 THEN LPRINT "C="; C!; "mkF"
1010 PRINT
1020 IF VV% = 1 THEN LPRINT
1030 PRINT "€‘—…’ €ƒ“‡Ž—Ž‰ •€€Š’…ˆ‘’ˆŠˆ"
1040 PRINT "(•• ˆ Ž’ 0.1 „Ž 1.5 I ŽŒ. I<0-‚ëå®¤)"
1050 PRINT
1060 INPUT "’ŽŠ €ƒ“‡Šˆ,€"; I!
1070 IF I! >= 0 THEN 1090 ELSE CLS
1080 END
1090 IF (I! > (1.5 * I0!) OR I! < (.1 * I0!)) AND I! <> 0 THEN 1060
1100 D3! = 32
1110 UM! = U2! * SQR(2) / K2!
1120 IF I! > 0 THEN 1160
1130 O2! = 0
1140 O3! = 0
1150 GOTO 1260
1160 A1! = 3.14159 * I! * R! / M! / E0!
1170 O3! = O2! * 3.14159 / 180
1180 A2! = TAN(O3!) - O3!
1190 D2! = (A2! - A1!) / A1!
1200 S2! = SGN(D2!)
1210 D4! = ABS(D2!)
1220 IF D4! <= .01 THEN 1260
1230 D3! = .5 * D3!
1240 O2! = O2! - S2! * D3!
1250 GOTO 1170
1260 U3! = UM! * COS(O3!)
1270 PRINT "€Ÿ†…ˆ…"; U3!; "B"
1280 IF VV% = 1 THEN LPRINT "I="; I!; "A"; TAB(20); "U="; U3!; "V"
1290 GOTO 1060
1300 CLS
1310 PRINT "     - ³³ +        - ³³ +"
1320 PRINT " 0ÄÄÄÄÄ´ÃÄÄÄÄÄ ÄÄÄÄÄÄ´ÃÄÄÄÄÄÄ ÄÄÄÄÄÄÄÄÄÄ>"
1330 PRINT "    C1 ³³     ³   C3 ³³      ³"
1340 PRINT "              ³              ³"
1350 PRINT "     ³\ ³     ³ ³\ ³    ³\ ³ ³ ³\ ³"
1360 PRINT "   ÚÄÅÄ>ÅÄÄÄÄÄ ÄÅÄ>ÅÄ ÄÄÅÄ>ÅÄ ÄÅÄ>ÅÄ¿"
1370 PRINT "   ³ ³/ ³       ³/ ³ ³  ³/ ³   ³/ ³ ³"
1380 PRINT "   ³                 ³              ³"
1390 PRINT "   ³      - ³³ +     ³    - ³³ +    ³"
1400 PRINT " 0Ä ÄÄÄÄÄÄÄÄ´ÃÄÄÄÄÄÄÄ ÄÄÄÄÄÄ´ÃÄÄÄÄÄÄ ÄÄÄ>"
1410 PRINT "    u    C2 ³³           C4 ³³"
1420 PRINT
1430 PRINT "   ³<ÄÄÄÄÄÄ K ÄÄÄÄÄÄ>³<ÄÄÄÄ K ÄÄÄÄÄ>³"
1440 INPUT "‚›ŸŒ‹…Ž… €Ÿ†…ˆ…,‚ "; U0!
1450 INPUT "‚›ŸŒ‹…›‰ ’ŽŠ,¬€       "; I0!
1460 INPUT "ŠŽ””ˆ–ˆ…H’ “‹œ‘€–ˆ‰,%   "; KP!
1470 INPUT "ŠŽ‹ˆ—…‘’‚Ž ŒŽ„“‹…‰ (K)    "; K!
1480 U2! = .85 * U0! / K!
1490 UO! = 2.8 * U2!
1500 IO! = 5 * I0!
1510 C! = 200 * I0! * (K! + 2) / U2! / KP!
1520 CLS
1530 VV% = 0
1540 INPUT "„«ï ¢ë¢®¤  ­  ¯à¨­â¥à ­ ¡¥à¨â¥ [1]"; VV%
1550 PRINT "U¢å="; U2!; "B"
1560 IF VV% = 1 THEN LPRINT "Uin="; U2!; "V"
1570 PRINT "U®¡à="; UO!; "B"
1580 IF VV% = 1 THEN LPRINT "Ud_obr="; UO!; "V"
1590 PRINT "Io¡à="; IO!; "mA"
1600 IF VV% = 1 THEN LPRINT "Id_obr="; IO!; "mA"
1610 PRINT "C="; C!; "¬ª”"
1620 IF VV% = 1 THEN LPRINT "C="; C!; "mkF"
1630 PRINT "U ­  ‘1"; CSNG(U0! / K!); "B"
1640 IF VV% = 1 THEN LPRINT "U(C1)="; CSNG(U0! / K!); "V"
1650 PRINT "U ­  ‘2"; CSNG(2 * U0! / K!); "B"
1660 IF VV% = 1 THEN LPRINT "U(C2)="; CSNG(2 * U0! / K!); "V"
1670 END

