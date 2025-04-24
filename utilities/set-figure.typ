// 重庆大学论文图表样式设置
#import "@preview/metalogo:1.0.2": TeX, LaTeX
#import "../variable/cqu-variable.typ": *

// 图表样式
#let set-figure-style(body) = {
  // 图片标题样式
  set text(
    font: (
      (name: songti, covers: "latin-in-cjk"),
      (name: timesromance, covers: regex("[A-Za-z]")),
    ),
    size: zihao("五号"),
  )
  set figure(supplement: auto, numbering: "1.1.1.1.1.1")
  set figure(numbering: num =>
    str(counter(heading).get().at(0)) + "." + str(num)
  )
  // 图片的上下间隔
  show figure: set block(
    above: 2em,
    below: 2em
  )
  show figure: fig => {
    set align(center)
    set grid(inset: 0.6em)
    grid(
      rows: (auto, auto),
      fig.body,
      fig.caption,
    )
  }

  // 表格标题样式
  // 你需要手动构建三线表
  show figure.where(kind: table): tab => {
    set align(center)
    set grid(inset: 0.6em)
    set table(stroke: none, inset: 0.4em)
    grid(
      rows: (auto, auto),
      tab.caption,
      tab.body,
    )
  }
  body
}

// 公式样式
#let set-equation-style(body) = {
  set math.equation(numbering: num =>
    "(" + (str(counter(heading).get().at(0)) + "." + str(num)) + ")"
  )
  body
}
