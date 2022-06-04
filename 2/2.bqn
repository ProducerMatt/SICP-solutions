div ← 3 # denominator of division
rep ← 2 # times to divide
base ← 2 # base of logarithm
size ← 12 # size of table to generate
base ⋆⁼¨ {div÷˜¨𝕩}⍟rep {(2⋆𝕨)×(3⋆𝕩)}⌜˜ ↕size
