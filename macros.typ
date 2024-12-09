#import "@preview/ctheorems:1.1.3": *

#let mand = text("and") // meta-and
#let mor = text("or") // meta-or

#let box = $square.stroked$
#let dia = $diamond.stroked$

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
#let AxiomGeach = $Axiom("Ge")$

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
#let LogicGeach = $Logic("Geach")$


#let alpha = "33"
#let theorem = thmbox("theorem", "Theorem", breakable: true, fill: rgb("#eeffee" + alpha))
#let lemma = thmbox("theorem", "Lemma", breakable: true, fill: rgb("#eeffee" + alpha))
#let corollary = thmbox("theorem", "Corollary", breakable: true, fill: rgb("#eeffee" + alpha))
#let definition = thmbox("theorem", "Definition", breakable: true, fill: rgb("#DFF9FF" + alpha))
#let notation = thmbox("theorem", "Notation", breakable: true, fill: rgb("#DFF9FF" + alpha))
#let construction = thmbox("theorem", "Construction", breakable: true, fill: rgb("#fff7f7" + alpha))
#let example = thmbox("theorem", "Example", breakable: true, fill: rgb("#f7f7fd" + alpha))
#let lesson = thmbox("theorem", "Lesson", breakable: true, fill: rgb("#FFCCCB" + alpha))
#let proof = thmproof("proof", "Proof")

#let dtt(
  title: "",
  authors: (),
  body,
) = {
  import "/book.typ": book-page
  show: book-page.with(title: title)

  show: thmrules.with(qed-symbol: $square$)
  set heading(numbering: "1.")

  align(center)[
    #block(text(1.75em, title))
  ]

  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
    ),
  )

  outline(depth: 2, indent: auto)

  body
}
