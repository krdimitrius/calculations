1 PRINT "êÄëóÖí îàãúíêÄ èéã.-èêéèìëä.ë R ÇïéÑéå à åÄãõå Q"
2 PRINT "            *-------*---------*"
3 PRINT "            !       !         !"
4 PRINT "            !       -         !"
5 PRINT "        C2 ===     ! ! R4     !"
6 PRINT "            !      ! !        !"
7 PRINT "            !       -    éì   !"
8 PRINT "      R11   !  !!   !   ----- !"
9 PRINT " <--!====!--*--!!---*---!+  ! !"
10 PRINT "            !    C3     !   !-*-->"
11 PRINT "            -         *-!-  !"
12 PRINT "           ! !        ! !---!"
13 PRINT "       R12 ! !        !"
14 PRINT "            -         !"
15 PRINT "            !         !"
16 PRINT "           ---       ---"
20 INPUT "FP,QP "; F, Q
25 INPUT "C2,C3 "; C2, C3
40 LET P = Q * Q * (2 + (C2 / C3) + (C3 / C2))
50 LET R1 = 1 / (2 * PI * F * SQR(P * C2 * C3))
60 LET R4 = P * R1
65 LET K0 = Q * Q * (1 + (C3 / C2))
70 INPUT "KBX="; K1
75 IF K1 = 0 THEN 110
80 IF (K0 - K1) <= 0 THEN 110
90 LET K2 = K1
95 LET R8 = (K0 / K1) * R1
100 LET R9 = (K0 / (K0 - K1)) * R1
105 GOTO 120
110 LET R8 = R1
115 LET R9 = 1E+37
116 LET K2 = K0
120 PRINT "êÖáìãúíÄíõ êÄëóéíÄ"
125 PRINT "R11="; R8, "R12="; R9, "R4="; R4, "K="; K2, "èìó="; K0
130 PRINT "èÖêÖÑÄíéóçÄü îìçäñàü àåÖÖí ÇàÑ:"
135 PRINT "T(S)=-K*((WP/Q)*S/(S^2+(WP/Q)*S+WP^2))"
140 GOTO 70
145 END

