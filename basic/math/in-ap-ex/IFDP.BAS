10 PRINT "ˆ’…Ž‹Ÿ–ˆŸ ”“Š–ˆˆ „‚“• ……Œ…›•"
20 PRINT "F(X,Y) Ž 3,4 ˆ 6 ’Ž—Š€Œ"
30 INPUT "˜€ƒ • ˆ Y "; H, L
40 INPUT "—ˆ‘‹Ž ’Ž—…Š "; N
60 IF N = 4 THEN 90
65 IF N = 6 THEN 100
80 INPUT "F00,F10,F01 "; A, B, C
85 GOTO 110
90 INPUT "F00,F10,F01,F11 "; A, B, C, D
95 GOTO 110
100 INPUT "F0-1,F-10,F00,F10,F01,F11 "; A, B, C, D, E, I
110 INPUT "X0,Y0 "; X0, Y0
120 INPUT "X,Y "; X, Y
125 P = (X - X0) / H
130 Q = (Y - Y0) / L
135 IF N = 4 THEN 160
140 IF N = 6 THEN 170
150 F = (1 - P - Q) * A + P * B + Q * C
155 GOTO 190
160 F = (1 - P) * (1 - Q) * A + P * (1 - Q) * B + Q * (1 - P) * C + P * Q * D
165 GOTO 190
170 F = Q * (Q - 1) * A / 2 + P * (P - 1) * B / 2 + (1 + P * Q - P * P - Q * Q) * C
180 F = F + P * (P - 2 * Q + 1) * D / 2 + Q * (Q - 2 * P + 1) * E / 2 + P * Q * I
190 PRINT "F("; X; ","; Y; ")="; F
195 GOTO 120

