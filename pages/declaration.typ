// 重庆大学论文原创性声明页

#import "../variable/cqu-variable.typ": *

#let declaration-content = {
  // 声明页无页眉页脚
  set page(
    header: none,
    footer: none,
    numbering: none,
  )

  // 声明标题
  align(center)[
    #text(weight: "bold", size: zihao("三号"))[
      原创性声明
    ]
  ]

  v(1em)

  // 声明内容
  set text(
    size: zihao("小四"),
  )

  [郑重声明：所呈交的论文（设计）#underline[《  》]，是本人在导师的指导下，独立进行研究取得的成果。除论文（设计）中已经标注引用的内容外，本论文（设计）不包含其他人或集体已经发表或撰写过的作品成果。对本文的研究做出贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律后果，并承诺因本声明而产生的法律结果由本人承担。]

  v(2em)

  align(left)[
    #table(
      columns: 1,
      align: left,
      stroke: none,
      inset: 5pt,
      [论文（设计）作者签名: #underline[#h(6em)]],
      [日期：#underline[#h(6em)]],
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

  v(2em)

  [本论文（设计）属于：\ ]

  [保#h(1em)密 □#h(1em)在#underline[#h(2em)]年解密后适用本授权书\ ]

  [不保密 □]

  v(2em)

  align(left)[
    #table(
      columns: 2,
      align: left,
      stroke: none,
      inset: 5pt,
      [论文（设计）作者签名：#underline[#h(6em)]], [指导教师签名：#underline[#h(6em)]],
      [日期：#underline[#h(6em)]], [日期：#underline[#h(6em)]],
    )
  ]
}
