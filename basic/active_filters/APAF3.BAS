1 PRINT "€‘—…’ ”ˆ‹œ’€ Ž‹.-Ž“‘Š.‘ ‘ ‚•Ž„ŽŒ ˆ Œ€‹›Œ Q"
2 PRINT "        *----------*--------*"
3 PRINT "        !          !        !"
4 PRINT "        -          !        !"
5 PRINT "       ! ! R2      !        !"
6 PRINT "   C11 ! !        === C4    !"
7 PRINT "        -          !     Ž“ !"
8 PRINT "    !!  !     R3   !  ----- !"
9 PRINT " <--!!--*--!====!--*--!-  ! !"
10 PRINT "    !!  !             !   !-*-->"
11 PRINT "        !           *-!+  !"
12 PRINT "       === C12      ! !---!"
13 PRINT "        !           !"
14 PRINT "       ---         ---"
20 INPUT "FP,QP "; F, Q
30 INP40 IF (C8+C9)>4*Q*Q*C4 THEN 60
50 PRINT "”ˆ‹œ’ … …€‹ˆ‡“…Œ.‚‚…„ˆ’… Ž‚›… C4,C11,C12"
55 GOTO 30
60 LET C1 = C8 + C9
70 LET A = (C1 / (2 * Q * Q * C4)) - 1
80 LET P = A + SQR(A * A - 1)
90 LET R2 = 1 / (2 * PI * F * SQR(P * C1 * C4))
95 LET R3 = P * R2
100 LET X = Q * SQR(C1 / P / C4)
105 LET K = (C8 / C1) * X
110 PRINT "…‡“‹œ’€’› €‘—…’€"
115 PRINT "R2="; R2, "R3="; R3, "K="; K, "“—="; X
120 PRINT "……„€’Ž—€Ÿ ”“Š–ˆŸ ˆŒ……’ ‚ˆ„:"
125 PRINT "T(S)=-K*((WP/Q)*S/(S^2+(WP/Q)*S+WP^2))"
130 END

