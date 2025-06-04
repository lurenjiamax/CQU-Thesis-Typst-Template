// 重庆大学论文标题样式设置
#import "../variable/cqu-variable.typ": *

// 根据重庆大学要求设置标题样式
#let set-heading-style(body) = {
  let d = state("d", none)
  show heading:set heading(numbering: "1.1.1.1.1")
  // TODO: 更加智能的标题间距
  // 一级标题：黑体，三号，居中; 同样适用于其他没有编号的一级标题
  // 上间距: 1.5em, 下间距: 1.2em
  show heading.where(level: 1): set text(font: (
      (name: timesromance, covers: regex("[A-Za-z0-9]")),
      (name: heiti , covers: "latin-in-cjk"),
    ), size: zihao("三号"), weight: "regular")
  show heading.where(level: 1): set align(center)
  show heading.where(level: 1): set block(inset: 
      (top: 2em - 0.5em, bottom: 1.2em)
      )
  // 如果想让每一个一级标题都出现在奇数页上, 可以使用这行代码.
  // 但是推荐使用#pagebreak(to: "odd")手动设置断页
  // show heading.where(level: 1): it => pagebreak() + pagebreak(to: "odd", weak: false) + it
  show heading.where(level: 1): it => context {
    state("d").update(here().position())
    it
  }
  // 二级标题（小节）：黑体，小三号
  // 下间距: 0.8em, 上间距: 1.8em
  // 上面是一级标题时, 上间距由一级标题的下间距决定
  show heading.where(level: 2): set text(font: (
      (name: timesromance, covers: regex("[A-Za-z0-9]")),
      (name: heiti , covers: "latin-in-cjk"),
    ), size: zihao("小三"), weight: "regular")
  // 假定第一级标题永远出现在每页的开头(y~=85.04pt, 大概如此)
  // 如果紧挨着一个一级标题，则不需要额外的间距
  show heading.where(level: 2): it => context {
    let h2_pos = here().position()
    let h1_pos = state("d").get()
    if (h1_pos.page == h2_pos.page) {
      if h2_pos.y - h1_pos.y < 90pt {
        block(below: 0.8em, it)
      } else {
        block(below: 0.8em,above: 1.8em, it)
      }
    } else {
        block(below: 0.8em,above: 1.8em, it)
    }
  }

  // TODO: 三级标题与二级标题之间的间距
  // 三级标题（小小节）：黑体，四号
  show heading.where(level: 3): set text(font: (
      (name: timesromance, covers: regex("[A-Za-z0-9]")),
      (name: heiti , covers: "latin-in-cjk"),
    ), size: zihao("四号"), weight: "regular")
  show heading.where(level: 3): set block(outset: 0.5em, below: 0.6em, above: 1em)

  body
}
