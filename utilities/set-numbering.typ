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

  // 脚注
  set footnote(
    numbering: "①",
  )
  show footnote.entry: it => {
    set text(font: default-song, size: zihao("小五"))
    let number = numbering(it.note.numbering, ..counter(footnote).at(it.note.location()))
    let body = it.note.body

    [#link(it.note.location())[#number] #body]
    }
  body
}
