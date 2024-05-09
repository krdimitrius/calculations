2 PRINT "€‘—…’ ”‹’€ “‚…‘€‹ƒ.‘•…€ 2"
3 PRINT "             R2"
4 PRINT "         *-!====!--------------------------*"
5 PRINT "         !   !! C3                         !"
6 PRINT "         *---!!---*                        !"
7 PRINT "         !   !!   !         C6             !"
8 PRINT "         !   R4   !         !!             !"
9 PRINT "         *-!====!-*       *-!!----*        !"
10 PRINT "         !   “   !       ! !!    !        !"
11 PRINT "   R1    ! -----  !       !   “  !        !"
12 PRINT "<-!====!-*-!-  !  !   R5  ! ----- !        !"
13 PRINT "           !   !--*-!===!-*-!-  ! !        !"
14 PRINT "         *-!+  !  !         !   !-*--------!--->"
15 PRINT "         ! !---!  *-->    *-!+  ! !        !"
16 PRINT "         !                ! !---! !        !"
17 PRINT "        ---               !       !        !"
18 PRINT "                         ---      !        !"
19 INPUT "                  *---------------*        !"; X
20 PRINT "                  !           R8           !"
21 PRINT "                  !       *-!====!---------*"
22 PRINT "                  !       !   “           !"
23 PRINT "                  !   R7  ! -----          !"
24 PRINT "                  *-!===!-*-!-  !          !"
25 PRINT "                            !   !----------*-->"
26 PRINT "                          *-!+  !"
27 PRINT "                          ! !---!"
28 PRINT "                          !"
29 PRINT "                         ---"
30 INPUT "FP,QP,C,K "; F, Q, C, K
40 LET R0 = 1 / (2 * PI * F * C)
50 PRINT "’€‹… ‡€—…… …‡‘’€ „‹ ‡ƒ ‡€—… “— R0="; R0
55 INPUT "‚‚…„’… €‹… ‡€—…… R0 "; R9
60 LET R2 = R9
65 LET R7 = R9
70 LET R8 = R9
80 LET C3 = C
85 LET C6 = C
90 LET R5 = (R0 * R0) / R9
95 LET R4 = Q * R0
100 PRINT "‚€€’ €"
110 LET R1 = R4 / K
115 LET K1 = K
120 LET K2 = R2 / R1
125 LET K3 = R2 / R1
126 PRINT "…‡“‹’€’› €‘—…’€:"
127 PRINT "R1="; R1, "R2="; R2, "R4="; R4, "R5="; R5, "R7="; R7, "R8="; R8, "C3="; C3, "C6 = "; C6
128 PRINT "="; K1, "—1="; K2, "—2="; K3
129 INPUT "                                              "; X
130 PRINT "‚€€’ 2"
135 LET R1 = R2 / K
140 LET K1 = R4 / R1
145 LET K2 = K
150 LET K3 = K
155 PRINT "…‡“‹’€’› €‘—…’€:"
160 PRINT "R1="; R1, "R2="; R2, "R4="; R4, "R5="; R5, "R7="; R7, "R8="; R8, "C3="; C3, "C6 = "; C6
165 PRINT "="; K1, "—1="; K2, "—2="; K3
170 PRINT "……„€’—›… ”“– …’ ‚„:"
175 PRINT "’(_)=-*((WP/Q)*S/(S^2+(WP/Q)*S+WP^2))"
180 PRINT "’—1(S)=—1*(WP^2/(S^2+(WP/Q)*S+WP^2))"
185 PRINT "’—2(S)=-—2*(WP^2/(S^2+(WP/Q)*S+WP^2))"
190 PRINT " αβΰ®©ª :Fp-R5,Qp-R4,K-R1"
195 END

