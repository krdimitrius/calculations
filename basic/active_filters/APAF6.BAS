1 PRINT "€‘—…’ ”‹œ’€ ‚‘…Ž“‘Š€™…ƒŽ ˆ‡ŠŽ„ŽŽ’ŽƒŽ"
2 PRINT "            *--------*---------*"
3 PRINT "            !        !         !"
4 PRINT "            !        -         !"
5 PRINT "       C2  ===      ! !  R4    !"
6 PRINT "            !       ! !        !"
7 PRINT "            !   C3   -    Ž“   !"
8 PRINT "       R1   !   !!   !   ----- !"
9 PRINT " <-*-!====!-*---!!---*---!-  ! !"
10 PRINT "   !            !!       !   ! !"
11 PRINT "   *----!====!-------*---!+  !-*--->"
12 PRINT "          R5         !   !---!"
13 PRINT "                     -"
14 PRINT "                R6  ! !"
15 PRINT "                    ! !"
16 PRINT "                     -"
17 PRINT "                     !"
18 PRINT "                    ---"
20 INPUT "FP="; F
25 INPUT "QP="; Q
30 INPUT "C2="; C2
31 INPUT "C3="; C3
35 INPUT "R6="; R6
40 LET P = Q * Q * (2 + (C2 / C3) + (C3 / C2))
50 LET R1 = 1 / (2 * PI * F * SQR(P * C2 * C3))
60 LET R4 = P * R1
65 LET X = Q * SQR(P * C3 / C2)
70 IF R6 = 0 THEN LET R6 = 10000!
80 LET R5 = R6 * (1 + (C2 / C3)) * 2 / P
90 LET K = R6 / (R5 + R6)
110 PRINT "…‡“‹œ’€’› €‘—…’€:"
115 PRINT "R1="; R1, "R4="; R4, "R5="; R5, "K="; K, "“—="; X
160 PRINT "……„€’Ž—€Ÿ ”†Š–ˆŸ ˆŒ……’ ‚ˆ„:"
165 PRINT "T(S)=K*(S^2-(WP/Q)*S+WP^2)/(S^2+(WP/Q)*S+WP^2)"
170 END

