1 PRINT "€‘—…’ ”‹’€ —  ‚— ‘ 0 ……„€— ‘…‹…„’ƒ"
2 PRINT "               !! C3"
3 PRINT "             *-!!--*-------------*"
4 PRINT "             ! !!  !             !"
5 PRINT "             !     -             !"
6 PRINT "             !    ! ! R5         !"
7 PRINT "             !    ! !            !"
8 PRINT "             ! C4  -        “   !"
9 PRINT "      R1     ! !!  !       ----- !"
10 PRINT "   *-!====!--*-!!--*-------!-  ! !"
11 PRINT "   !         ! !!  !       !   !-*-->"
12 PRINT "   !         -     -     *-!+  ! !"
13 PRINT "<--*     R2 ! !   ! ! R6 ! !---! !"
14 PRINT "   !        ! !   ! !    !       !"
15 PRINT "   !         -     -     !       !"
16 PRINT "   !         !     !     !  R9   !"
17 PRINT "   !        ---    *     *-!===!-*"
18 PRINT "   !          ‚—-„/ —-„ !"
19 PRINT "   *-------------*  *    !"
20 PRINT "   !                !    !"
21 PRINT "   !   R7          ---   !   R8"
22 PRINT "   *-!====!--------------*-!====!--!"
30 INPUT "FZ,FP,QP "; F0, F1, Q
40 INPUT "C3,C4,R9 "; C3, C4, R9
45 INPUT "KBX="; K1
50 INPUT "‚›…’…  ‚ ’…‚€‹… ’ 0.1 „ 0.3 "; P
60 IF (F1 - F0) = 0 THEN 80
65 IF (F1 - F0) <> 0 THEN 90
80 PRINT "‹‘€ ‡€„…†‚€ ’‘“’‘’‚“…’"
85 GOTO 30
90 LET X = (1 + SGN(F1 - F0)) / 2
100 LET D = 2 * PI * F1
105 LET N = 2 * P * Q
110 LET G = (C3 * D) / N * (SQR(1 + 4 * Q * Q * P * (1 + C4 / C3)) - 1)
120 LET M = 2 * PI * F0
130 LET K0 = (1 + P) / (1 + (1 + C4 / C3) * M * M * ((C3 * C3) / (G * G)))
140 IF K1 = 0 THEN 170
150 LET H = 1 - (K1 / K0)
160 IF H > 0 THEN 180
170 LET K = K0
172 LET R1 = 1 / G
173 LET R2 = 1E+37
175 GOTO 190
180 LET K = K1
182 LET R1 = K0 / G / K1
185 LET R2 = 1 / G / H
190 LET R6 = (G * (1 + P) * (1 - X / K)) / (C3 * C4 * (M * M - D * D))
200 LET R5 = 1 / (C3 * C4 * D * D / G + P / R6)
210 LET H1 = Q / D * (G / C3 + (C3 + C4) * (R5 + R6) / C3 / C4 / R5 / R6)
220 LET H2 = 1 - G * (R5 + R6) / (D * D) / C3 / C4 / R5 / R6
230 LET J = (1 + P) / 2 * (ABS(1 - H1) + Q * ABS(H2))
240 IF R9 = 0 THEN LET R9 = 10000!
250 LET R7 = P * R9 / K
255 LET R8 = P * R9 / (1 - K)
260 PRINT "…‡“‹’€’› €‘—…’€:"
265 PRINT "R1="; R1, "R2="; R2, "R5="; R5, "R6="; R6, "R7="; R7, "R8="; R8
270 PRINT "K="; K
275 PRINT "P="; P
280 PRINT "“—="; J
285 PRINT "……„€’—€ ”“– ……’ ‚„:"
290 PRINT "T(S)=K*(S^2+WZ^2)/(S^2+(WP/Q)*S+WP^2)"
295 PRINT "¨¬¥η ­¨¥:Ά £ΰ δ¥ R2 Ά¬¥αβ® 1…37 η¨β βμ 1…90"
300 END

