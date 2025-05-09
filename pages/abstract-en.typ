// 重庆大学论文英文摘要页

#import "../variable/cqu-variable.typ": *

#let english-abstract(
  abstract_en: [],
  keywords_en: (),
) = {
  // 设置页面属性
  set text(
    font: timesromance,
    lang: "en"
  )
  // 摘要标题
  align(center, {
    show heading: set text(weight: "bold", size: zihao("三号"))
    heading(
      outlined: true,
      numbering: none,
      [ABSTRACT]
    )
  })

  set par(
    leading: 1em,
    spacing: 1em
  )

  abstract_en

  v(1em)

  // 关键词
  [#text(font: timesromance, weight: "bold", size: zihao("小四"))[Key words]: #keywords_en.join(";")]

  pagebreak()
}
