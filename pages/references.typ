// 重庆大学论文参考文献页

#import "../variable/cqu-variable.typ": *

#let references(bibliography_file) = {
  // 设置页眉
  set page(
    header: [
      #grid(
        columns: (1fr, 1fr),
        align(left)[#text(font: songti, size: zihao("小五"))[重庆大学本科学生毕业论文（设计）]],
        align(right)[#text(font: songti, size: zihao("小五"))[参考文献]],
      )
      #line(length: 100%, stroke: 0.5pt)
    ],
    // 页脚: align(center)[#counter(page).display()],
  )

  // 参考文献标题
  heading(
    outlined: true,
    numbering: none,
    text(font: heiti, size: zihao("三号"))[参考文献]
  )

  // 设置参考文献样式
  set bibliography(
    style: "../bib/gb-t-7714-2015-numeric.csl",
    title: none,
  )

  // 显示参考文献
  bibliography(bibliography_file)

  pagebreak()
}