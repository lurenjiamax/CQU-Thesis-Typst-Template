// Figure and table style settings for CQU thesis
#import "@preview/metalogo:1.0.2": TeX, LaTeX
#import "../variable/cqu-variable.typ": *

// Set figure styles according to CQU requirements
#let set-figure-style(body) = {
  // Figure caption style
  set text(
    font: (
      (name: songti, covers: "latin-in-cjk"),
      (name: times, covers: regex("[A-Za-z]")),
    ),
    size: zihao("五号"),
  )
  set figure(supplement: auto, numbering: "1.1.1.1.1.1")
  set figure(numbering: num => 
    str(counter(heading).get().at(0)) + "." + str(num)
  ) 
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

  // Table caption style
  // You will need to mannually construct a three-line-table
  set table(stroke: none)
  show figure.where(kind: table): tab => {
    set align(center)
    set grid(inset: 0.6em)
    grid(
      rows: (auto, auto),
      tab.caption,
      tab.body,
    )
  }
  body
}

// Set equation styles according to CQU requirements
#let set-equation-style(body) = {
  set math.equation(numbering: num => 
    "(" + (str(counter(heading).get().at(0)) + "." + str(num)) + ")"
  )
  body
}
