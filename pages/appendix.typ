// 重庆大学论文附录页

#import "../variable/cqu-variable.typ": *

#let appendix-content = {
  // 附录标题
  show heading: set text(size: zihao("三号"))
  heading(
    outlined: true,
    numbering: none,
    [附录A：XX公式的推导]
  )

  // 附录内容需要在这里添加
  set text(
    size: zihao("五号"),
  )

  [XX公式的推导过程是：]

  pagebreak()
}
