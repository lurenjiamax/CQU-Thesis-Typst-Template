// 重庆大学论文参考文献页

#import "../variable/cqu-variable.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold

#let references(bibliography_file) = {
  show: show-cn-fakebold
  show bibliography: set text(
    font: timesromance,
    lang: "en",
    size: zihao("五号"),
  )
  show bibliography: set par(
    leading: line-spacing,
    spacing: paragraph-spacing,
  )
  
  heading(
    outlined: true,
    numbering: none,
    [参考文献]
  )
  // 设置参考文献样式
  set text(lang: "en") // 对于英文文献, 防止出现中英文混用的情况.
  set bibliography(
    style: "../bib/gb-t-7714-2015-numeric.csl",
    // style: "gb-7714-2005-numeric",
    title: none,
  )

  bibliography(bibliography_file)

  // pagebreak()
}