10 PRINT "€‘—…’ ‘ˆ‹Ž‚ŽƒŽ ’€‘”ŽŒ€’Ž€"
20 INPUT "ƒ€€ˆ’€Ÿ ŒŽ™Ž‘’œ"; P
30 INPUT "Œ€Š‘ˆŒ€‹œ€Ÿ ˆ„“Š–ˆŸ ‚ ‘…„…—ˆŠ…"; I
40 INPUT "—ˆ‘‹Ž ‘’…†…‰ ‘…„…—ˆŠ€ ‘ ŽŒŽ’Š€Œˆ"; S
50 INPUT "„Ž“‘’ˆŒ€Ÿ ‹Ž’Ž‘’œ ’ŽŠ€ Ž‚Ž„Ž‚"; X
60 INPUT "ŠŽ””. ‡€Ž‹…ˆŸ ŽŠ€ ‘…„…—ˆŠ€ Œ…„œž"; K1
70 INPUT "ŠŽ””. ‡€Ž‹…ˆŸ ‘…„…—ˆŠ€ ‘’€‹œž"; K2
80 INPUT "Š..„. ’€‘”ŽŒ€’Ž€"; N
90 INPUT "—€‘’Ž’€ ‘…’ˆ"; F
100 INPUT "„‹Ÿ …‚ˆ—Ž‰ ŽŒŽ’Šˆ U1,I1 "; U1, I1
105 Y = P / F / S / I / X / N / K1 / K2 / .0222
110 PRINT "QCT*QO="; Y
115 PRINT "‚›…ˆ’… Ž„•Ž„Ÿ™ˆ‰ ’ˆ ‘…„…—ˆŠ€ ˆ „‹Ÿ …ƒŽ"
120 INPUT "‚‚…„ˆ’… €€Œ…’› A,B,C "; A, B, C
125 E = F * A * C * I * K2 * .000444
130 PRINT ".„.‘. Ž„ŽƒŽ ‚ˆ’Š€"; E
135 W1 = U1 / E
140 D1 = 1.13 * SQR(I1 / X)
145 L1 = W1 * (2 * (A + C) + PI * B) / 100
150 U = .0225 * I1 * L1 / D1 / D1
155 M = (U1 - U) / E
160 PRINT "—ˆ‘‹Ž ‚ˆ’ŠŽ‚ …‚ˆ—Ž‰ ŽŒŽ’Šˆ"; M
165 PRINT "„ˆ€Œ…’ Ž‚Ž„€ …‚ˆ—Ž‰ ŽŒŽ’Šˆ"; D1
170 INPUT "—ˆ‘‹Ž ‚’Žˆ—›• ŽŒŽ’ŽŠ"; H
175 FOR I = 1 TO H
185 INPUT "„‹Ÿ ‚’Žˆ—Ž‰ ŽŒŽ’Šˆ U,I "; U2, I2
190 W2 = U2 / E
195 D2 = 1.13 * SQR(I2 / X)
200 PRINT "—ˆ‘‹Ž ‚ˆ’ŠŽ‚"; W2
205 PRINT "„ˆ€Œ…’ Ž‚Ž„€"; D2
210 PRINT
220 NEXT I
225 END

