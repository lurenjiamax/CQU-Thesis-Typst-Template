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
    font: "simsun"
  )
  show: show-cn-fakebold

  // Abstract title
  align(center)[
    #heading(
      outlined: true,
      numbering: none,
      text(weight: "bold", size: zihao("三号"))[摘 要],
    )
  ]

  abstract_zh

  v(1em)

  // Keywords
  [#text(weight: "bold", size: zihao("小四"))[关键词]：#keywords_zh.join("；")]

  pagebreak()
}

// The Chinese abstract will be inserted in the main template
