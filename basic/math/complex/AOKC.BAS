5 PRINT "€ˆ”Œ…’ˆ—…‘Šˆ… Ž…€–ˆˆ ‘ ŠŽŒ‹…Š‘›Œˆ —ˆ‘‹€Œˆ"
10 PRINT "‚ €‹ƒ…€ˆ—…‘ŠŽ‰ ”ŽŒ…"
30 INPUT "RE Z1,IM Z1 "; A, B
40 INPUT "RE Z2,IM Z2 "; C, D
50 INPUT "ŠŽ„ Ž…€–ˆˆ (+1,-2,*3,/4)"; K
60 IF K = 1 THEN 110
70 IF K = 2 THEN 130
80 IF K = 3 THEN 140
90 IF K = 4 THEN 160
100 GOTO 50
110 A = A + C
115 B = B + D
120 PRINT "Z 0="; A; "+J*("; B; ")"
125 GOTO 40
130 A = A - C
131 B = B - D
135 GOTO 120
140 E = A * C - B * D
145 F = A * D + C * B
150 A = E
151 B = F
155 GOTO 120
160 L = C * C + D * D
165 E = A * C + B * D
170 F = B * C - A * D
175 A = E / L
180 B = F / L
185 GOTO 120

