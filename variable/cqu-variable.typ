// 重庆大学论文变量, 如有必要可以到`cqu-template.typ`中修改.
// 按照2023年重庆大学本科生毕业论文（设计）格式要求所配置
// 字体定义
#let songti = "simsun"
#let heiti = "SimHei"
#let timesromance = "Times New Roman"

// 默认情况下, 对于 '.' 和 空格 和 字母 和 数字 均使用times new roman
#let default-song = (
  (name: timesromance, covers: regex("[A-Za-z0-9\.\s]")),
  (name: songti, covers: "latin-in-cjk"),
)

#let default-song-with-punc = (
  (name: timesromance, covers: regex("[A-Za-z0-9,\.\+\-\(\)\[\]\/\?:]")),
  (name: songti, covers: "latin-in-cjk"),
)

#let default-hei = (
  (name: timesromance, covers: regex("[A-Za-z0-9\.\s]")),
  (name: heiti, covers: "latin-in-cjk"),
)

#let default-yahei= (
  (name: timesromance, covers: regex("[A-Za-z0-9\.\s]")),
  (name: "Consolas-with-Yahei", covers: "latin-in-cjk"),
)
// 字号大小, 磅和pt是一样的
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

// 默认页边距
// >=30页需双面打印
#let page-gutter = 10mm // 装订线

#let default-margins = (
  top: 30mm,
  bottom: 25mm,
  left: 25mm, // 注意在template 中有额外的加值
  right: 25mm,
)


// 行间距, 基线之间的距离.
// 而Typst的间距指的是上行下基线与下行上基线之间的距离
// 所以我们要减去1em的字长
// 或可设为12.71pt
#let line-spacing = 20pt - 1em + 2pt
// 段间距
#let paragraph-spacing = line-spacing

// 段落首行缩进
#let paragraph-indent = 2em

// 页眉和页脚设置
#let header-font-size = 9pt
#let footer-font-size = 10.5pt 
#let header-spacing = 0.4em  // 文字与下划线间的间距
#let header-rule-thickness = 0.5pt // 下划线粗细

// 格式化中文日期的函数
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

// 格式化英文日期的函数
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

#let empty_underline(width) = {
  box(width: width, stroke: (bottom: 0.5pt), none)
} 
