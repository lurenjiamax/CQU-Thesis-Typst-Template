// Heading style settings for CQU thesis

#import "../variable/cqu-variable.typ": *

// Set heading styles according to CQU requirements
#let set-heading-style(body) = {
  set heading(numbering: "1.1.1.1.1")

  // Level 1 heading: Heiti, size 3, centered
  show heading.where(level: 1): set text(font: heiti, size: zihao("三号"))
  show heading.where(level: 1): set align(center)
  show heading.where(level: 1): set block(outset: 1em, below: 1em, above: 2em)

  // Level 2 heading (Subsection): Black, size -3
  show heading.where(level: 2): set text(font: heiti, size: zihao("小三"))
  show heading.where(level: 2): set block(outset: 0.5em, below: 0.8em, above: 2em)

  // Level 3 heading (Subsubsection): Black, size 4
  show heading.where(level: 3): set text(font: heiti, size: zihao("四号"))
  show heading.where(level: 3): set block(outset: 0.5em, below: 0.6em, above: 0.6em)

  body
}
