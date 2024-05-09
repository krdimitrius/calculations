10 PRINT "‚›—ˆ‘‹…ˆ… ‚‘…• ŠŽ…‰ …‹ˆ…‰ŽƒŽ “€‚…ˆŸ F(X)=0"
20 PRINT "‚ ˆ’…‚€‹… (€,‚) Œ…’Ž„ŽŒ Ž€‡Ÿ„ŽƒŽ ˆ‹…†…ˆŸ"
30 INPUT "ƒ€ˆ–› ˆ’…‚€‹€ €,‚ "; A, B
40 INPUT "Žƒ…˜Ž‘’œ ‚›—ˆ‘‹…ˆŸ ŠŽ…‰ "; E
50 INPUT "˜€ƒ €—€‹œŽƒŽ Žˆ‘Š€ "; H
55 C = H
60 K = 0
61 X = A
62 GOSUB 120
65 W = SGN(F)
70 X = X + C
75 IF X - C >= B THEN END
80 GOSUB 120
85 IF F * W / C > 0 THEN 70
90 C = -C / 4
95 IF ABS(C) > E / 4 THEN 70
100 K = K + 1
105 PRINT "X"; K; "="; X
110 C = H
112 W = -W
115 GOTO 70
120 I = .2718 * X * EXP(-10 * X) + 1E-08 * (EXP(20 * X) - 1)
130 F = (1 - X) / 125 - I
135 RETURN

