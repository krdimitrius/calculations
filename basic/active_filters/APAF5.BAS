1 PRINT "€‘—…’ ”ˆ‹œ’€ ‚‘…Ž“‘Š€ž™…ƒŽ ‘ Q=+0.5"
2 PRINT "‚€ˆ€’ 1"
3 PRINT "                          *--!====!-*"
4 PRINT "                          !    R0   !"
5 PRINT "                          !    Ž“   !"
6 PRINT "            R0            !  -----  !"
7 PRINT "    *-----!====!----------*--!-  !  !"
8 PRINT "    !   !! C1       !! C2    !   !--*-->"
9 PRINT " <--*---!!----*-----!!----*--!+  !"
10 PRINT "    !   !!    !     !!    !  !---!"
11 PRINT "    !         !           !"
12 PRINT "    *-!====!--!--*-!====!-*"
13 PRINT "        R4    !  !   R5"
14 PRINT "              -  !"
15 PRINT "          R6 ! !=== C3"
16 PRINT "             ! ! !"
17 PRINT "              -  !"
18 PRINT "              !  !"
19 PRINT "             ------"
20 INPUT X
21 PRINT "€‘—…’ ”ˆ‹œ’€ ‚‘…Ž“‘Š€ž™…ƒŽ ‘ Q=-0.5"
22 PRINT "‚€ˆ€’ 2"
23 PRINT "                              R0"
24 PRINT "                         *--!====!--*"
25 PRINT "                         !          !"
26 PRINT "                         !    Ž“    !"
27 PRINT "            R0           !   -----  !"
28 PRINT "    *-----!====!---------*---!-  !  !"
29 PRINT "    !    R9         !! C2    !   !--*-->"
30 PRINT " <--*--!====!-*-----!!---*---!+  !"
31 PRINT "    !         !     !!   !   !---!"
32 PRINT "    !  !! C3  !          !"
33 PRINT "    *--!!-----!---*-!===!*"
34 PRINT "       !!     !   !   R8"
35 PRINT "              !   -"
36 PRINT "          C1 === ! ! R7"
37 PRINT "              !  ! !"
38 PRINT "              !   -"
39 PRINT "              !   !"
40 PRINT "             --- ---"
50 INPUT "FP,QP "; F, Q
60 INPUT "C1,C2,C3 "; C1, C2, C3
70 LET H = 1 - ((C1 + C2) * (C2 + C3) * 4 * Q * Q) / C1 / C3
80 IF H > 0 THEN 110
90 PRINT "”ˆ‹œ’ … …€‹ˆ‡“…Œ.‚‚…„ˆ’… Ž‚›… C1,C2,C3."
95 GOTO 100
100 PRINT "C1=C3>=C2*2*Q/(1-2*Q)"
105 GOTO 60
110 LET R4 = (1 + SQR(H)) / (2 * 2 * PI * F * Q * (C2 + C3))
120 LET R5 = (C1 + C2) / (R4 * (2 * PI * F) * (2 * PI * F) * C1 * C2 * C3)
130 LET R6 = 1 / ((2 * PI * F) ^ 2 * C1 * C2 * (R4 + R5))
140 LET R7 = (1 - SQR(H)) / (2 * 2 * PI * F * Q * (C2 + C3))
150 LET R8 = (C1 + C2) / (R7 * (2 * PI * F) ^ 2 * C1 * C2 * C3)
160 LET R9 = 1 / ((2 * PI * F) ^ 2 * C1 * C2 * (R7 + R8))
170 PRINT "…‡“‹œ’€’› €‘—…’€:"
180 PRINT "R4="; R4, "R5="; R5, "R6="; R6, "R7="; R7, "R8="; R8, "R9="; R9
200 PRINT "……„€’Ž—€Ÿ ”“Š–ˆŸ „‹Ÿ ”ˆ‹œ’€ ‘ Q=+0.5"
205 PRINT "T(S)=(S^2-(WP/Q)*S+WP^2)/(S^2+(WP/Q)*S+WP^2)"
210 PRINT "……„€’Ž—€Ÿ ”“Š–ˆŸ „‹Ÿ ”ˆ‹œ’€ ‘ Q=-0.5"
215 PRINT "T(S)=-(S^2-(WP/Q)*S+WP^2)/(S^2+(WP/Q)*S+WP^2)"
220 END

