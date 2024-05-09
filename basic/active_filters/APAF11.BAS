1 PRINT "€‘—…’ ”‹’€ ‚— ‘…„…„’ƒ"
2 PRINT "        *----------------------*"
3 PRINT "        !                      !"
4 PRINT "        -                      !"
5 PRINT "       ! ! R2                  !"
6 PRINT "       ! !                     !"
7 PRINT "  C11   -     C3        “     !"
8 PRINT "   !!   !     !!       -----   !"
9 PRINT "<--!!---*-----!!--*----!+  !   !"
10 PRINT "   !!   !     !!  !    !   !---*--->"
11 PRINT "        !         !  *-!-  !   !"
12 PRINT "  C12  ===        -  ! !---!   !"
13 PRINT "        !    R4  ! ! !         !"
14 PRINT "        !        ! ! *-!====!--*"
15 PRINT "        !         -  !   R6  "
16 PRINT "        !         !  -"
17 PRINT "       ---       ---! ! R5"
18 PRINT "                    ! !"
19 PRINT "                     -"
20 PRINT "                     !"
21 PRINT "                    ---"
30 INPUT "FP,QP "; F, Q
35 INPUT "C11,C12,C3 "; C8, C9, C3
40 INPUT "R5 "; R5
45 LET C1 = C8 + C9
60 LET P1 = C1 / C3 / (4 * Q * Q) * ((SQR(1 + 12 * Q * Q * (1 + (C3 / C1))) - 1) ^ 2)
70 PRINT " „‹ ’€‹ƒ “— "; P
80 PRINT "‚‚…„’… „ 0,…‘‹ =’"
90 INPUT "‚‚…„’… „ 1,…‘‹  „“ƒ… "; A
100 IF A = 0 THEN 130
110 IF A <> 0 THEN 120
120 LET P = P1
125 GOTO 140
130 INPUT "‚‚…„’…  "; P
140 LET R2 = 1 / (2 * PI * F * SQR(P * C1 * C3))
145 LET R4 = P * R2
150 IF R5 = 0 THEN LET R5 = 10000!
160 LET R6 = R5 * ((1 / P) * (1 + (C1 / C3)) - ((SQR(C1 / P / C3)) / Q))
170 LET K = (C8 / C1) * (1 + (R6 / R5))
180 LET X = Q * ((1 + (R6 / R5)) ^ 2) * SQR(P * C3 / C1)
190 PRINT "…‡“‹’€’› €‘—…’€:"
195 PRINT "R2="; R2, "R4="; R4, "R6="; R6, "K="; K, "P="; P, "“—="; X
200 PRINT "……„€’—€ ”“– ……’ ‚„:"
205 PRINT "T(S)=K*S^2/(S^2+(WP/Q)*S+WP^2)"
206 PRINT " αβΰ®©ª :Fp-R2,R4;Qp-R6"
210 GOTO 130
215 END

