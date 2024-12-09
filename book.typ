
#import "@preview/shiroa:0.1.2": *

#show: book

#book-meta(
  title: "Formalized Formal Logic",
  summary: [
    #prefix-chapter("index.typ")[About],

    #prefix-chapter("ModalLogic/basic.typ")[Basic Results of Modal Logic],

    #prefix-chapter("ProvabilityLogic/basic.typ")[Provability Logic],
  ],
)

// re-export page template
#import "/templates/page.typ": project
#let book-page = project
