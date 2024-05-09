1 PRINT "€‘—…’ ”ˆ‹œ’€ ‚‘…Ž“‘Š€ž™…ƒŽ ‘…„…„ŽŽ’ŽƒŽ"
2 PRINT "                       R7"
3 PRINT "                   *-!====!-*"
4 PRINT "                   !        !"
5 PRINT "                   !   Ž“   !"
6 PRINT "           R6      !  ----- !"
7 PRINT "     *---!====!----*--!-  ! !"
8 PRINT "     !     R1         !   !-*--->"
9 PRINT "     *---!====!----*--!+  ! !"
10 PRINT "     !             !  !---! !"
11 PRINT "     !  !!     !!  !        !"
12 PRINT "     *--!!-*---!!--*        !"
13 PRINT "        !! !   !!           !"
14 PRINT "        C2 !   C3           !"
15 PRINT "           *---------!====!-*"
16 PRINT "           !           R5"
17 PRINT "           -"
18 PRINT "       R4 ! !"
19 PRINT "          ! !"
20 PRINT "           -"
21 PRINT "           !"
22 PRINT "          ---"
30 INPUT "FP,QP "; F, Q
35 INPUT "C2,C3,R6 "; C2, C3, R6
50 LET X = C2 / C3
60 LET B = 6 * Q * Q * ((1 + X) ^ 2) / (2 * Q * Q * (1 + X) - X)
70 LET P1 = (1 / B) * (SQR(1 + ((B * B) / (3 * ((1 + X) ^ 2)))) - 1)
80 PRINT " „‹Ÿ Ž’ˆŒ€‹œŽƒŽ “— "; P1
90 PRINT "‚‚…„ˆ’… ŠŽ„ 0,…‘‹ˆ =Ž’"
100 INPUT "‚‚…„ˆ’… ŠŽ„ 1,…‘‹ˆ  „“ƒŽ… "; A
110 IF A = 0 THEN 140
120 IF A <> 0 THEN 130
130 LET P = P1
135 GOTO 150
140 INPUT "‚‚…„ˆ’… "; P
150 LET R1 = 1 / (2 * 3.14159 * F * SQR(C2 * C3 * P))
160 LET R = P * R1
170 IF R6 = 0 THEN LET R6 = 10000!
180 LET R7 = R6 * (P * (1 + (C2 / C3)) + (1 / Q) * SQR(P * C2 / C3))
190 LET H = 1 - (2 * (SQR(P * C2 / C3)) / Q / (1 + (R7 / R6)))
200 LET R5 = R / H
205 LET R4 = R / (1 - H)
210 LET Z = Q * H * ((1 + (R7 / R6)) ^ 2) * SQR(C3 / P / C2)
220 PRINT "…‡“‹œ’€’› €‘—…’€:"
225 PRINT "R1="; R1, "R4="; R4, "R5="; R5, "R7="; R7, "P="; P, "“—="; Z
230 PRINT "……„€’Ž—€Ÿ ”“Š–ˆŸ ˆŒ……’ ‚ˆ„:"
235 PRINT "T(S)=(S^2-(WP/Q)*S+WP^2)/(S^2+(WP/Q)*S+WP^2)"
240 GOTO 140
245 END

