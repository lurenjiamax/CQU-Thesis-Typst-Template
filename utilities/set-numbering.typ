// 重庆大学论文编号样式设置

#import "../variable/cqu-variable.typ": *

// 设置列表的编号样式
#let set-list-numbering(body) = {
  // 有序列表
  set enum(
    numbering: "1.",
    indent: 2em,
  )

  // 无序列表
  set list(
    indent: 2em,
    marker: "•",
  )
  body
}
