// Chinese abstract page for CQU thesis
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

#import "../variable/cqu-variable.typ": *

#let chinese-abstract(
  abstract_zh: [],
  keywords_zh: (),
) = {
  
  // Set page properties
  set text(
    font: songti
  )
  show: show-cn-fakebold

  // Abstract title
  align(center)[
    #show heading: set text(size: zihao("三号"))
    #heading(
      outlined: true,
      numbering: none,
      [摘 要],
    )
  ]

  abstract_zh

  v(1em)

  // Keywords
  [#text(weight: "bold", size: zihao("小四"))[关键词]：#keywords_zh.join("；")]

  pagebreak()
}

// The Chinese abstract will be inserted in the main template
