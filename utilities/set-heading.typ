// Heading style settings for CQU thesis

#import "../variable/cqu-variable.typ": *

// Set heading styles according to CQU requirements
#let set-heading-style(body) = {
  set heading(numbering: "1.1.1.1.1")

  // Level 1 heading: Heiti, size 3, centered
  show heading.where(level: 1): heading => {
    set text(font: heiti, size: zihao("三号"), weight: "bold")
    set align(center)
    set block(outset: 1em, below: 1em, above: 2em)
    heading
  }

  // Level 2 heading (Subsection): Black, size -3
  show heading.where(level: 2): heading => {
    set text(font: heiti, size: zihao("小三"), weight: "bold")
    set block(outset: 0.5em, below: 0.8em, above: 2em)
    heading
  }

  // Level 3 heading (Subsubsection): Black, size 4
  show heading.where(level: 3): heading => {
    set text(font: heiti, size: zihao("四号"), weight: "bold")
    set block(outset: 0.5em, below: 0.6em, above: 0em)
    heading
  }
  body
}
