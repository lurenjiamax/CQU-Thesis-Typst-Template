// CQU Undergraduate Thesis Template
// Based on the LaTeX template from CQUThesis

// Bold for CJK
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

// Import necessary utilities
#import "utilities/set-heading.typ": *
#import "utilities/set-figure.typ": *
#import "utilities/set-numbering.typ": *
#import "utilities/set-numbering.typ": *
#import "utilities/three-line-table.typ": *
#import "utilities/indent-funs.typ": *
#import "utilities/bib-cite.typ": *

// Import variables
#import "variable/cqu-variable.typ": *

// Define state variables for header and footer
#let current-section = state("current-section", none)

// Main template function
#let project(
  title: "",
  title_en: "",
  author: "",
  author_en: "",
  student_id: "",
  supervisor: "",
  supervisor_en: "",
  assist_supervisor: none,
  assist_supervisor_en: none,
  major: "",
  major_en: "",
  department: "",
  department_en: "",
  date: (2024, 6),
  date_en: none,
  abstract_zh: [],
  abstract_en: [],
  keywords_zh: (),
  keywords_en: (),
  bibliography_file: none,
  body,
) = {
  // Set document properties
  set document(
    title: title,
    author: author,
  )

  // Function to update current section title
  let update-section(title) = {
    current-section.update(title)
  }

  // Set up header and footer for different document sections
  show heading: it => {
    if it.level == 1 {
      update-section(it.body)
      // It just works, don't remove this line.
      // Otherwise the header will be displayed in the next page
      set page(header: "abc")
    } 
    it
  }

  // Set heading spacing in abstract and toc
  show heading: set block(below: 1em, above: 2em)

  // Define header and footer content
  let header-content = context {
    let section = current-section.get()
    if section != none {
      grid(
        columns: (1fr, 1fr),
        align(left)[#text(size: zihao("小五"))[重庆大学本科学生毕业论文（设计）]],
        align(right)[#text(size: zihao("小五"))[#section]],
      )
      v(-0.9em)
      line(length: 100%, stroke: 1pt)
      
    }
  }

  let footer-content = context {
    let section = current-section.get()
    if section != none {
      align(center)[#counter(page).display()]
    }
  }

  // Set page properties
  set page(
    paper: "a4",
    margin: (
      top: 5cm,
      bottom: 5cm,
      left: 3cm,
      right: 3cm,
    ),
    header-ascent: 45%,
    footer-descent: 25%,
    header: header-content,
    footer: footer-content,
    numbering: "1",
  )

  // Set text properties
  set text(
    size: 12pt,
    lang: "zh",
  )

  // Set paragraph properties
  set par(
    leading: 0.8em,
    justify: true,
    first-line-indent: (amount: 2em, all: true),
  )

  // Import page components
  import "pages/cover-zh.typ": chinese-cover
  import "pages/cover-en.typ": english-cover
  import "pages/abstract-zh.typ": chinese-abstract
  import "pages/abstract-en.typ": english-abstract
  import "pages/toc.typ": table-of-contents
  import "pages/appendix.typ": appendix-content
  import "pages/acknowledgement.typ": acknowledgement-content
  import "pages/declaration.typ": declaration-content

  // Cover page (Chinese)
  chinese-cover(
    title: title,
    author: author,
    student_id: student_id,
    supervisor: supervisor,
    assist_supervisor: assist_supervisor,
    major: major,
    department: department,
    date: date,
  )

  // Cover page (English)
  english-cover(
    title_en: title_en,
    author_en: author_en,
    supervisor_en: supervisor_en,
    assist_supervisor_en: assist_supervisor_en,
    major_en: major_en,
    department_en: department_en,
    date: date,
    date_en: date_en,
  )

  // Set page numbering to Roman for front matter
  set page(numbering: "I")
  counter(page).update(1)

  // Abstract (Chinese)
  chinese-abstract(
    abstract_zh: abstract_zh,
    keywords_zh: keywords_zh,
  )

  // Abstract (English)
  english-abstract(
    abstract_en: abstract_en,
    keywords_en: keywords_en,
  )

  // Table of contents
  table-of-contents()

  // Set page numbering to Arabic for main content
  set page(numbering: "1")
  counter(page).update(1)

  set text(
    font: (
      (name: songti, covers: "latin-in-cjk"),
      (name: times, covers: regex("[A-Za-z0-9]"))
    )
  )
  show: set-heading-style
  show: set-figure-style
  show: set-equation-style
  show: set-list-numbering
  show: set-equation-style
  set par(leading: 0.6em)

  
  // Main content
  body

  // References
  if bibliography_file != none {
    import "pages/references.typ": references
    references(bibliography_file)
  }

  // Appendix
  appendix-content

  // Acknowledgements
  acknowledgement-content

  // Declaration of originality
  declaration-content
}
