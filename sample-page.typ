#import "/book.typ": book-page

#let Axiom(A) = $sans(upright(#A))$

#let AxiomK = $Axiom("K")$
#let AxiomT = $Axiom("T")$
#let Axiom4 = $Axiom("4")$
#let Axiom5 = $Axiom("5")$
#let AxiomB = $Axiom("B")$
#let AxiomD = $Axiom("D")$
#let AxiomP = $Axiom("P")$
#let AxiomL = $Axiom("L")$
#let AxiomM = $Axiom("M")$
#let AxiomDot2 = $Axiom(".2")$
#let AxiomDot3 = $Axiom(".3")$

#let Rule(R) = $upright("(" #R ")")$

#let RuleMP = $Rule("MP")$
#let RuleNec = $Rule("Nec")$
#let RuleLoeb = $Rule("Löb")$
#let RuleHenkin = $Rule("Henkin")$


#let Logic(L) = $bold(upright(#L))$

#let LogicPL = $Logic("PL")$

#let LogicK = $Logic("K")$
#let LogicKT = $Logic("KT")$
#let LogicS4 = $Logic("S4")$
#let LogicS4Dot2 = $Logic("S4.2")$
#let LogicS5 = $Logic("S5")$
#let LogicGL = $Logic("GL")$
#let LogicS = $Logic("S")$
#let LogicN = $Logic("N")$
#let LogicKT4B = $Logic("KT4B")$
#let LogicTriv = $Logic("Triv")$
#let LogicVer = $Logic("Ver")$
#let LogicGrz = $Logic("Grz")$


#let box = $square.stroked$
#let dia = $diamond.stroked$

#show: book-page.with(title: "Hello, typst")

= Hello, typst

Sample page

= Modal Logic

Axiom $AxiomK$ is $box (phi -> psi) -> box phi -> box psi$.

Logic $LogicK$ is add axiom $AxiomK$ and necessitation rule $RuleNec$ to classical logic $LogicPL$