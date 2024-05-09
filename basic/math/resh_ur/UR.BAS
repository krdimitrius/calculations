10 PRINT "€•Ž†„…ˆ… ‚‘…• ŠŽ…‰ “€‚…ˆŸ F(X)=0"
15 PRINT "‚ ˆ’…‚€‹… Ž’ € „Ž ‚ Œ…’Ž„ŽŒ ›€ŠŽ‚€"
20 INPUT "ƒ€ˆ–› ˆ’…‚€‹€ €,‚ ";A,B
25 INPUT "Žƒ…˜Ž‘’œ €•Ž†„…ˆŸ ŠŽŸ ";E
30 INPUT "—ˆ‘‹Ž Œ ";M
31 X=A
32 T=0
35 I=0
40 GOSUB 120
45 Z=X+ABS(F)/M
50 IF Z>=B THEN 115
60 IF Z-X>=E THEN 90
70 IF T=O THEN W=Z
75 X=Z+E
80 Y=Z
81 T=1
85 GOTO 40
90 IF T<>1 THEN 110
100 I=I+1
101 PRINT "X"I"="(Y+W)/2
105 T=0
110 X=Z
112 GOTO 40
115 END 
120 F=X*X*X*X-13*X*X+36
125 RETURN 
