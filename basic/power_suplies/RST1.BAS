10 CLS
20 PRINT "  "
30 PRINT
35 F = 50
40 INPUT "*  ,"; F
50 INPUT "  "; N
55 N = N + 1
60 DIM U(N), I(N), W(N), D(N)
100 INPUT "U( 1 )"; U(1)
110 FOR J = 2 TO N
120 PRINT "U("; J; "),I("; J; ")";
130 INPUT U(J), I(J)
140 NEXT J
150 PN = 0
160 FOR J = 2 TO N
170 PN = PN + U(J) * I(J)
180 NEXT J
185 I(1) = 1.1 * PN / U(1)
190 IF PN <= 10 THEN PG = PN * 1.3
200 IF PN >= 100 THEN PG = PN * 1.05
210 IF PN > 10 AND PN < 100 THEN PG = PN * (1.3051 - .00051 * PN)
220 PRINT
300 IF F <> 50 THEN 390
310 PRINT ": 41,43-[1]"
320 PRINT TAB(10); "310,-[2]"
330 INPUT "          310,-[3]    "; J
340 IF J = 1 THEN BM = -9.17384E-07 * PG * PG + 9.72302E-04 * PG + 1.20203
350 IF J = 2 THEN BM = -6.09487E-07 * PG * PG + 8.90767E-04 * PG + 1.35597
360 IF J = 3 THEN BM = 1.00957E-08 * PG * PG * PG - 8.34076E-06 * PG * PG + 2.07146E-03 * PG + 1.48753
370 IF J < 1 OR J > 3 THEN 390 ELSE 400
390 INPUT "  ,"; BM
400 PRINT
410 INPUT " ,"; BP
420 INPUT "   [1]   [2]"; J
430 IF J = 1 THEN KM = -4.4 * BP * BP + 2.82 * BP + .462
440 IF J = 2 THEN KM = -4.27 * BP * BP + 2.68 * BP + .525
480 IF J = 1 OR J = 2 THEN PRINT "* ";
490 INPUT "   "; KM
500 KO = 1.4793E-08 * PN * PN * PN - 1.14345E-05 * PN * PN + 2.40612E-03 * PN + .18643
510 INPUT "*   OK "; KO
550 IF PN <= 10 THEN JT = 6
560 IF PN >= 200 THEN JT = 2
570 IF PN > 10 AND PN < 200 THEN JT = 6.21 - .021 * PN
580 INPUT "*    ,/^2"; JT
600 SS = 45 * PN / F / BM / JT / KO / KM
610 J = 0
620 INPUT " -[1]"; J
630 IF J = 1 THEN 800
700 INPUT " ,"; Y
710 INPUT " ,"; B
720 INPUT " ,"; H
730 Y1 = SS / Y / B / H
740 PRINT " , [min="; Y1; "]";
750 INPUT Y1
760 IF (Y1 / Y) <= 2.5 THEN 780
765 J = 0
770 INPUT "   .[1]"; J
775 IF J <> 1 THEN 700
780 SM = Y * Y1
790 GOTO 900
800 INPUT " ,"; D
810 INPUT " ,"; DD
820 B = 3 * SS / D / D / (DD - D)
830 PRINT " KO, [min="; B; "]";
840 INPUT B
850 SM = (DD - D) * B / 2
900 CLS
910 PRINT " "; CSNG(PN); "."
920 PRINT " :"
930 PRINT "  U,B"; TAB(21); "I,A"; TAB(33); "W"; TAB(45); "D,MM"
940 FOR J = 1 TO N
950 W(J) = 2200 * U(J) / F / BM / SM
960 IF PN <= 10 THEN DW = 1.05
970 IF PN >= 200 THEN DW = 1.02
980 IF PN > 10 AND PN < 200 THEN DW = 1.05158 - .000158 * PN
990 IF J > 1 THEN W(J) = W(J) * DW
1000 D(J) = 1.13 * SQR(I(J) / JT)
1010 PRINT J; TAB(8); CSNG(U(J)); TAB(20); CSNG(I(J)); TAB(32); CSNG(W(J)); TAB(44); CSNG(D(J))
1020 NEXT J
1030 PRINT
1040 END

