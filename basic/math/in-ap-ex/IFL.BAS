10 PRINT "àçíÖêèéãüñàü èêà ç=CONST èé îéêåìãÄå ãÄÉêÄçöÄ"
20 INPUT "ëíÖèÖçú èéãàçéåÄ M=1-5 "; M
25 N = M + 1
30 INPUT "X0,H "; Z, H
35 IF N = 3 THEN 100
40 IF N = 4 THEN 140
50 IF N = 5 THEN 190
60 IF N = 6 THEN 250
70 INPUT "Y0,Y1 "; A, B
72 INPUT "X "; X
75 P = (X - Z) / H
85 Y = (1 - P) * A + P * B
90 PRINT "Y="; Y
95 GOTO 72
100 INPUT "Y-1,Y0,Y1 "; A, B, C
110 INPUT "X "; X
115 P = (X - Z) / H
120 Y = P * (P - 1) * A / 2 + (1 - P * P) * B + P * (P + 1) * C / 2
130 PRINT "Y="; Y
135 GOTO 110
140 INPUT "Y-1,Y0,Y1,Y2 "; A, B, C, D
150 INPUT "X "; X
152 P = (X - Z) / H
155 E = (P - 2) / 2
160 Y = -P * (P - 1) * E * A / 3 + (P * P - 1) * E * B
170 Y = Y - P * (P + 1) * E * C + P * (P * P - 1) * D / 6
180 PRINT "Y="; Y
185 GOTO 150
190 INPUT "Y-2,Y-1,Y0,Y1,Y2 "; A, B, C, D, E
200 INPUT "X "; X
205 P = (X - Z) / H
210 F = (P * P - 1) / 2
215 K = (P * P - 4) / 2
220 Y = F * P * (P - 2) * A / 12 - (P - 1) * P * K * B / 3 + F * K * C
230 Y = Y - (P + 1) * P * K * D / 3 + F * P * (P + 2) * E / 12
240 PRINT "Y="; Y
245 GOTO 200
250 INPUT "Y-2,Y-1,Y0,Y1,Y2,Y3 "; A, B, C, D, E, F
260 INPUT "X "; X
261 P = (X - Z) / H
265 M = P * P - 1
270 I = M / 24
275 J = -P * I * (P - 3)
280 K = M - 3
285 L = K * (P - 3) / 12
290 Y = J * (P - 2) * A / 5 + L * P * (P - 1) * B / 2 - M * L * C
295 Y = Y + P * (P + 1) * L * D + J * (P + 2) * E + P * I * K * F / 5
300 PRINT "Y="; Y
305 GOTO 260

