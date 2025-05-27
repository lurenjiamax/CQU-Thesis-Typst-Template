// 重庆大学论文中文摘要页
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

#import "../variable/cqu-variable.typ": *

#let chinese-abstract(
  abstract_zh: [],
  keywords_zh: (),
) = {

  show: show-cn-fakebold

  // 摘要标题
  align(center)[
    #heading(
      outlined: true,
      numbering: none,
      [摘#h(1em)要], // 空两个半角字符, 即1em
    )
  ]
  
  abstract_zh

  v(2em)

  // 关键词
  [#text(font: heiti, size: zihao("小四"))[关键词]：#keywords_zh.join("；")]

  pagebreak()
}