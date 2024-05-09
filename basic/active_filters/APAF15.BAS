1 PRINT "€‘—…’ ”‹’€ ‹-‡€ƒ —/‚— ‘ 0 ……„€— Q ‘…„……"
2 PRINT "                    *-!====!--*-!====!-*"
3 PRINT "                    !   R9    !   R10  !"
4 PRINT "                   ---        !        !"
5 PRINT "                              !   “   !"
6 PRINT "        R5        R6          ! -----  !"
7 PRINT "     *-!====!--*-!====!-*     *-!-  !  !"
8 PRINT "     !         !        !       !   !--*-->"
9 PRINT "<----*  C1     !  C2    *-*---*-!+  !  !"
10 PRINT "     !  !!     !  !!    ! !   ! !---!  !"
11 PRINT "     *--!!-*---!--!!----* !   -        !"
12 PRINT "        !! !   !  !!      !  ! ! R8    !"
13 PRINT "           -   !     C4  === ! !       !"
14 PRINT "       R7 ! ! === C3      !   -        !"
15 PRINT "          ! !  !          !   !        !"
16 PRINT "           -   !         --- ---       !"
17 PRINT "           !   !                       !"
18 PRINT "           *---*-----------------------*"
30 INPUT "FZ,FP,QP "; F0, F1, Q
35 INPUT "C1,C2,C3,C4,R9 "; C1, C2, C3, C4, R9
60 LET G = 1 / (2 * SQR((1 + C2 / C1) * (1 + C2 / C3)))
70 LET R5 = 1 / (4 * PI * F0 * G * (C2 + C3))
80 LET C = C1 * C2 / (C1 + C2)
85 LET H1 = 1 + C4 / C
90 LET H2 = 1 + C2 / C1
95 LET R6 = H2 / R5 / ((2 * PI * F0) ^ 2) / C2 / C3
100 LET B = R5 + R6
105 LET R7 = 1 / ((2 * PI * F0) ^ 2) / C1 / C2 / B
110 LET H = H1 * ((2 * PI * F1) ^ 2) / ((2 * PI * F0) ^ 2) - 1
115 IF H < 0 THEN PRINT "C4>=((F0^2)/(F1^2)-1)*C"
120 GOTO 135
125 IF H = 0 THEN LET R8 = 1E+37
126 GOTO 140
135 LET R8 = B / H
140 IF R9 = 0 THEN LET R9 = 10000!
145 LET N = 2 * PI * F0
150 LET M = 2 * PI * F1
155 LET R0 = R9 * G * (1 / (R8 * C * N) + B * C4 * N - (H1 * M / N) / Q)
160 LET B1 = (2 * PI * F1) / (2 * PI * F0)
170 LET X = Q * ((1 + R0 / R9) ^ 2) * (SQR(R5 * C3 / R6 / C) + SQR(B * C2 / R7 / C1)) / H1 / B1
180 LET K = (1 + R0 / R9) / H1
190 PRINT "…‡“‹’€’› €‘—…’€:"
195 PRINT "R5="; R5, "R6="; R6, "R7="; R7, "R8="; R8, "R10="; R0, "K="; K, "“—="; X
200 PRINT "……„€’—€ ”“– ……’ ‚’„:"
205 PRINT "T(S)=K*(S^2+WZ^2)/(S^2+(WP/Q)*S+WP^2)"
210 PRINT "ΰ¨¬¥η ­¨¥:Ά £ΰ δ¥ R8 Ά¬¥αβ® 1…37 η¨β βμ 1…90"
215 PRINT " αβΰ®©ª :Fz-R5,R6,R7(¨β¥ΰ β¨Ά­®);Fr-R8;Qp-R10"
220 END

