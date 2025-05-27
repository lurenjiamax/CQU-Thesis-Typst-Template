// 重庆大学论文中文封面页

#import "../variable/cqu-variable.typ": *

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
    numbering: none,
  )
  show text: set text(
    font: default-hei,
  )

  v(12pt) // 顶部12pt

  // 标题部分
  align(top + center)[
    #text(size: zihao("小二"))[重庆大学本科学生毕业论文（设计）]
  ]

  v(6em)

  align(top + center)[
    #set par(leading: 0.6em)
    #text(size: zihao("二号"))[#title]
  ]

  v(4em)

  place(center)[
    // x 99.21pt
    // y 412.43pt
    #image("../assets/cqu-logo.jpg", width: 4.26cm)
  ]

  v(4em)

  // 作者信息
  let table_rows = (
    [学#h(2em)生：#author],
    [学#h(2em)号：#student_id],
    [指导教师：#supervisor],
    if assist_supervisor != none [助理指导教师：#assist_supervisor] else [],
    [专#h(2em)业：#major],
  )

  align(bottom + center)[
    #text(size: zihao("三号"))[
      #table(
        columns: 1,
        align: left,
        row-gutter: 21pt,
        stroke: none,
        inset: 0pt,
        ..table_rows.filter(x => x != [])
      )
    ]
  ]
  let addition_spacing = if assist_supervisor != none { 0em } else { 5em }

  v(4em + addition_spacing)

  // 院系和日期
  align(bottom + center)[
      #text(size: zihao("小二"))[重庆大学#department]
      #v(12pt + 1em)
      #text(size: 16pt)[#format-chinese-number-date(date)]
      #v(20pt + 1em)
  ]

  pagebreak()
}
