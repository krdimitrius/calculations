1 PRINT "€‘—…’ ”‹’€ — ‘…„…„’ƒ"
2 PRINT "            *-----------------------*"
3 PRINT "            !                       !"
4 PRINT "        C2 ===                      !"
5 PRINT "            !                 “    !"
6 PRINT "     R11    !     R3        -----   !"
7 PRINT " <-!====!---*---!====!-*----!+  !   !"
8 PRINT "            !          !    !   !---*--->"
9 PRINT "            -          !  *-!-  !   !"
10 PRINT "       R12 ! !     C4 === ! !---!   !"
11 PRINT "           ! !         !  !         !"
12 PRINT "            -          !  *-!====!--*"
13 PRINT "            !          !  !   R6"
14 PRINT "           ---        --- -"
15 PRINT "                         ! ! R5"
16 PRINT "                         ! !"
17 PRINT "                          -"
18 PRINT "                          !"
19 PRINT "                         ---"
20 INPUT "FP,QP "; F, Q
30 INPUT "C2,C4,R5 "; C2, C4, R5
40 LET P1 = ((C2 / C4) / (36 * Q * Q)) * ((SQR(1 + 12 * Q * Q * (1 + (C4 / C2))) + 1) ^ 2)
50 PRINT " „‹ ’€‹ƒ “— "; P1
60 PRINT "‚‚…„’… „ 0,…‘‹ =’"
70 INPUT "‚‚…„’… „ 1,…‘‹  „“ƒ… "; A
80 IF A = 0 THEN 110
90 IF A <> 0 THEN 100
100 LET P = P1
105 GOTO 120
110 INPUT "‚‚…„’…  "; P
120 LET R1=1/(2*PI*F*SQR(P*C2*C4)/
125 LET R3 = P * R1
130 IF R5 = 0 THEN LETR5 = 10000!
140 LET R6 = R5 * (((C4 / C2) * (1 + P)) - (SQR(P * (C4 / C2)) * (1 / Q)))
150 LET K0 = 1 + (R6 / R5)
155 LET X = Q * K0 * K0 * SQR(C2 / P / C4)
160 INPUT "KBX="; K1
165 IF K1 = 0 THEN 180
170 IF (K0 - K1) > 0 THEN 190
180 LET R8 = R1
181 LET R9 = 1E+37
182 LET K2 = K0
183 GOTO 200
190 LET K2 = K1
191 LET R8 = (K0 / K1) * R1
195 LET R9 = (K0 / (K0 - K1)) * R1
200 PRINT "…‡“‹’€’› €‘—…’€:"
205 PRINT "R11="; R8, "R12="; R9, "R3="; R3, "R6="; R6, "K="; K2, "“—="; X, "P="; P
210 PRINT "……„€’—€ ”†– ……’ ‚„:"
215 PRINT "T(S)=K*(WP^2)/(S^2+(WP/Q)*S+WP^2)"
216 PRINT " αβΰ®©ª :Fp-R3,Qp-R6"
217 PRINT "ΰ¨¬¥η ­¨¥:Ά £ΰ δ¥ R12 Ά¬¥αβ® 1E37 η¨β βμ-1…90"
220 GOTO 110
225 END

