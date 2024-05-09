10 PRINT "          €‘—…’ „Ž‘‘…‹Ÿ ”ˆ‹œ’€ "
20 INPUT "‚‚…„ˆ’… ˆ„“Š’ˆ‚Ž‘’œ ,ƒ.L="; L
30 INPUT "‚‚…„ˆ’… ’ŽŠ,A,I="; I
40 LET A = 2.6 * ((L * I * I) ^ (1 / 4))
45 PRINT "˜ˆˆ€ ‘’…†Ÿ,CM,€="; A
50 LET Q = (A * A) * 1.5
55 PRINT "‘…—…ˆ… ‘…„…—ˆŠ€,CM,Q="; Q
60 PRINT "‚›ˆˆ’… ‘’€„€’›‰ ‘…„…—ˆŠ Ž ‡€—…ˆŸŒ € ˆ Q"
70 INPUT "‚‚…„ˆ’… ˜ˆˆ“ ‘’…†Ÿ € ˆ ŽŠ€ ‚ (CM)"; A, B
80 INPUT "‚‚…„ˆ’… ‚›‘Ž’“ ŽŠ€ H,CM"; H
90 INPUT "‚‚…„ˆ’… „‹ˆ“ Œ€ƒˆ’Ž‰ ‹ˆˆˆ L1,CM"; L1
95 INPUT "‚‚…„ˆ’… ‘…—…ˆ… ‘…„…—ˆŠ€ Q,CM"; Q
100 LET C = Q / A
105 PRINT "’Ž‹™ˆ€ €Ž€ C="; C
110 LET K = (L * (I * I)) / A / C / L1
115 PRINT "‚‘ŽŒŽƒ€’…‹œ›‰ ŠŽ””ˆ–ˆ…’ K=", K
120 LET X = 330 * K - 15000 * K * K
125 PRINT "Ž’ˆŒ€‹œ€Ÿ „‹ˆ€ ‚Ž‡„“˜ŽƒŽ ‡€‡Ž€ X="; X
130 LET M = 114 * EXP(-401 * K) + 50
135 PRINT "””…Š’ˆ‚€Ÿ Œ€ƒˆ’€Ÿ Žˆ–€…ŒŽ‘’œ M="; M
140 LET Y = X * L1 / 20
150 INPUT "‚‚…„ˆ’… „Ž“‘’ˆŒ“ž ‹Ž’Ž‘’œ ’ŽŠ€ ‚ Ž‚Ž„… P,A/MM^2"; P
160 LET D = SQR(I / P) * 1.13
165 PRINT "„ˆ€Œ…’ Ž‚Ž„€,MM,D="; D
170 LET W = 10000 * SQR(L * L1 / (1.26 * M * A * C))
180 PRINT "—ˆ‘‹Ž ‚ˆ’ŠŽ‚ „Ž‘‘…‹Ÿ W="; W
190 LET K1 = .008 * W * (D * D) / (B * H)
200 PRINT "ŠŽ””ˆ–ˆ…’ ‡€Ž‹…ˆŸ ŽŠ€ ‘…„…—ˆŠ€ „Ž‘‘…‹Ÿ K1="; K1
210 LET R = .000225 * W * (2 * (A + C) + PI * B) / (D * D)
220 PRINT "ŽŒˆ—…‘ŠŽ… ‘ŽŽ’ˆ‚‹…ˆ… ŽŒŽ’Šˆ „Ž‘‘…‹Ÿ R="; R
225 GOTO 10
230 END

