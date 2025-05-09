// 重庆大学本科生毕业论文模板
// 基于CQUThesis的LaTeX模板改编

// 中日韩文字加粗处理
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold
#import "@preview/hydra:0.6.1": hydra
// 必要的工具函数
#import "utilities/set-heading.typ": *
#import "utilities/set-figure.typ": *
#import "utilities/set-numbering.typ": *
#import "utilities/set-numbering.typ": *
#import "utilities/three-line-table.typ": *

// 变量
#import "variable/cqu-variable.typ": *

// 页眉
#let current-section = state("current-section", (0, none))

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
  // 设置文本属性
  // 英文Times New Roman; 中文宋体
  set text(
    font: default-song,
    size: zihao("小四"),
    lang: "zh",
  )

  // 为不同文档部分设置页眉和页脚
  show heading: it => {
    if it.level == 1 {
      if it.numbering != none {
        let n = counter(heading).display()
        current-section.update((n,it.body))
      } else {
        current-section.update((none,it.body))
      }
    }
    it
  }

  // 定义页眉和页脚内容
  let header-content = context {
    let section = current-section.get()
    let number = section.at(0)
    let title = section.at(1)
    if section != none and title != none{
      show grid: set block(spacing: header-spacing)
      show grid: set text(
        font: default-song,
        size: header-font-size
      )
      grid(
        columns: (0.5fr, 0.5fr),
        align(left)[重庆大学本科学生毕业论文（设计）],
        align(right)[#hydra(1,skip-starting:false)]
      )
      line(length: 100%, stroke: header-rule-thickness)
    }
  }

  let footer-content = context {
    let section = current-section.get()
    show text: set text(
      font: default-song,
      size: footer-font-size
    )
    if section.at(1) != none {
      align(center)[#counter(page).display()]
    }
  }

  // 设置页面属性
  set page(
    paper: "a4",
    margin: default-margins,
    header-ascent: 45%,
    footer-descent: 25%,
    header: header-content,
    footer: footer-content,
    numbering: "1",
  )
  
  show: set-heading-style
  show: set-figure-style
  show: set-equation-style
  show: set-list-numbering

  // 设置段落属性
  set par(
    leading: line-spacing,
    spacing: paragraph-spacing,
    justify: true,
    first-line-indent: (amount: paragraph-indent, all: true),
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

  // 前置部分为罗马数字页码
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

  // 正文部分为阿拉伯数字页码
  set page(numbering: "1")
  counter(page).update(1)

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
  declaration-content(title)
}
