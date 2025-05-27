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
      [目#h(1em)录] // 空两个半角字符, 即1em
    )
  ]
  set par(
    spacing: line-spacing+0.2em,
    leading: line-spacing+0.2em
  )

  // 目录样式
  set outline(
    indent: 1em,
    title: none,
  )
  show outline.entry.where(
    level: 1
  ): set text(font: default-hei, size: zihao("四号"))

  show outline.entry.where(
    level: 2
  ): set text(font: default-hei, size: zihao("五号"))

  show outline.entry.where(
    level: 3
  ): set text(font: default-song, size: zihao("五号"))
  // 目录最大深度为3级

  show outline.entry: it => link(
    it.element.location(),
    it.indented(it.prefix(), 
        [#it.body() #box(width: 1fr, repeat(text(size: 14pt, "."), gap: 0.15em))  #text(size: 10.5pt, it.page())]
    )
  )
  outline(
    title: none,
    depth: 3,
    target: selector(heading)
  )

  pagebreak()
}
