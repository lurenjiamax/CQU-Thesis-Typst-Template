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
      [摘 要],
    )
  ]

  abstract_zh

  v(1em)

  // 关键词
  [#text(weight: "bold", size: zihao("小四"))[关键词]：#keywords_zh.join("；")]

  pagebreak()
}