// 重庆大学论文标题样式设置

#import "../variable/cqu-variable.typ": *

// 根据重庆大学要求设置标题样式
#let set-heading-style(body) = {
  set heading(numbering: "1.1.1.1.1")

  // 一级标题：黑体，三号，居中
  show heading.where(level: 1): set text(font: heiti, size: zihao("三号"))
  show heading.where(level: 1): set align(center)
  show heading.where(level: 1): set block(outset: 1em, below: 1em, above: 2em)

  // 二级标题（小节）：黑体，小三号
  show heading.where(level: 2): set text(font: heiti, size: zihao("小三"))
  show heading.where(level: 2): set block(outset: 0.5em, below: 0.8em, above: 2em)

  // 三级标题（小小节）：黑体，四号
  show heading.where(level: 3): set text(font: heiti, size: zihao("四号"))
  show heading.where(level: 3): set block(outset: 0.5em, below: 0.6em, above: 0.6em)

  body
}
