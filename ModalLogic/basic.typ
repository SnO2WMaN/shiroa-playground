#import "macros.typ": *

#let setup-authors(authors) = {
  pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center)[
        *#author.name*
      ]),
    ),
  )
}
#show: dtt.with()

#setup-authors((
  (
    name: "SnO2WMaN",
  ),
))

#set heading(numbering: "1.")
#outline(depth: 2, indent: auto)

= Introduction

Some people formalize modal logic @bentzen_henkin-style_2021, @guo_verified_2023.

= Geach Logic

#definition[
  Let relation $R$ and $angle.l i,j,m,n angle.r in NN^4$.
  We say $R$ is $angle.l i,j,m,n angle.r$-confluenct if $R$ satusfies the following condition.
  $
    forall x, y, z. [x R^i y mand x R^j z ==> exists u. [y R^m u mand z R^n u]]
  $

  Now $R^i$ defined as follows.
  - $x R^0 y <==> x = y$．
  - $x R^(n + 1) y <==> exists z, x R^n z mand z R y$
]

#example[
  Some properties of binary relations can be generalized to $angle.l i,j,m,n angle.r$-confluency.

  - Reflexivity: $x R y ==> y R x$ is $angle.l 0,0,1,0 angle.r$-confluency
  - Transitivity: $x R y mand y R z ==> x R z$ is $angle.l 0,2,1,0 angle.r$-confluency
]

#bibliography("references.bib", style: "association-for-computing-machinery")
