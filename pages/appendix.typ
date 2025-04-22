// Appendix page for CQU thesis

#import "../variable/cqu-variable.typ": *

#let appendix-content = {
  // Appendix title
  heading(
    outlined: true,
    numbering: none,
    text(weight: "bold", size: zihao("三号"))[附录A：XX公式的推导]
  )

  // Appendix content
  set text(
    size: zihao("五号"),
  )

  [XX公式的推导过程是：]

  pagebreak()
}
