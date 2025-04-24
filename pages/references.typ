// 重庆大学论文参考文献页

#import "../variable/cqu-variable.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold

#let references(bibliography_file) = {
  show: show-cn-fakebold
  heading(
    outlined: true,
    numbering: none,
    [参考文献]
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