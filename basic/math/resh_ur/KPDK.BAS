1 CLS
5 PRINT "‚›—ˆ‘‹…ˆ… ‚‘…X ŠŽ…‰ Ž‹ˆŽŒ€"
10 PRINT "‘ „…‰‘’‚ˆ’…‹œ›Œˆ ŠŽ””ˆ–ˆ…’€Œˆ"
15 INPUT "Žƒ…˜Ž‘’œ "; E
20 INPUT "‘’……œ Ž‹ˆŽŒ€ "; N
21 DIM A(2 * N + 1)
25 FOR J = 1 TO N + 1
26 PRINT "A"; N + 1 - J;
30 INPUT A(J)
31 NEXT J
32 K = 1
35 T = 1
36 C = A(2) / A(1)
40 IF N = 1 THEN P = -C
41 IF N = 1 THEN Q = 0
45 IF N = 1 THEN 270
50 IF N = 2 THEN H = C * C / 4 - A(3) / A(1)
55 IF N = 2 GOTO 220
60 M = 10
61 C = 4
62 D = 8
65 U = 4
70 V = 8
71 F = 1
72 W = 2
75 T = 0
80 IF M <> 10 THEN 100
85 P = C
86 M = 0
87 Q = D
88 C = U
89 D = V
90 U = P
91 V = Q
92 Y = C
93 Z = D
95 F = -F
100 M = M + 1
101 H = 0
102 Q = A(1)
103 P = A(2) - C * Q
105 L = Q
120 FOR J = 3 TO N
121 R = P
125 P = A(J) - C * R - D * Q
130 Q = R
131 R = L
132 L = Q - C * R - H * D
133 H = R
135 NEXT J
140 Q = A(N + 1) - D * Q
145 S = L + C * R
150 IF T = 0 THEN X = D * R
151 IF T = 0 THEN H = R * X + S * L
155 IF T = 0 AND H = 0 THEN 80
160 C = C + (P * S - Q * R) / H
165 D = D + (P * X + Q * L) / H
170 IF C - Y + D - Z <> 0 THEN 190
180 IF F = -W THEN PRINT "…’ …˜…ˆŸ"
181 IF F = -W THEN 345
185 W = -F
190 H = C * C / 4 - D
195 IF SQR((Q - P * C / 2) * (Q - P * C / 2) + P * P * ABS(H)) > E / N THEN 80
200 T = 0
201 A(2) = A(2) - C * A(1)
205 FOR J = 3 TO N - 1
210 A(J) = A(J) - C * A(J - 1) - D * A(J - 2)
215 NEXT J
220 P = -C / 2
225 Q = SQR(ABS(H))
230 IF H >= 0 THEN M = P + Q
231 IF H >= 0 THEN P = P - Q
232 IF H >= 0 THEN Q = 0
235 IF H >= 0 THEN 250
240 M = P
250 PRINT "X("; K; ")="; M; "+J*("; Q; ")"
255 K = K + 1
270 PRINT "X("; K; ")="; P; "+J*("; Q; ")"
275 K = K + 1
290 IF T <> 0 THEN 345
300 N = N - 2
305 A = 0
310 IF SQR((S - R * C * .5) * (S - R * C * .5) + R * R * ABS(H)) <= E THEN A = 1
320 B = 0
325 IF N >= 2 THEN B = 1
330 IF A + B = 2 THEN T = 1
335 IF A + B = 2 THEN 120
340 GOTO 35
345 END

