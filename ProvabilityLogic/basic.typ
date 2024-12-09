#import "/macros.typ": *


#show: dtt.with(
  title: "Provability Logic",
  authors: ("SnO2WMaN",),
)

= Introduction

Read modal operator $box$ as "provable".

= Preliminaries

== Realization

== Derivability conditions

= Arithmetical soundness

Arithmetical soundness is easy to prove.

= Arithmetical completeness of $LogicGL$

== Proof outline

#theorem[
  For any $LogicGL$-tree model, Solovay sentences can be able to construct.
]<thm:constructability_solovay_sentences>

We will prove @thm:constructability_solovay_sentences in @sect:construction_solovay_sentences.


#lemma[
  Let $Phi := phi_0,dots,phi_n$ be Solovay sentences of $M$, $*$ be realization based on $Phi$, and $i != 0$.
  1. $M, i - 1 tack.r phi_i -> A^*$.
  2. $M, i - 1 tack.not.r phi_i -> not A^*$.
]

#lemma[
  Let
  $M' := angle.l {-1,0,dots,n - 1}, R', V' angle.r$ be simple extension of $M$,
  $Phi := phi_(-1), phi_0,dots,phi_n$ be Solovay sentences of $M'$,
  and $*$ be realization based on $Phi$.
  If $M, 0 tack.double.not.r A$, then $T tack.r.not A^*$.
]<lem:GL_arithcomp_lem2>

#theorem[Arithmetical Completeness of $LogicGL$][
  If $T tack.r A^*$ for any realization $*$, then $LogicGL tack.r A$.
]

#proof[
  We show contrapose.
  Suppose $LogicGL tack.not.r A$, then some $LogicGL$-tree model $M$ exists and on its root $0$, $M, 0 tack.double.not.r A$.
  Therefore, realization $*$ that satisfies $T tack.r.not A^*$ exists by @lem:GL_arithcomp_lem2.
]

== Constructing Solovay sentences <sect:construction_solovay_sentences>

#bibliography("/references.bib", style: "association-for-computing-machinery")
