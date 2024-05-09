1 PRINT "€‘—…’ ”‹’€ ‹‘-‡€ƒ€†„€™…ƒ ‘…„…„’ƒ"
2 PRINT "                      R7"
3 PRINT "                  *-!====!-*"
4 PRINT "                  !   “   !"
5 PRINT "          R6      !  ----- !"
6 PRINT "    *---!====!----*--!-  ! !"
7 PRINT "    !                !   !-*-->"
8 PRINT " <--*---!====!----*--!+  ! !"
9 PRINT "    !     R1      !  !---! !"
10 PRINT "    !  !!     !!  !        !"
11 PRINT "    *--!!--*--!!--*        !"
12 PRINT "       !!  !  !!           !"
13 PRINT "       C2  !  C3     R5    !"
14 PRINT "           *-------!====!--*"
15 PRINT "           !"
16 PRINT "           -"
17 PRINT "          ! ! R4"
18 PRINT "          ! !"
19 PRINT "           -"
20 PRINT "           !"
21 PRINT "          ---"
30 INPUT "FP,QP "; F, Q
35 INPUT "C2,C3,R6 "; C2, C3, R6
50 LET P1 = 1 / (3 * (1 + C2 / C3))
60 PRINT " €—.‡€—…… ‚‹‡ MIN “— "; P1
70 PRINT "‚‚…„’… „ 0,…‘‹ =€—"
75 INPUT "‚‚…„’… „ 1,…‘‹  „“ƒ… "; A
90 IF A = 0 THEN 120
100 IF A <> 0 THEN 110
110 LET P = P1
115 GOTO 130
120 INPUT "‚‚…„’…  "; P
130 LET R1 = 1 / (2 * PI * F * SQR(C2 * C3 * P))
135 LET R = P * R1
140 IF R6 = 0 THEN LET R6 = 10000!
150 LET R7 = R6 * (1 + (C2 / C3)) * P
160 LET B = 1 - ((SQR(P * C2 / C3)) / (Q * (1 + R7 / R6)))
170 LET R5 = R / B
175 LET R4 = R / (1 - B)
180 LET X = Q * B * ((1 + (R7 / R6)) ^ 2) * SQR(C3 / P / C2)
190 PRINT "…‡“‹’€’› €‘—…’€:"
195 PRINT "R1="; R1, "R4="; R4, "R5="; R5, "R7="; R7, "P="; P, "“—="; X
200 PRINT "……„€’—€ ”“– ……’ ‚„:"
205 PRINT "T(S)=(S^2+WP^2)/(S^2+(WP/Q)*S+WP^2)"
206 PRINT " αβΰ®©ª :Fp-R1,/T(Fp)/=0 R4,Qp-R7"
210 GOTO 120
215 END

