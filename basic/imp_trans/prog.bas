DECLARE SUB helps ()
DECLARE SUB trans ()
DECLARE SUB rashet ()
DECLARE SUB vivod ()
DECLARE SUB tokr ()
5 SCREEN 9, 1: CLS
10 LOCATE 1, 15: PRINT "Расчет трансформатора импульсного блока питания"
30 LOCATE 3, 1: PRINT "1. P -Мощность потребляемая нагрузкой"
40 LOCATE 4, 1: PRINT "2. P габ.-Габаритная мощность сердечника =S сеч.*S окно*f*B макс./150"
50 LOCATE 5, 1: PRINT "3. P исп.-Используемая мощность =1.3*P, причем P габ.=>P исп"
60 LOCATE 6, 1: PRINT "4. S сеч.-Площадь сечения магнитопровода(см2)=(D-d)*h/2, где D и d- наружный и   внутренний диаметры,см, для Ш-образного L0*S"
70 LOCATE 8, 1: PRINT "5. S окна-Площадь окна магнитопровода(см2)=пи*d^2/4,а для Ш-образного (L1*2h)"
80 LOCATE 9, 1: PRINT "6. B макс.-Максимальное значение индукции(в Тесла),зависит от марки магнитопро-"
90 LOCATE 10, 2: PRINT "вода(см.справочник)"
100 LOCATE 11, 1: PRINT "7. U1 -напряжение на 1 обмотке. Для полумостового ивертора U1=U пит./2-U кэ,где  U пит.-напряжение питания инвертора, а U кэ- напр.насыщения коллектор-эмиттер    транзисторов, для мостового U1=U пит.-2*U кэ нас."
110 LOCATE 14, 1: PRINT "8. W1 -число витков в 1 обмотке=0.25*10^4*U1/f*B макс*S сеч. и округлить в болш"
120 LOCATE 15, 1: PRINT "9. I1 макс-максимальний ток 1 обмотки(А)=P/0.8*U1"
130 LOCATE 16, 1: PRINT "10. d1 -диаметр проволоки(мм) 1 обмотки 0.6*(I1 макс.в квадратном корне)"
140 LOCATE 17, 1: PRINT "11. W2 =W1*U2/U1"
150 LOCATE 18, 1: PRINT "12. d2 =0.6*(I2 в квадратном корне)"
160 LOCATE 19, 10: PRINT "Если Вам известны какие-нибудь величины приготовтесь к расчету"
170 LOCATE 20, 1: PRINT "Вам обязательно нужно знать: f-частота преобразования,S сеч.,S окна,B макс.,  U1,U2,I2"
180 LOCATE 24, 1: PRINT "Автор программы: Торопов Р.Ю. e-mail: roman@artv.perm.ru"
190 LOCATE 22, 1: INPUT "Нужны ли Вам справочные материалы ? (enter,no)"; a$
200 IF a$ <> "no" THEN CALL helps

CLS
LOCATE 2, 10: INPUT "введите f,(Гц)"; f
LOCATE 3, 10: INPUT "введите S сеч.(см^2)"; ss
LOCATE 4, 10: INPUT "введите S окна(см^2)"; so
LOCATE 5, 10: INPUT "введите B макс(Тесла)"; b
LOCATE 6, 10: INPUT "введите U1 (Вольт)"; u1
LOCATE 7, 10: INPUT "введите U2 (Вольт)"; u2
LOCATE 8, 10: INPUT "введите I2 (Ампер)"; i2
LOCATE 23, 1: PRINT "Автор программы: Торопов Р.Ю. e-mail: roman_avtotv@mail.ru"
LOCATE 9, 10: INPUT "введите есть ли еще вторичные обмотки (yes,no)"; a$
IF a$ = "no" THEN GOTO 210
LOCATE 10, 1: PRINT "Введите через запятую U3...U11, если у вас скажем 5 обмоток один фиг введите     все 9 значений или 0, например: 10,15,20,25,0,0,0,0,0"
LOCATE 13, 1: INPUT u3, u4, u5, u6, u7, u8, u9, u10, u11
LOCATE 14, 1: PRINT "Введите через запятую i3...i11, таким же образом"
LOCATE 15, 1: INPUT i3, i4, i5, i6, i7, i8, i9, i10, i11
LOCATE 23, 1: PRINT "Автор программы: Торопов Р.Ю. e-mail: roman_avtotv@mail.ru"

210 CLS
220 OPEN "u1u2.tmp" FOR OUTPUT AS #1
230 WRITE #1, u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11
240 CLOSE #1
250 OPEN "fsspgab.tmp" FOR OUTPUT AS #2
260 WRITE #2, f, ss, so, b, 0, 0, 0
270 CLOSE #2

OPEN "tok.tmp" FOR OUTPUT AS #3
WRITE #3, 0, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11
CLOSE #3

CALL rashet
CALL tokr
CALL vivod

OPEN "fsspgab.tmp" FOR INPUT AS #2
INPUT #2, f, ss, so, b, Pnag, Pisp, Pgab
CLOSE #2

300 IF Pgab < Pisp THEN COLOR 12, 0: LOCATE 15, 1: PRINT "Данный сердечник не может быть использован с данной нагрузкой": PRINT "используйте больший сердечник или увеличте f": COLOR 15, 0: INPUT "Предложить варианты ? (yes,no)"; pro$: IF pro$ <> "no" THEN CALL trans

SLEEP 1

OPEN "fsspgab.tmp" FOR INPUT AS #2
INPUT #2, f, ss, so, b, Pnag, Pisp, Pgab
CLOSE #2

IF Pgab < Pisp THEN GOTO 300
LOCATE 22, 1: INPUT "Продолжить другие расчеты ? (yes)", pro$
IF pro$ = "yes" THEN RUN

LOCATE 22, 1: INPUT "Нужны ли Вам справочные материалы ? (yes,no)"; a$
IF a$ <> "no" THEN CALL helps

COLOR 12, 0: PRINT "До новых встреч. Все вопросы присылайте по e-mail: roman@artv.perm.ru"
END

SUB helps

OPEN "ferrit.dat" FOR INPUT AS #9
CLS : df = 1
1810 DO
1820 INPUT #9, marka$, tesla, predf
IF df = 24 THEN GOTO 1870
1830 LOCATE df, 1: PRINT "Марка феррита :"; marka$; " Bмакс.="; tesla; " Предельная частота :"; predf; "КГц"
df = df + 1
1840 IF tesla = .07 THEN GOTO 1860
1850 LOOP
1860 SLEEP 1: INPUT "Enter", fgfh$: CLOSE #9: GOTO 1880
1870 SLEEP 1: INPUT "Enter ", rpo$
1877 CLS : df = 1: GOTO 1830

1880 CLS
2000 OPEN "base.dat" FOR INPUT AS #10
2010 CLS : df = 1
2020 DO
2030 INPUT #10, marka$, sehenie, sokna, sehokno
2040 IF df = 24 THEN GOTO 2110
2050 LOCATE df, 1: PRINT "Марка:"; marka$; " Sсеч.="; sehenie; "см2"; " Sокна,="; sokna; "см2"
2060 df = df + 1
2070 IF sehenie = 11.54 THEN GOTO 2130
2080 LOOP
2090 CLOSE #10
2100 GOTO 2150
2110 SLEEP 1: INPUT "Enter", fgfh$: CLS : df = 1
2120 GOTO 2050
2130 SLEEP 1: INPUT "Enter", fgfh$: CLS
2140 GOTO 2090
2150

END SUB

SUB rashet

CLS
OPEN "u1u2.tmp" FOR INPUT AS #1
INPUT #1, u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11
OPEN "fsspgab.tmp" FOR INPUT AS #2
INPUT #2, f, ss, so, b, Pnag, Pisp, Pgab
OPEN "tok.tmp" FOR INPUT AS #4
INPUT #4, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11
CLOSE #1
CLOSE #2
CLOSE #4

400 Pnag = (u2 * i2) + (u3 * i3) + (u4 * i4) + (u5 * i5) + (u6 * i6) + (u7 * i7) + (u8 * i8) + (u9 * i9) + (u10 * i10) + (u11 * i11)
410
420 Pgab = INT((ss * so * f * b) / 150)
430
440 REM w1=2500*u1/f*b*ss  w2=w1*u2/u1
450 w12 = INT((2500 * u1) / (f * b * ss)) + 1
IF w12 - ((2500 * u1) / (f * b * ss)) = 1 THEN w12 = w12 - 1
460 w2 = INT((w12 * u2) / u1) + 1
IF w2 - ((w12 * u2) / u1) = 1 THEN w2 = w2 - 1
470 IF u3 = 0 THEN GOTO 570
480 w3 = INT((w12 * u3) / u1) + 1
IF u4 = 0 THEN GOTO 570
IF w3 - ((w12 * u3) / u1) = 1 THEN w3 = w3 - 1
490 w4 = INT((w12 * u4) / u1) + 1
IF u5 = 0 THEN GOTO 570
IF w4 - ((w12 * u4) / u1) = 1 THEN w4 = w4 - 1
500 w5 = INT((w12 * u5) / u1) + 1
IF u6 = 0 THEN GOTO 570
IF w5 - ((w12 * u5) / u1) = 1 THEN w5 = w5 - 1
510 w6 = INT((w12 * u6) / u1) + 1
IF u7 = 0 THEN GOTO 570
IF w6 - ((w12 * u6) / u1) = 1 THEN w6 = w6 - 1
520 w7 = INT((w12 * u7) / u1) + 1
IF u8 = 0 THEN GOTO 570
IF w7 - ((w12 * u7) / u1) = 1 THEN w7 = w7 - 1
530 w8 = INT((w12 * u8) / u1) + 1
IF u9 = 0 THEN GOTO 570
IF w8 - ((w12 * u8) / u1) = 1 THEN w8 = w8 - 1
540 w9 = INT((w12 * u9) / u1) + 1
IF u10 = 0 THEN GOTO 570
IF w9 - ((w12 * u9) / u1) = 1 THEN w9 = w9 - 1
550 w10 = INT((w12 * u10) / u1) + 1
IF u11 = 0 THEN GOTO 570
IF w10 - ((w12 * u10) / u1) = 1 THEN w10 = w10 - 1
560 w11 = INT((w12 * u11) / u1) + 1
IF w11 - ((w12 * u11) / u1) = 1 THEN w11 = w11 - 1
570 REM w2=w1*u2/u1 => u2=w2*u1/w1
u2 = w2 * u1 / w12
u3 = w3 * u1 / w12
u4 = w4 * u1 / w12
u5 = w5 * u1 / w12
u6 = w6 * u1 / w12
u7 = w7 * u1 / w12
u8 = w8 * u1 / w12
u9 = w9 * u1 / w12
u10 = w10 * u1 / w12
u11 = w11 * u1 / w12
Pnag = (u2 * i2) + (u3 * i3) + (u4 * i4) + (u5 * i5) + (u6 * i6) + (u7 * i7) + (u8 * i8) + (u9 * i9) + (u10 * i10) + (u11 * i11)
i1 = Pnag / (.8 * u1)
Pisp = Pnag * 1.3

OPEN "u1u2.tmp" FOR OUTPUT AS #1
WRITE #1, u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11
CLOSE #1
OPEN "fsspgab.tmp" FOR OUTPUT AS #2
WRITE #2, f, ss, so, b, Pnag, Pisp, Pgab
CLOSE #2
OPEN "vitki.tmp" FOR OUTPUT AS #3
WRITE #3, w12, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11
CLOSE #3
LOCATE 23, 1: PRINT "Автор программы: Торопов Р.Ю. e-mail: roman_avtotv@mail.ru"
OPEN "tok.tmp" FOR OUTPUT AS #4
WRITE #4, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11
CLOSE #4

REM CALL vivod
REM INPUT "prodolgit ? (enter)", pro$
590
END SUB

SUB tokr

OPEN "u1u2.tmp" FOR INPUT AS #1
INPUT #1, u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11
OPEN "fsspgab.tmp" FOR INPUT AS #2
INPUT #2, f, ss, so, b, Pnag, Pisp, Pgab
OPEN "tok.tmp" FOR INPUT AS #4
INPUT #4, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11
CLOSE #1
CLOSE #2
CLOSE #4

GOTO 720

600 OPEN "tok2.dat" FOR INPUT AS #8
DO
610 INPUT #8, gil, diametr, sehen, toki
IF tok = 0 THEN diametr = 0: gil = 0: GOTO 670
LOCATE 10, 1: PRINT "жил"; gil; " диаметр мм"; diametr; " сечение мм2"; sehen; " расч.ток"; toki
LOCATE 11, 10: PRINT "искомый ток ="; tok
IF toki >= tok THEN GOTO 655
650 IF gil = 60 THEN GOTO 699
LOOP
GOTO 670
655 ro = tok + 3
IF ro < toki THEN GOTO 650
LOCATE 2, 1: PRINT gil; "жил, "; "диаметр:"; diametr; " сечение мм2:"; sehen; " ток:"; toki
LOCATE 23, 1: PRINT "Автор программы: Торопов Р.Ю. e-mail: roman_avtotv@mail.ru"
LOCATE 3, 2: INPUT "Вас устраивает такой вариант y", abc$
IF abc$ <> "y" THEN GOTO 650

660 tok = toki
670 CLOSE #8
RETURN
699 IF diametr = 1.5 THEN CLOSE #8: GOTO 600
GOTO 610
720 CLS : LOCATE 1, 3: PRINT "вторая обмотка:": tok = i2: GOSUB 600
REM so=пи*d^2/4  d=sqr(so*4/пи)
730 i2 = tok: d2 = diametr: g2 = gil: IF i3 = 0 THEN GOTO 920
740 CLS : LOCATE 1, 3: PRINT "третья обмотка:": tok = i3: GOSUB 600
750 i3 = tok: d3 = diametr: g3 = gil: IF i4 = 0 THEN GOTO 920
760 CLS : LOCATE 1, 3: PRINT "четвертая обмотка:": tok = i4: GOSUB 600
770 i4 = tok: d4 = diametr: g4 = gil: IF i5 = 0 THEN GOTO 920
780 CLS : LOCATE 1, 3: PRINT "пятая обмотка:": tok = i5: GOSUB 600
790 i5 = tok: d5 = diametr: g5 = gil: IF i6 = 0 THEN GOTO 920
800 CLS : LOCATE 1, 3: PRINT "шестая обмотка:": tok = i6: GOSUB 600
810 i6 = tok: d6 = diametr: g6 = gil: IF i7 = 0 THEN GOTO 920
820 CLS : LOCATE 1, 3: PRINT "седьмая обмотка:": tok = i7: GOSUB 600
830 i7 = tok: d7 = diametr: g7 = gil: IF i8 = 0 THEN GOTO 920
840 CLS : LOCATE 1, 3: PRINT "восьмая обмотка:": tok = i8: GOSUB 600
850 i8 = tok: d8 = diametr: g8 = gil: IF i9 = 0 THEN GOTO 920
860 CLS : LOCATE 1, 3: PRINT "девятая обмотка:": tok = i9: GOSUB 600
870 i9 = tok: d9 = diametr: g9 = gil: IF i10 = 0 THEN GOTO 920
880 CLS : LOCATE 1, 3: PRINT "десятая обмотка:": tok = i10: GOSUB 600
890 i10 = tok: d10 = diametr: g10 = gil: IF i11 = 0 THEN GOTO 920
900 CLS : LOCATE 1, 3: PRINT "11-я обмотка:": tok = i11: GOSUB 600
910 i11 = tok: d11 = diametr: g11 = gil

920 Pnag = (u2 * i2) + (u3 * i3) + (u4 * i4) + (u5 * i5) + (u6 * i6) + (u7 * i7) + (u8 * i8) + (u9 * i9) + (u10 * i10) + (u11 * i11)
i1 = Pnag / (.8 * u1)

Pisp = Pnag * 1.3
CLS : LOCATE 1, 1: PRINT "1-я обмотка:": tok = i1: GOSUB 600
i1 = tok: d1 = diametr: g1 = gil

OPEN "gily.tmp" FOR OUTPUT AS #7
WRITE #7, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11
CLOSE #7

OPEN "tok.tmp" FOR OUTPUT AS #4
WRITE #4, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11
CLOSE #4

OPEN "dia.tmp" FOR OUTPUT AS #5
WRITE #5, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11
CLOSE #5

OPEN "u1u2.tmp" FOR OUTPUT AS #1
WRITE #1, u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11
CLOSE #1

OPEN "fsspgab.tmp" FOR OUTPUT AS #2
WRITE #2, f, ss, so, b, Pnag, Pisp, Pgab
CLOSE #2

END SUB

SUB trans

OPEN "fsspgab.tmp" FOR INPUT AS #2
INPUT #2, f, ss, so, b, Pnag, Pisp, Pgab
CLOSE #2
ssso = ss * so
CLS
1500 OPEN "base.dat" FOR INPUT AS #6
1510 DO
1520 INPUT #6, serd$, sehen, okno, sehok
1530 IF sehok > ssso THEN GOTO 1560
1540 IF sehen = 11.54 THEN CLOSE #6: LOCATE 10, 1: PRINT "К сожелению вариантов НЕТ!": INPUT "Продолжить ? (enter,no)", pro$: IF pro$ <> "no" THEN RUN: END
1550 LOOP
GOTO 1610
1560 CLS : LOCATE 23, 1: PRINT "Автор программы: Торопов Р.Ю. e-mail: roman_avtotv@mail.ru"
1570 LOCATE 1, 1: PRINT "Сердечник :"; serd$; "  Sсеч.:"; sehen; "  Sокна:"; okno; " Pгаб.:"; (sehok * b * f) / 150
1580 SLEEP 1: INPUT "Вас устраивает такой вариант ? (yes,no)", pro$
1590 IF pro$ = "yes" THEN GOTO 1610
1600 GOTO 1540
1610 CLOSE #6

1620 ss = sehen: so = okno
OPEN "fsspgab.tmp" FOR OUTPUT AS #2
WRITE #2, f, ss, so, b, Pnag, Pisp, Pgab
CLOSE #2

CALL rashet
CALL tokr
CALL vivod

END SUB

SUB vivod
OPEN "u1u2.tmp" FOR INPUT AS #1
INPUT #1, u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11
CLOSE #1
OPEN "fsspgab.tmp" FOR INPUT AS #2
INPUT #2, f, ss, so, b, Pnag, Pisp, Pgab
CLOSE #2
OPEN "vitki.tmp" FOR INPUT AS #3
INPUT #3, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11
CLOSE #3
OPEN "tok.tmp" FOR INPUT AS #4
INPUT #4, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11
CLOSE #4
OPEN "dia.tmp" FOR INPUT AS #5
INPUT #5, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11
CLOSE #5

OPEN "gily.tmp" FOR INPUT AS #7
INPUT #7, g1, g2, g3, g4, g5, g6, g7, g8, g9, g10, g11
CLOSE #7

CLS : LOCATE 1, 1: PRINT "Pгаб.="; Pgab
LOCATE 2, 1: PRINT "Pисп.="; Pisp
LOCATE 3, 1: PRINT "Pнаг.="; Pnag
LOCATE 4, 1: PRINT "1я обмотка ток="; i1; " диаметр="; d1; "x"; g1; "жил"; " витки="; w1; " U1="; u1
LOCATE 5, 1: PRINT "2я обмотка ток="; i2; " диаметр="; d2; "x"; g2; "жил"; ", витки="; w2; " U2="; u2
LOCATE 6, 1: PRINT "3я обмотка ток="; i3; " диаметр="; d3; "x"; g3; "жил"; ", витки="; w3; " U3="; u3
LOCATE 7, 1: PRINT "4я обмотка ток="; i4; " диаметр="; d4; "x"; g4; "жил"; ", витки="; w4; " U4="; u4
LOCATE 8, 1: PRINT "5я обмотка ток="; i5; " диаметр="; d5; "x"; g5; "жил"; ", витки="; w5; " U5="; u7
LOCATE 9, 1: PRINT "6я обмотка ток="; i6; " диаметр="; d6; "x"; g6; "жил"; ", витки="; w6; " U6="; u6
LOCATE 10, 1: PRINT "7я обмотка ток="; i7; " диаметр="; d7; "x"; g7; "жил"; ", витки="; w7; " U7="; u7
LOCATE 11, 1: PRINT "8я обмотка ток="; i8; " диаметр="; d8; "x"; g8; "жил"; ", витки="; w8; " U8="; u8
LOCATE 12, 1: PRINT "9я обмотка ток="; i9; " диаметр="; d9; "x"; g9; "жил"; ", витки="; w9; " U9="; u9
LOCATE 13, 1: PRINT "10я обмотка ток="; i10; " диаметр="; d10; "x"; g10; "жил"; ", витки="; w10; " U10="; u10
LOCATE 14, 1: PRINT "11я обмотка ток="; i11; " диаметр="; d11; "x"; g11; "жил"; ", витки="; w11; " U11="; u11
LOCATE 23, 1: PRINT "Автор программы: Торопов Р.Ю. e-mail: roman@artv.perm.ru"

END SUB

