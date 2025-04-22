// Numbering style settings for CQU thesis

#import "../variable/cqu-variable.typ": *

// Set numbering styles for lists
#let set-list-numbering(body) = {
  // Ordered list
  set enum(
    numbering: "1.",
    indent: 2em,
  )
  
  // Unordered list
  set list(
    indent: 2em,
    marker: "•",
  )
  body
}
