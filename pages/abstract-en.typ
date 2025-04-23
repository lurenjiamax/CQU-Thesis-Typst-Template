// 重庆大学论文英文摘要页

#import "../variable/cqu-variable.typ": *

#let english-abstract(
  abstract_en: [],
  keywords_en: (),
) = {
  // 设置页面属性
  set text(
    font: "Times New Roman"
  )
  // 摘要标题
  align(center, {
    show heading: set text(size: zihao("三号"), weight: "bold")
    heading(
      outlined: true,
      numbering: none,
      [ABSTRACT]
    )
  })

  // 摘要内容
  set text(
    lang: "en",
  )

  abstract_en

  v(1em)

  // 关键词
  [#text(weight: "bold", size: zihao("小四"))[Key words]: #keywords_en.join(";")]

  pagebreak()
}
