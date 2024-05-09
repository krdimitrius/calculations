1 PRINT "€‘—…’ ”ˆ‹œ’€ ‚— ˆ‡ŠŽ„ŽŽ’ŽƒŽ"
2 PRINT "        *---------------*"
3 PRINT "        !               !"
4 PRINT "        -               !"
5 PRINT "       ! ! R2           !"
6 PRINT "       ! !              !"
7 PRINT "        -               !"
8 PRINT "   C11  !   C3      Ž“  !"
9 PRINT "    !!  !   !!     ----- !"
10 PRINT " <--!!--*---!!-*---!+  ! !"
11 PRINT "    !!  !   !! !   !   !-*-->"
12 PRINT "        !      - *-!-  ! !"
13 PRINT "   C12 === R4 ! !! !---! !"
14 PRINT "        !     ! !!       !"
15 PRINT "        !      - *-------*"
16 PRINT "        !      !"
17 PRINT "       ---    ---"
20 INPUT "FP,QP "; F, Q
30 INPUT "C3,C11,C12 "; C3, C8, C9
40 LET C1 = C8 + C9
45 LET P = Q * Q * (2 + (C3 / C1) + (C1 / C3))
50 LET R2 = 1 / (2 * PI * F * SQR(P * C1 * C3))
55 LET R4 = P * R2
60 LET X = Q * SQR(P * C3 / C1)
65 LET K = C8 / C1
70 PRINT "…‡“‹œ’€’› €‘—…’€:"
75 PRINT "R2="; R2, "R4="; R4, "K="; K, "“—="; X
80 PRINT "……„€’Ž—€Ÿ ”“Š–ˆŸ ˆŒ……’ ‚ˆ„:"
85 PRINT "T(S)=K*(S^2)/(S^2+(WP/Q)*S+WP^2)"
90 END

