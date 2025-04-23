// 重庆大学本科生毕业论文模板
// 基于CQUThesis的LaTeX模板改编

// 中日韩文字加粗处理
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

// 必要的工具函数
#import "utilities/set-heading.typ": *
#import "utilities/set-figure.typ": *
#import "utilities/set-numbering.typ": *
#import "utilities/set-numbering.typ": *
#import "utilities/three-line-table.typ": *
#import "utilities/indent-funs.typ": *
#import "utilities/bib-cite.typ": *

// 变量
#import "variable/cqu-variable.typ": *

// 页眉
#let current-section = state("current-section", none)

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
  // 设置文档属性
  set document(
    title: title,
    author: author,
  )

  // 更新当前章节标题的函数
  let update-section(title) = {
    current-section.update(title)
  }

  // 为不同文档部分设置页眉和页脚
  show heading: it => {
    if it.level == 1 {
      update-section(it.body)
      // 这行代码很重要，请勿删除
      // 否则页眉将显示在下一页
      set page(header: "abc")
    }
    it
  }

  // 设置摘要和目录中的标题间距
  show heading: set block(below: 1em, above: 2em)

  // 定义页眉和页脚内容
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

  // 设置页面属性
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

  // 设置文本属性
  set text(
    size: 12pt,
    lang: "zh",
  )

  // 设置段落属性
  set par(
    leading: 0.8em,
    justify: true,
    first-line-indent: (amount: 2em, all: true),
  )

  // 导入页面组件
  import "pages/cover-zh.typ": chinese-cover
  import "pages/cover-en.typ": english-cover
  import "pages/abstract-zh.typ": chinese-abstract
  import "pages/abstract-en.typ": english-abstract
  import "pages/toc.typ": table-of-contents
  import "pages/appendix.typ": appendix-content
  import "pages/acknowledgement.typ": acknowledgement-content
  import "pages/declaration.typ": declaration-content

  // 中文封面页
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

  // 英文封面页
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

  // 为前置部分设置罗马数字页码
  set page(numbering: "I")
  counter(page).update(1)

  // 中文摘要
  chinese-abstract(
    abstract_zh: abstract_zh,
    keywords_zh: keywords_zh,
  )

  // 英文摘要
  english-abstract(
    abstract_en: abstract_en,
    keywords_en: keywords_en,
  )

  // 目录
  table-of-contents()

  // 为正文部分设置阿拉伯数字页码
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


  // 正文内容
  body

  // 参考文献
  if bibliography_file != none {
    import "pages/references.typ": references
    references(bibliography_file)
  }

  // 附录
  appendix-content

  // 致谢
  acknowledgement-content

  // 原创性声明
  declaration-content
}
