// 重庆大学论文目录
#import "@preview/cuti:0.3.0": show-cn-fakebold
#import "../variable/cqu-variable.typ": *

#let table-of-contents() = {
  // 目录标题
  show: show-cn-fakebold

  align(center)[
    #heading(
      outlined: false,
      numbering: none,
      [目 录]
    )
  ]

  set par(
    spacing: 1em,
    leading: 0.8em
  )

  // 目录样式
  set outline(
    indent: 2em,
    title: none,
  )

  show outline.entry.where(
    level: 1
  ): set text(font: default-hei, size: zihao("四号")
  )

  show outline.entry.where(
    level: 2
  ): set text(font: default-hei, size: zihao("五号"))

  show outline.entry.where(
    level: 3
  ): set text(font: default-song, size: zihao("五号"))

  // 目录最大深度为3级
  outline(
    title: none,
    depth: 3,
    target: selector(heading)
  )

  pagebreak()
}
