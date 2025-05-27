// 重庆大学论文英文封面页

#import "../variable/cqu-variable.typ": *

#let english-cover(
  title_en: "",
  author_en: "",
  supervisor_en: "",
  assist_supervisor_en: none,
  major_en: "",
  department_en: "",
  date: (2024, 6),
  date_en: none,
) = {
  // 设置封面页面属性
  set page(
    numbering: none,
  )

  // 设置英文文本属性
  show: set text(
    font: timesromance,
    weight: "bold",
    lang: "en",
  )
  set par(
    leading: 0.6em,
    spacing: 1em,
  )
  align(top + center)[
    // 标题部分
    #v(12pt)
    #text(size: zihao("三号"))[
      Undergraduate Thesis (Design) of Chongqing University
    ]
    #v(4em)

    #text(size: zihao("二号"))[
      #title_en
    ]
    #v(2em)

    // 学校标志
    #image("../assets/cqu-logo.jpg", width: 4.26cm)

  ]

  align(bottom + center)[
    // 作者信息
    #text(size: zihao("三号"))[
      By \
      
      #author_en
    ]

    #v(1em)

    #text(size: zihao("三号"))[
      Supervised by

      #supervisor_en
    ]

    // #let assist_supervisor_en = "abc"
    #if assist_supervisor_en != none {
      text(size: zihao("三号"))[
        and

        #assist_supervisor_en
      ]
      v(1.5em)
    } else {
      v(6em)
    }
  ]

  align(bottom + center)[
    // 院系和学校
    #text(size: zihao("小二"))[
      #major_en 

      #department_en

      Chongqing University
    ]

    // 日期
    #text(size: zihao("三号"))[
      #if date_en != none {
        date_en
      } else {
        format-english-date(date)
      }
    ]
    #v(20pt + 1em)
  ]

  pagebreak()
}
