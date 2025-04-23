// 重庆大学论文中文封面页

#import "../variable/cqu-variable.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold

#let chinese-cover(
  title: "",
  author: "",
  student_id: "",
  supervisor: "",
  assist_supervisor: none,
  major: "",
  department: "",
  date: (2024, 6),
) = {
  // 设置封面页面属性
  set page(
    margin: (
      top: 5cm,
      bottom: 5cm,
      left: 3cm,
      right: 3cm,
    ),
    numbering: none,
  )
  set text(
    font: heiti,
    weight: "bold"
  )

  show: show-cn-fakebold

  // 标题部分
  align(center)[
    #text(size: zihao("小二"))[重庆大学本科学生毕业论文（设计）]
  ]

  v(5em)

  align(center)[
    #text(size: zihao("二号"))[#title]
  ]

  v(2em)

  // 学校标志
  align(center)[
    #image("../assets/cqu-logo.png", width: 5cm)
  ]

  v(2em)

  // 作者信息
  align(center)[
    #text(size: zihao("四号"))[
      #table(
        columns: 1,
        align: left,
        stroke: none,
        inset: 5pt,
        [学#h(2em)生：#author],
        [学#h(2em)号：#student_id],
        [指导教师：#supervisor],
        if assist_supervisor != none [助理指导教师：#assist_supervisor],
        [专#h(2em)业：#major],
      )
    ]
  ]

  v(2em)

  // 院系和日期
  align(center)[
    #text(weight: "bold", size: zihao("小二"))[重庆大学#department]
  ]

  v(1em)

  align(center)[
    #text(weight: "bold", size: 16pt)[#format-chinese-number-date(date)]
  ]

  pagebreak()
}
