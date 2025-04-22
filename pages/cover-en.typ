// English cover page for CQU thesis

#import "../variable/cqu-variable.typ": *

#let english-cover(
  title_en: "",
  author_en: "",
  supervisor_en: "",
  assist_supervisor_en: none,
  major_en: "",
  department_en: "",
  date: (2024, 6),
  date_en: none,
) = {
  // Set page properties for cover
  set page(
    // margin: (
      // top: 5cm,
      // bottom: 5cm,
    //   left: 3cm,
    //   right: 3cm,
    // ),
    numbering: none,
  )

  // No header/footer on cover page

  // Set text properties for English
  set text(
    font: "Times New Roman",
    weight: "bold",
    lang: "en",
  )

  set par(
    spacing: 0.6em
  )

  align(center)[
    // #set par(
    //   spacing: -0.3em
    // )
    // Title section
    #text(size: zihao("三号"))[
      Undergraduate Thesis (Design) of Chongqing University
    ]
    #v(2em)

    #text(size: zihao("二号"))[
      #title_en
    ]
    #v(2em)

    // University logo
    // Placeholder for logo - replace with actual logo
    #image("../assets/cqu-logo.png", width: 5cm)
    #v(2em)

    // Author information
    #text(size: zihao("三号"))[
      By
    ] 

    #text(size: zihao("三号"))[
      #author_en
    ]

    #v(1em)

    #text(size: zihao("三号"))[
      Supervised by
    ]

    #text(size: zihao("三号"))[
      #supervisor_en
    ]

    #if assist_supervisor_en != none {
      text(size: zihao("三号"))[
        and
        
      ]
      
      text(size: zihao("三号"))[
        #assist_supervisor_en
      ]
    }

    #v(2em)

    // Department and university
    #text(size: zihao("小二"))[
      #major_en
    ] 

    #text(size: zihao("小二"))[
      #department_en
    ] 

    #text(weight: "bold", size: zihao("小二"))[
      Chongqing University
    ]

    #v(1em)

    // Date
    #text(size: zihao("三号"))[
      #if date_en != none {
        date_en
      } else {
        format-english-date(date)
      }
    ]
  ]

  pagebreak()
}

// The English cover will be inserted in the main template
