// 重庆大学论文致谢页

#import "../variable/cqu-variable.typ": *

#let acknowledgement-content = {
  // 致谢标题

  heading(
    outlined: true,
    numbering: none,
    text(weight: "bold", size: zihao("三号"))[致 谢]
  )

  // 致谢内容
  set text(
    size: zihao("小四"),
  )

  [致谢主要感谢导师和对论文工作有直接贡献和帮助的人士和单位。致谢言语应谦虚诚恳，实事求是。]

  pagebreak()
}
