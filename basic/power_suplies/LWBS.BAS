1 PRINT "€‘—…’ L ˆ‹ˆ W Š€’“˜Šˆ € Ž…‚ŽŒ ”…ŽŒ€ƒˆ’ŽŒ"
2 PRINT "              ‘…„…—ˆŠ…  "
3 PRINT "  *-----*---*-----*      <---* "
4 PRINT "  ! --- !   ! --- ! <---*    ! "
5 PRINT "  ! ! ! !   ! ! ! !     !    ! "
6 PRINT "  ! ! ! !   ! ! ! !    H1   H2 "
7 PRINT "  ! ! ! !   ! ! ! !     !    ! "
8 PRINT "  ! --- !   ! --- ! <---*    ! "
9 PRINT "  *-----*---*-----*      <---* "
10 PRINT "  ! ! ! !   ! ! ! ! "
11 PRINT "  ! ! ! *D1 * ! ! !"
12 PRINT "  ! ! *  D2   * ! !"
13 PRINT "  ! *    D3     * !"
14 PRINT "  *      D4       *"
15 PRINT "                   "
30 INPUT "‚‚…„ˆ’… „ˆ€Œ…’› (CM) D1,D2,D3,D4 ";O,P,Q,R
40 INPUT "‚‚…„ˆ’… €‡Œ…› (CM) H1,H2 ";H,I
50 INPUT "‚‚…„ˆ’… Ž’Ž‘ˆ’…‹œ“ž Œ€ƒˆ’“ž Žˆ–€…ŒŽ‘’œ Œ=";M
60 LET A=(H+I)*(1/(R*R-Q*Q)+1/(P*P-O*O))
70 LET B=LOG((R+Q)/(P+O))/(I-H)
71 LET F=(A+B)/19.74/M
80 PRINT "…ˆ‡‚…‘’ŽŒ“ L ˆ‹ˆ W ‡€„€€‰’… “‹…‚Ž… ‡€—…ˆ…"
90 INPUT "‚‚…„ˆ’… L(ƒ),W";L,W
91 IF W=0 THEN 110
100 PRINT "ˆ„“Š’ˆ‚Ž‘’œ L="W*W/F
101 GOTO 80
110 PRINT "—ˆ‘‹Ž ‚ˆ’ŠŽ‚ W="SQR(L*F)
111 GOTO 80
112 END 
