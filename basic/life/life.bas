10 CLS
20 COLOR 2
30 LOCATE 1, 1, 0
40 PRINT "   **      **  ******  ******"
50 PRINT "   **      **  ******  ******"
60 PRINT "   **          **      **"
70 PRINT "   **      **  **      **"
80 PRINT "   **      **  ****    ****"
90 PRINT "   **      **  ****    ****"
100 PRINT "   **      **  **      **"
110 PRINT "   **      **  **      **"
120 PRINT "   ******  **  **      ******"
130 PRINT "   ******  **  **      ******"
140 PRINT
150 PRINT
160 PRINT
170 PRINT "      ИГРА - ИССЛЕДОВАНИЕ"
180 PRINT "      (LIFE-ЖИЗНЬ(АНГЛ.))"
190 PRINT " *Д.А.Крысин*       *17.07.90*"
200 FOR L = 0 TO 2000
210 NEXT L
220 CLS
230 PRINT " Игра 'LIFE' (жизнь-англ.) одна из самых интересных матема-"
250 PRINT "тических игр. Придумал ее американский математик Конуэй."
255 PRINT "Свое название она получила не случайно. Законы и правила,"
260 PRINT "которым она подчиняется, очень похожи на реальные процессы,"
265 PRINT "происходящие при зарождении, развитии и гибели колоний"
270 PRINT "простейших микроорганизмов."
290 PRINT
300 PRINT "ИНСТРУКЦИЯ:"
310 PRINT "   ESC-КОРРЕКЦИЯ"
320 PRINT "    1 -ЕСТЬ КЛЕТКА"
330 PRINT "    0 -НЕТ  КЛЕТКИ"
350 PRINT
360 PRINT "НАЖМИТЕ ЛЮБУЮ КЛАВИШУ"
370 IF INKEY$ = "" THEN 370
380 CLS
430 DIM K%(85, 25), K1%(85, 25)
440 LOCATE 1, 1, 0
445 PRINT "ЗАДАЙТЕ КОНФИГУРАЦИЮ:         "
450 X% = 1
460 Y% = 1
470 LOCATE Y% + 1, X%, 1
480 G1$ = INKEY$
490 IF G1$ = "" THEN 480
500 G% = ASC(G1$)
510 IF G% <> 27 THEN 540 'enter
520 LOCATE 1, 1, 0
530 GOTO 780
540 IF X% = 80 THEN 580
550 IF G% <> 54 THEN 580 'right
560 X% = X% + 1
570 GOTO 470
580 IF X% = 1 THEN 620
590 IF G% <> 52 THEN 620 'left
600 X% = X% - 1
610 GOTO 470
620 IF Y% = 20 THEN 660
630 IF G% <> 50 THEN 660 'down
640 Y% = Y% + 1
650 GOTO 470
660 IF Y% = 1 THEN 700
670 IF G% <> 56 THEN 700 'up
680 Y% = Y% - 1
690 GOTO 470
700 IF G% <> 49 THEN 740
710 K1%(X%, Y%) = 1
720 LOCATE Y% + 1, X%, 1
725 PRINT "█";
730 GOTO 470
740 IF G% <> 48 THEN 770
750 K1%(X%, Y%) = 0
760 LOCATE Y% + 1, X%, 1
765 PRINT " ";
770 GOTO 470
780 COLOR 2
790 GOTO 1030
800 FOR Y% = 1 TO 20
810 FOR X% = 1 TO 80
820 R% = 0
830 IF Y% = 1 THEN 850
840 IF K%(X%, Y% - 1) = 1 THEN R% = R% + 1
850 IF X% = 1 THEN 870
860 IF K%(X% - 1, Y%) = 1 THEN R% = R% + 1
870 IF Y% = 20 THEN 890
880 IF K%(X%, Y% + 1) = 1 THEN R% = R% + 1
890 IF X% = 80 THEN 910
900 IF K%(X% + 1, Y%) = 1 THEN R% = R% + 1
910 IF X% = 80 OR Y% = 20 THEN 930
920 IF K%(X% + 1, Y% + 1) = 1 THEN R% = R% + 1
930 IF X% = 1 OR Y% = 1 THEN 950
940 IF K%(X% - 1, Y% - 1) = 1 THEN R% = R% + 1
950 IF X% = 1 OR Y% = 20 THEN 970
960 IF K%(X% - 1, Y% + 1) = 1 THEN R% = R% + 1
970 IF X% = 80 OR Y% = 1 THEN 990
980 IF K%(X% + 1, Y% - 1) = 1 THEN R% = R% + 1
990 IF R% <= 1 OR R% > 3 THEN K1%(X%, Y%) = 0
1000 IF R% = 3 THEN K1%(X%, Y%) = 1
1010 NEXT X%
1020 NEXT Y%
1030 S% = S% + 1
1040 R% = 0
1050 FOR Y% = 1 TO 20
1060 FOR X% = 1 TO 80
1070 K%(X%, Y%) = K1%(X%, Y%)
1080 LOCATE Y% + 1, X%, 0
1085 IF K%(X%, Y%) = 0 THEN PRINT " ";
1090 IF K%(X%, Y%) = 1 THEN PRINT "█";
1100 IF K%(X%, Y%) = 1 THEN R% = R% + 1
1110 NEXT X%
1120 NEXT Y%
1130 COLOR 3
1140 LOCATE 1, 1, 0
1145 PRINT "ПОКОЛЕНИЕ"; S%; ",ЖИВЫХ КЛЕТОК"; R%
1150 COLOR 2
1160 G1$ = INKEY$
1170 IF G1$ = "" THEN 800
1180 IF ASC(G1$) = 27 THEN 440
1190 GOTO 800

