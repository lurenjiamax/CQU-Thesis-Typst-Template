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
    // margin: (
      // top: 5cm,
      // bottom: 5cm,
    //   left: 3cm,
    //   right: 3cm,
    // ),
    numbering: none,
  )

  // 设置英文文本属性
  set text(
    font: "Times New Roman",
    weight: "bold",
    lang: "en",
  )

  set par(
    spacing: 0.6em
  )

  align(center)[
    // 标题部分
    #text(size: zihao("三号"))[
      Undergraduate Thesis (Design) of Chongqing University
    ]
    #v(2em)

    #text(size: zihao("二号"))[
      #title_en
    ]
    #v(2em)

    // 学校标志
    #image("../assets/cqu-logo.png", width: 5cm)
    #v(2em)

    // 作者信息
    #text(size: zihao("三号"))[
      By
    ]

    #text(size: zihao("三号"))[
      #author_en
    ]

    #v(1em)

    #text(size: zihao("三号"))[
      Supervised by
    ]

    #text(size: zihao("三号"))[
      #supervisor_en
    ]

    #if assist_supervisor_en != none {
      text(size: zihao("三号"))[
        and

      ]

      text(size: zihao("三号"))[
        #assist_supervisor_en
      ]
    }

    #v(2em)

    // 院系和学校
    #text(size: zihao("小二"))[
      #major_en
    ]

    #text(size: zihao("小二"))[
      #department_en
    ]

    #text(weight: "bold", size: zihao("小二"))[
      Chongqing University
    ]

    #v(1em)

    // 日期
    #text(size: zihao("三号"))[
      #if date_en != none {
        date_en
      } else {
        format-english-date(date)
      }
    ]
  ]

  pagebreak()
}
