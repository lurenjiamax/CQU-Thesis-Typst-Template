// 重庆大学论文原创性声明页

#import "../variable/cqu-variable.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold

#let checked_squre = sym.ballot.check.heavy
#let uncheck_squre = sym.square.stroked

// 如果有电子版的签名, 则在下面的图片路径中替换为电子版签名的图片
// #let stu_sign = image("../assets/StuSign.png",height: 4%)
// #let tea_sign = image("../assets/TeaQian.png",height: 5%)

// 否则, 可以设为none
#let stu_sign = none
#let tea_sign = none

#let underline_image(image, size) = {
  box[
    #image
    #v(-0.7em)
    #line(length: size, stroke: 0.5pt)
  ]
}

#let udate(date, extent: 0pt) = {
  let year = date.at(0)
  let month = date.at(1)
  let day = date.at(2)
  box[#underline(offset: 3pt, [#year\年#month\月#day\日])#empty_underline(extent)]
}

#let declaration-content(title, declaration_date) = {
  show: show-cn-fakebold
  show: set page(
    header: none,
    footer: none,
    margin: (
      top: 4cm,
      bottom: 4cm,
    ),
  )
  show heading: set text(size: 0.00000001pt)
  heading(numbering: none)[
    原创性声明和使用授权书
  ]

  align(center)[
    #text(weight: "bold", size: zihao("三号"))[
      原创性声明
    ]
  ]

  v(1em)

  // 声明内容
  set text(size: zihao("小四"))

  [郑重声明：所呈交的论文（设计）#underline[《 #title 》]，是本人在导师的指导下，独立进行研究取得的成果。除论文（设计）中已经标注引用的内容外，本论文（设计）不包含其他人或集体已经发表或撰写过的作品成果。对本文的研究做出贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律后果，并承诺因本声明而产生的法律结果由本人承担。]

  // v(1em)

  align(left)[
    #table(
      stroke: 0pt + black,
      columns: 2,
      rows: 2,
      // align: left,
      inset: (x: 0pt),
      [#h(2em)#align(left + bottom)[论文（设计）作者签名:]],
      align(right + bottom)[#h(0.5em)#underline_image(stu_sign, 50pt)],

      [#h(2em)日期：#udate(declaration_date)], []
    )
  ]

  v(2em)

  // 授权标题
  align(center)[
    #text(weight: "bold", size: zihao("三号"))[
      使用授权书
    ]
  ]

  v(1em)

  // 授权内容
  [本论文（设计）作者完全了解学校有关保留、使用论文（设计）的规定，同意学校保留并向国家有关部门或机构送交论文（设计）复印件和电子版，允许论文（设计）被查阅和借阅。本人授权重庆大学将本论文（设计）的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制方式保存和汇编本论文（设计）。]

  v(1em)

  [#h(-2em)本论文（设计）属于：

    保#h(1em)密 □#h(1em)在#empty_underline(2em)年解密后适用本授权书

    不保密#h(0.6em)#checked_squre]


  align(left)[
    #table(
      columns: (auto, auto, auto, auto),
      align: left,
      stroke: 0pt,
      inset: (x: 0pt),
      [#h(2em)#align(left + bottom)[论文（设计）作者签名：#underline_image(stu_sign, 50pt)]],
      [#h(4em)],
      [#align(left + bottom)[指导教师签名：#underline_image(tea_sign, 50pt)]],
      [],

      [#h(2em)日期：#underline(offset: 3pt, [#udate(declaration_date)])],
      [],
      [日期：#underline(offset: 3pt, [#udate(declaration_date)])],
      [],
    )
    #table(
      columns: (auto, 1fr, auto, 1fr),
    )
  ]
}
