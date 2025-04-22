// Acknowledgement page for CQU thesis

#import "../variable/cqu-variable.typ": *

#let acknowledgement-content = {
  // Acknowledgement title
  heading(
    outlined: true,
    numbering: none,
    text(weight: "bold", size: zihao("三号"))[致 谢]
  )

  // Acknowledgement content
  set text(
    size: zihao("小四"),
  )

  [致谢主要感谢导师和对论文工作有直接贡献和帮助的人士和单位。致谢言语应谦虚诚恳，实事求是。]

  pagebreak()
}
