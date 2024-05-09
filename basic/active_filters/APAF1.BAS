1 PRINT "€‘—…’ ”ˆ‹œ’€ — ˆ‡ŠŽ„ŽŽ’ŽƒŽ"
2 PRINT "            *--------------------*"
3 PRINT "            !                    !"
4 PRINT "        ‘2 ===               Ž“  !"
5 PRINT "            !   R3         ----- !"
6 PRINT "  <-!====!--*-!====!--*----!+  ! !"
7 PRINT "      R11   !         !    !   !-*->"
8 PRINT "            -         !  --!-  ! !"
9 PRINT "           ! !    C4 === ! !---! !"
10 PRINT "       R12 ! !        !  !       !"
11 PRINT "            -         !  *-------*"
12 PRINT "            !         !"
13 PRINT "           ---       --- "
20 INPUT "FP,QP "; F, Q
30 INPUT "C2,C4 "; C2, C4
40 IF C2 >= 4 * Q * Q * C4 THEN 60
50 PRINT "”ˆ‹œ’ … …€‹ˆ‡“…Œ.‚‚…„ˆ’… Ž‚›… ‘2 ˆ ‘4"
55 GOTO 30
60 LET A = C2 / (2 * Q * Q * C4) - 1
70 LET P = A + SQR(A * A - 1)
80 LET R1 = 1 / (2 * PI * F * SQR(P * C2 * C4))
85 LET R3 = P * R1
90 LET X = Q * SQR(C2 / P / C4)
100 INPUT "ŠBX="; K1
105 IF K1 = 0 THEN 140
110 IF 1 - K1 <= 0 THEN 140
120 LET K = K1
125 LET R8 = R1 / K
130 LET R9 = R1 / (1 - K)
135 GOTO 150
140 LET R8 = R1
141 LET R9 = 1E+37
145 LET K = 1
150 PRINT "…‡“‹œ’€’› €‘—…’€:"
160 PRINT "R11="; R8, "R12="; R9, "R3="; R3, "K="; K, "“—="; X
190 PRINT "……„€’Ž—€Ÿ ”“Š–ˆŸ ˆŒ……’ ‚ˆ„:"
195 PRINT "’(S)=K*((WP^2)/(S^2+(WP/Q)*S+(WP^2)))"
200 GOTO 100
205 END

