// Formula style settings for CQU thesis

#import "../variable/cqu-variable.typ": *

#let set-formula-style(body) = {
  set math.equation(numbering: "1.1.1.1.1")
  body
} 