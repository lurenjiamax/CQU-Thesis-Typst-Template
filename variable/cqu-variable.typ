// CQU Thesis Variables

// Font definitions
#let songti = "simsun"
#let heiti = "simhei"
#let times = "Times New Roman"

// Font sizes (following Chinese typography conventions)
#let font-sizes = (
  "初号": 42pt,
  "小初": 36pt,
  "一号": 26pt,
  "小一": 24pt,
  "二号": 22pt,
  "小二": 18pt,
  "三号": 16pt,
  "小三": 15pt,
  "四号": 14pt,
  "小四": 12pt,
  "五号": 10.5pt,
  "小五": 9pt,
  "六号": 7.5pt,
  "小六": 6.5pt,
  "七号": 5.5pt,
  "八号": 5pt
)

// Function to convert Chinese font size name to pt
#let zihao(size) = {
  let sizes = (
    "初号": 42pt,
    "小初": 36pt,
    "一号": 26pt,
    "小一": 24pt,
    "二号": 22pt,
    "小二": 18pt,
    "三号": 16pt,
    "小三": 15pt,
    "四号": 14pt,
    "中四": 13pt,
    "小四": 12pt,
    "五号": 10.5pt,
    "小五": 9pt,
    "六号": 7.5pt,
    "小六": 6.5pt,
    "七号": 5.5pt,
    "小七": 5pt,
  )

  if type(size) == str {
    return sizes.at(size, default: 12pt)
  } else if type(size) == int or type(size) == float {
    return size * 1pt
  } else {
    return 12pt
  }
}

// Section numbering format
#let section-numbering = "1"
#let subsection-numbering = "1.1"
#let subsubsection-numbering = "1.1.1"

// Figure and table numbering format
#let figure-numbering = "1-1"
#let table-numbering = "1-1"
#let equation-numbering = "(1-1)"

// Default margins
#let default-margins = (
  top: 2.5cm,
  bottom: 2.5cm,
  left: 3cm,
  right: 3cm,
)

// Line spacing
#let line-spacing = 1.25em

// Paragraph indentation
#let paragraph-indent = 2em

// Header and footer settings
#let header-font-size = 10.5pt
#let footer-font-size = 10.5pt
#let header-rule-thickness = 0.5pt

// Function to format Chinese date
#let format-chinese-date(date) = {
  let year = date.at(0)
  let month = date.at(1)

  let chinese-year = "二〇"
  for digit in str(year) {
    chinese-year += (
      if digit == "0" { "〇" }
      else if digit == "1" { "一" }
      else if digit == "2" { "二" }
      else if digit == "3" { "三" }
      else if digit == "4" { "四" }
      else if digit == "5" { "五" }
      else if digit == "6" { "六" }
      else if digit == "7" { "七" }
      else if digit == "8" { "八" }
      else if digit == "9" { "九" }
      else { digit }
    )
  }

  let chinese-month = (
    if month == 1 { "一" }
    else if month == 2 { "二" }
    else if month == 3 { "三" }
    else if month == 4 { "四" }
    else if month == 5 { "五" }
    else if month == 6 { "六" }
    else if month == 7 { "七" }
    else if month == 8 { "八" }
    else if month == 9 { "九" }
    else if month == 10 { "十" }
    else if month == 11 { "十一" }
    else if month == 12 { "十二" }
    else { "六" }
  )

  return chinese-year + "年" + chinese-month + "月"
}

// Function to format English date
#let format-english-date(date) = {
  let year = date.at(0)
  let month = date.at(1)

  let english-month = (
    if month == 1 { "January" }
    else if month == 2 { "February" }
    else if month == 3 { "March" }
    else if month == 4 { "April" }
    else if month == 5 { "May" }
    else if month == 6 { "June" }
    else if month == 7 { "July" }
    else if month == 8 { "August" }
    else if month == 9 { "September" }
    else if month == 10 { "October" }
    else if month == 11 { "November" }
    else if month == 12 { "December" }
    else { "June" }
  )

  return english-month + ",  " + str(year)
}

#let format-chinese-number-date(date) = {
  let year = str(date.at(0))
  let month = str(date.at(1))

  return year + "年" + month + "月"
}

#let default_header(title) = {
  let left = "重庆大学本科学生毕业论文（设计）"
  let right = title
  return grid(
    columns: (1fr, 1fr),
    align(left),
    align(right),
  )
}
