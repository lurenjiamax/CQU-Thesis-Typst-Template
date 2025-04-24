// 重庆大学论文标题样式设置

#import "../variable/cqu-variable.typ": *

// 根据重庆大学要求设置标题样式
#let set-heading-style(body) = {
  set heading(numbering: "1.1.1.1.1")
  // // 设置摘要和目录中的标题间距
  // show heading: set block(below: 1em, above: 2em)
  // TODO: 更加智能的标题间距
  // 一级标题：黑体，三号，居中; 同样适用于其他没有编号的一级标题
  show heading.where(level: 1): set text(font: (
      (name: timesromance, covers: regex("[A-Za-z0-9]")),
      (name: heiti , covers: "latin-in-cjk"),
    ), size: zihao("三号"), weight: "regular")
  show heading.where(level: 1): set align(center)
  show heading.where(level: 1): set block(outset: 1em, below: 1em, above: 2em)

  // 二级标题（小节）：黑体，小三号
  show heading.where(level: 2): set text(font: (
      (name: timesromance, covers: regex("[A-Za-z0-9]")),
      (name: heiti , covers: "latin-in-cjk"),
    ), size: zihao("小三"))
  show heading.where(level: 2): set block(outset: 0.5em, below: 0.8em, above: 2em)

  // 三级标题（小小节）：黑体，四号
  show heading.where(level: 3): set text(font: (
      (name: timesromance, covers: regex("[A-Za-z0-9]")),
      (name: heiti , covers: "latin-in-cjk"),
    ), size: zihao("四号"))
  show heading.where(level: 3): set block(outset: 0.5em, below: 0.6em, above: 0.6em)

  body
}
