1 PRINT "   "
2 PRINT " *----------------------------------------*"
3 PRINT " !        *----------------*              !"
4 PRINT " !        !         3   !            !"
5 PRINT " !   R1   ! -----     !!   !        ----- !"
6 PRINT " *-!====!-*-!-  ! *---!!---*--------!-  ! !"
7 PRINT " !          !   !-*   !!            !   !-*-->"
8 PRINT " *-!====!-*-!+  ! !               *-!+  !"
9 PRINT "     R2   ! !---! *-!====!-*---*--* !---!"
10 PRINT "          -           R4   !   !"
11 PRINT "      R5 ! !               !   -"
12 PRINT "         ! !               !  / ! R8"
13 PRINT "          -           C7  === ! !  "
14 PRINT "          !                !   -"
16 PRINT " <--------*----------------*   !"
17 PRINT "                              ---"
20 INPUT "FP,QP,C "; F, Q, C
30 LET R0 = 1 / (2 * PI * F * C)
40 PRINT "       R0="; R0
50 INPUT " R9   R0 "; R9
55 LET C3 = C
60 LET C7 = C
65 LET R1 = R9
70 LET R2 = R9
75 LET R5 = R9
80 LET R8 = Q * R0
85 LET R4 = (R0 * R0) / R9
90 PRINT " :"
95 PRINT "R1="; R1, "R2="; R2, "R4="; R4, "R5="; R5, "R8="; R8, "C3="; C3, "C7="; C7
100 PRINT "   :"
105 PRINT "T(S)=(S^2-(WP/Q)*S+WP^2)/(S^2+(WP/Q)*S+WP^2)"
110 PRINT " áâŕŽŠŞ :Fp-R4,Qp-R8"
115 END

