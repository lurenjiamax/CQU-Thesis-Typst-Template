// 重庆大学论文参考文献页

#import "../variable/cqu-variable.typ": *
#import "@preview/cuti:0.3.0": show-cn-fakebold
// 替换法, 来自NJU
#import "../utilities/bilingual-bibliography.typ": *

#let references(bibliography_file) = {
  show: show-cn-fakebold
  show bibliography: set text(
    font: default-song,
    lang: "en",// 对于纯英文文献, 可以设置为en, 防止出现中英文混用的情况.
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

  set bibliography(
    style: "../bib/gb-t-7714-2015-numeric.csl",
    // style: "gb-7714-2005-numeric",
    title: none,
  )
  
  // 双语文献
  let bilingual-bibliography = bilingual-bibliography.with(
  bibliography: bibliography.with(bibliography_file), style: "../bib/gb-t-7714-2015-numeric.csl", title: none
  )
  bilingual-bibliography()

  // 如果不需要双语文献的话:
  // bibliography(bibliography_file)
  
  // pagebreak()
}