// References page for CQU thesis

#import "../variable/cqu-variable.typ": *

#let references(bibliography_file) = {
  // Set page header
  set page(
    header: [
      #grid(
        columns: (1fr, 1fr),
        align(left)[#text(font: songti, size: zihao("小五"))[重庆大学本科学生毕业论文（设计）]],
        align(right)[#text(font: songti, size: zihao("小五"))[参考文献]],
      )
      #line(length: 100%, stroke: 0.5pt)
    ],
    // footer: align(center)[#counter(page).display()],
  )
  
  // References title
  heading(
    outlined: true,
    numbering: none,
    text(font: heiti, size: zihao("三号"))[参考文献]
  )
  
  // Set bibliography style
  set bibliography(
    style: "../bib/gb-t-7714-2015-numeric.csl",
    title: none,
  )
  
  // Display bibliography
  bibliography(bibliography_file)
  
  pagebreak()
}