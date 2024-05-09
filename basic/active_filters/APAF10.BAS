1 PRINT "€‘—…’ ”ˆ‹œ’€ Ž‹.-Ž“‘Š.‘…„…„ŽŽ’.‘ ‘-‚•Ž„ŽŒ"
2 PRINT "        *--------*---------*"
3 PRINT "        !        !         !"
4 PRINT "        -        !         !"
5 PRINT "       ! ! R2    !         !"
6 COLOR 1, 0
7 PRINT "  C11   -        !     Ž“  !"
8 PRINT "   !!   !  R3    !   ----- !"
9 PRINT "<--!!---*-!====!-*---!-  ! !"
10 PRINT "   !!   !            !   !-*-->"
11 PRINT "        !          *-!+  ! !"
12 PRINT "       === C12     ! !---! !"
13 PRINT "        !          !       !"
14 PRINT "       ---         *-!===!-*"
15 PRINT "                   !  R6 "
16 PRINT "                   -"
17 PRINT "                  ! ! R5"
18 PRINT "                  ! !"
19 PRINT "                   -"
20 PRINT "                   !"
21 PRINT "                  ---"
30 INPUT "FP,QP "; F, Q
40 INPUT "C11,C12,C4"; C8, C9, C4
45 INPUT "R6 "; R6
50 LET C1 = C8 + C9
60 LET P1 = C1 / C4 / (36 * Q * Q) * ((SQR(1 + 12 * Q * Q * (1 + (C4 / C1))) + 1) ^ 2)
70 PRINT " „‹Ÿ Ž’ˆŒ€‹œŽƒŽ “—"; P1
80 PRINT "‚‚…„ˆ’… ŠŽ„ 0,…‘‹ˆ =Ž’"
90 INPUT "‚‚…„ˆ’… ŠŽ„ 1,…‘‹ˆ  „“ƒŽ…"; A
100 IF A = 0 THEN 130
110 IF A <> 0 THEN 120
120 LET P = P1
121 GOTO 140
130 INPUT "‚‚…„ˆ’… P "; P
140 LET R2 = 1 / (2 * PI * F * SQR(P * C1 * C4))
145 LET R3 = P * R2
150 IF R6 = 0 THEN LET R6 = 10000!
160 LET R5 = R6 * ((C4 / C1) * (1 + P) - (1 / Q) * SQR(P * C4 / C1))
170 LET K = (C8 / C1) * (1 + (R5 / R6)) * Q * SQR(C1 / P / C4)
180 LET X = Q * ((1 + (R5 / R6)) ^ 2) * SQR(C1 / P / C4)
190 PRINT "…‡“‹œ’€’› €‘—…’€:"
195 PRINT "R2="; R2, "R3="; R3, "R5="; R5, "K="; K, "P="; P, "“—="; X
200 PRINT "……„€’Ž—€Ÿ ”“Š–ˆŸ ˆŒ……’ ‚ˆ„:"
205 PRINT "T(S)=-K*(WP/Q)*S/(S^2+(WP/Q)*S+WP^2)"
210 GOTO 130
215 END

