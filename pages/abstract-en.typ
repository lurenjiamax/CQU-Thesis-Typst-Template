// 重庆大学论文英文摘要页

#import "../variable/cqu-variable.typ": *

#let english-abstract(
  abstract_en: [],
  keywords_en: (),
) = {
  set text(
    font: timesromance,
    lang: "en",
    size: zihao("小四"),
  )
  set par(
    leading: line-spacing+0.2em,
    spacing: paragraph-spacing
  )

  //v(2em) //不要这样设置, 你应该到utilies/set-heading中设置block的inset大小.
  // 或者使用show heading: set block(inset: 1em) 规则, 否则页眉会出问题.
  // 摘要标题
  align(center)[
    #heading(
      outlined: true,
      numbering: none,
      [*ABSTRACT*]
    )
  ]

  abstract_en

  v(2em)

  // 关键词
  [#parbreak()#h(-2em)#text(font: timesromance, weight: "bold", size: zihao("小四"))[Key words]: #keywords_en.join(";")]

  pagebreak()
}
