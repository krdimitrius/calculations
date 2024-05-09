1 PRINT "êÖòÖçàÖ ìêÄÇçÖçàü F(X)=0 äéåÅàçàêéÇÄççõå åÖíéÑéå ëÖäìôàï-ïéêÑ"
5 INPUT "E,R,I0,D "; E, R, I0, D
10 INPUT "X0,X1,H "; X0, X1, H
20 X = X0
25 GOSUB 80
30 A = F
31 X = X1
35 GOSUB 80
40 B = F
45 Y = X0 - A * (X1 - X0) / (B - A)
50 X0 = X1
55 X1 = Y
60 IF ABS(X1 - X0) > H THEN 20
70 PRINT "äéêÖçú="; X1
75 END
80 F = E - X - R * I0 * (EXP(D * X) - 1)
85 RETURN

