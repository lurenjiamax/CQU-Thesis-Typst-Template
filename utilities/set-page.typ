
#import "../variable/cqu-variable.typ": *
#import "@preview/hydra:0.6.1": hydra

#let set-page-style(double, gutter, body) = {

  let gutter-left = context {
      if gutter and calc.even(here().page()) {
         return page-gutter } 
          else { return 0pt }
  }

  let gutter-right = context {
      if not double {
        0pt
      }
      (if gutter and calc.odd(here().page()) { page-gutter } else { 0pt })
  }

  let header-content = context {
    let numbering = here().page-numbering()
    if numbering == none {return} // 如果没有页码编号，则不显示页眉
    // 双面打印
    // 左页重大字样居中(偶数页), 右页居中章节名(奇数页)
    if double {
      if calc.even(here().page()) {
        show grid: set block(spacing: header-spacing)
        show grid: set text(
          font: default-song,
          size: header-font-size,
        )
        grid(
          columns: 1fr,
          align(center)[重庆大学本科学生毕业论文（设计）],
        )
        line(length: 100%, stroke: header-rule-thickness)
      } else {
        show grid: set block(spacing: header-spacing)
        show grid: set text(
          font: default-song,
          size: header-font-size,
        )
        grid(
          columns: 1fr,
          align(center)[#hydra(1, skip-starting: false)]
        )
        line(length: 100%, stroke: header-rule-thickness)
      }
      return
    } else {
    // 单面打印
      show grid: set block(spacing: header-spacing)
      show grid: set text(
        font: default-song,
        size: header-font-size,
      )
      grid(
        columns: (0.5fr, 0.5fr),
        align(left)[重庆大学本科学生毕业论文（设计）], align(right)[#hydra(1, skip-starting: false)],
      )
      line(length: 100%, stroke: header-rule-thickness)
    }
  }

  let footer-content = context {
    let numbering = here().page-numbering()
    if numbering != none {
      align(center)[#text(size: 10.5pt, counter(page).display())]
    }
  }

  // 设置页面属性
  set page(
    paper: "a4",
    margin: (
      top: default-margins.top,
      bottom: default-margins.bottom,
      left: default-margins.left + (if gutter { page-gutter } else {0pt}),
      right: default-margins.right,
    ),
    header-ascent: 100% - 1.6cm - 0.4cm, //top: 85.04pt 初始边距, word中设置为1.6cm的上升, 但实际使用时需要额外减去0.4cm
    footer-descent: 100% - 1.5cm - 0.4cm,
    header: header-content,
    footer: footer-content,
    numbering: "1",
  )
  

  body

}
