// Table of contents for CQU thesis
#import "@preview/cuti:0.3.0": show-cn-fakebold
#import "../variable/cqu-variable.typ": *

#let table-of-contents() = {
  // Table of contents title
  show: show-cn-fakebold
  align(center)[
    #heading(
      outlined: false,
      numbering: none,
      text(weight: "bold", size: zihao("三号"))[目 录]
    )
  ]

  // Configure TOC style
  set outline(
    indent: 2em,
    title: none,
  )

  show outline.entry.where(
    level: 1
  ): set text(font: (
    (name: times, covers: regex("[A-Z]")),
    (name: heiti, covers: "latin-in-cjk"),
    (name: times, covers: regex("[0-9]")),
  ), size: zihao("四号")
  )

  show outline.entry.where(
    level: 2
  ): set text(font: (
    heiti,
    (name: times, covers: regex("[0-9]")),
    ), size: zihao("五号"))

  show outline.entry.where(
    level: 3
  ): set text(font: songti, size: zihao("五号"))

  // Display TOC, Maxium depth is 3.
  outline(
    title: none,
    depth: 3,
  )

  pagebreak()
}
