// English abstract page for CQU thesis

#import "../variable/cqu-variable.typ": *

#let english-abstract(
  abstract_en: [],
  keywords_en: (),
) = {
  // Set page properties
  set text(
    font: "Times New Roman"
  )
  // Abstract title
  align(center)[
    #heading(
      outlined: true,
      numbering: none,
      text(weight: "bold", size: zihao("三号"))[ABSTRACT]
    )
  ]

  // Abstract content
  set text(
    lang: "en",
  )

  abstract_en

  v(1em)

  // Keywords
  [#text(weight: "bold", size: zihao("小四"))[Key words]: #keywords_en.join(";")]

  pagebreak()
}

// The English abstract will be inserted in the main template
