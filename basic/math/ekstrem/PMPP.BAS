10 PRINT "Žˆ‘Š Œ€Š‘ˆŒ“Œ€ F(X) Œ…’Ž„ŽŒ Ž€‡Ÿ„ŽƒŽ ˆ‹…†…ˆŸ"

20 INPUT "€—€‹œ›‰ ˜€ƒ Žˆ‘Š€ ";H
25 INPUT "Žƒ…˜Ž‘’œ …‡“‹œ’€’€ ";E
30 INPUT "X0";X
35 D=H
36 GOSUB 80
40 G=F
41 X=X+D
45 GOSUB 80
50 IF F>G THEN 40
60 D=-D/4
65 IF ABS(D)>E/4 THEN 40
70 PRINT "XM="X
75 PRINT "F(XM)="F
76 END 
80 F=((.1*X-2)*X+10)*X
85 RETURN 
