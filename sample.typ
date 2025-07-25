#import "cqu-template.typ": project
#import "utilities/three-line-table.typ": *
#import "@preview/mitex:0.2.5": *
#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold
// Create a sample CQU undergraduate thesis
#show: project.with(
  title: "基于深度学习的图像识别研究",
  title_en: "Research on Image Recognition Based on Deep Learning",
  author: "张三",
  author_en: "ZHANG San",
  student_id: "20200123456",
  supervisor: "李四 教授",
  supervisor_en: "Prof. LI Si",
  assist_supervisor: "王五 副教授",
  assist_supervisor_en: "Assoc. Prof. WANG Wu",
  major: "计算机科学与技术",
  major_en: "Computer Science and Technology",
  department: "计算机学院",
  department_en: "College of Computer Science",
  date: (2024, 6),
  declaration_date: (2024, 6, 10),
  double: false, // 是否双面打印, 如果是双面打印, 则页眉页脚会有不同的内容
  gutter: false, // 是否有装订线的间距, 建议打印时设置即可
  abstract_zh: [
    摘要是论文（设计）内容不加注释和评论的简短陈述，应具有独立性和自明性，即不阅读论文（设计）的全文，就可以获得必要的信息。

    摘要一般应说明研究工作的目的和意义、研究思想和方法、研究过程、研究结果和最终结论等。摘要中一般不用图、表、化学结构式、计算机程序，不用非公知公用的符号、术语和非法定的计量单位。

    中文摘要一般为300-500汉字。

    摘要页置于英文题名页后。

    关键词是从论文（设计）题名、摘要或正文中选取的对表示论文（设计）主题内容起关键作用，且具有检索意义的词或词组。一般每篇论文（设计）应选取3-5个词作为关键词，以显著的字符另起一行，排在同种语言摘要的下方，尽量用《汉语主题词表》或各专业主题词表提供的规范词。
  ],
  abstract_en: [
    As a primary means of demonstrating research findings for undergraduate students, dissertation is a systematic and standardized record of the new inventions, theories or insights obtained by the author in the research work. It can not only function as an important reference when students pursue further studies, but also contribute to scientific research and social development.

    This template is therefore made to improve the quality of undergraduates' dissertation and to further standardize it both in content and in format.
  ],
  keywords_zh: ("深度学习", "图像识别", "卷积神经网络", "计算机视觉"),
  keywords_en: ("Deep Learning", "Image Recognition", "Convolutional Neural Network", "Computer Vision"),
  bibliography_file: "../bib/ref.bib"
)

= 绪论

== 引言

学位论文的引言是研究工作的开端，旨在引导读者对研究的背景、问题、目的和重要性有所了解。在背景介绍中，阐述与研究主题相关的一般性信息，为引入具体问题做铺垫。问题陈述明确阐述研究的核心问题，强调研究的重要性。进一步，目的和目标部分解释研究的意图和预期贡献。对研究范围和限制进行概述，确立研究的边界和可能的局限性。在方法论概述中简要介绍选择的研究方法及其与问题的关联。最后，通过论文结构概述，为读者提供整篇论文的框架，使其能够预知各章节内容。整个引言力求简明扼要，引发读者兴趣，并确保与后续章节之间的连贯性，以保持整体逻辑清晰……

第二个段落与上一个段落之间应当有一个空行, 否则不会被视为新段落.

== 本文主要研究内容

研究内容部分应着重介绍你具体研究的对象、问题或主题。明确概括你的研究范围和涉及的关键要素。强调你的研究如何填补领域现有知识的空白或者为该领域做出独特的贡献。这一部分的目标是为读者提供关于研究的具体方向和深度的清晰认识……

== 本文研究意义

在研究意义部分，阐述你的研究对学术界和实践领域的重要性。强调你的研究如何推动学科的发展，解决实际问题或者对社会产生积极影响。可以涉及到研究的创新性、实用性、理论意义等方面。此部分需要突出你的研究对于学术和实际领域的价值，使读者明白为何该研究是有意义的……

== 本章小结

小结部分是引言的收尾，总结引言中提到的关键信息。简要回顾研究的背景、问题、目的和结构，并为读者提供对整个研究的整体印象。强调研究的重要性，为后续章节的阅读做铺垫。小结要紧凑而有力，概括引言的核心内容，使读者对整篇论文的主旨有明确的认识……@impagliazzo2001problems

// 如果想让第一级标题都出现在奇数页的话, 在标题前面加上这个语句.
#pagebreak(to: "even", weak: false)
= 正文文字格式

== 论文正文

论文正文是主体，一般由标题、文字叙述、图、表格和公式等部分构成。一般可包括理论分析、计算方法、实验装置和测试方法，经过整理加工的实验结果分析和讨论，与理论计算结果的比较@papadimitriou1998combinatorial@Burckhardt:2013 以及本研究方法与已有研究方法的比较等，因学科性质不同可有所变化。

== 字数要求

=== 本科论文字数要求

论文主体部分字数要求：理工类专业一般不少于1.5万字，其他专业一般不少于1.0万字。

== 常用格式
#show link: underline
这里列举的一些常用的格式可以满足大部分的使用场景, 详细的需要查阅Typst相关文档: #link("https://typst.app/docs")[EN], #link("https://typst-doc-cn.github.io/guide/")[CN]。
=== 字体样式

如果有特殊的字体样式需求, 可以使用`#text()`来设置字体样式, 例如:#text(font: "Times New Roman", size: 12pt)[这是一个使用Times New Roman字体的文本]。
- *Bold Text*, `#text(weight: "bold")[Bold Text]`
- #text(style: "italic")[Italic Text], `#text(style: "italic")[Italic Text]`
- #text(fill: red)[Red Text], 颜色可以使用`#text(fill: "red")[红色文本]`来设置文本颜色。

=== 数学
本科生Typst数学手册: https://github.com/brynne8/typst-undergradmath-zh/blob/6a1028bc13c525f29f6445e92fc6af3246b3c3cb/undergradmath.pdf

常用数学符号: https://typst-doc-cn.github.io/tutorial/basic/reference-math-symbols.html

在文内可用`$$`包裹数学公式, 例如使用花体的$cal(C)_7^2$. 居中的话, 则使用
$
  "C"_7^2 = sum_(i=1)^7 i^2 
$

=== 脚注
脚注可以使用`#footnote()`来添加脚注内容, 例如:#footnote("这是一个脚注的内容")。脚注会自动编号, 并在页面底部显示。

=== 引用

标签是以`<>`包裹的独特文本, 例如: `<table_basic_thing>`, 需要放在图表或公式的末尾。引用时使用`@table_basic_thing`来引用。

目前Typst原生不支持双语(CSL-M)文献样式, 可以参考部分现有的解决方法:
- #link("https://github.com/nju-lug/modern-nju-thesis/issues/3")["NJU"]: 替换法.
- #link("https://github.com/Shuenhoy/citext")[Citext]: 外部库, 实验性.
- #link("https://github.com/cherichy/BUAA-typst/blob/main/typstcite.md")[BUAA]: 改源码+外部引用生成

本模板采用的是NJU的替换法, 通过`bilingual-bibliography.typ`来实现双语文献的引用。CSL样式文件使用的是经修改后的`gb-t-7714-2015-numeric.csl`, 你可以在`bib/`目录下找到。


== 本章小结

本章介绍了论文正文的基本格式和字数要求。

= 图表、公式格式

== 图表格式

本章将主要介绍一些图表和公式的格式...

#figure(
  rect(width: 100%, height:8cm, fill: none, stroke: 0.5pt, [Placeholder Image]),
  caption: "内热源沿径向的分布Abc"
)

使用三线表的话跟latex类似, 只不过更加简单. 注意使用toprule, midrule, bottomrule. 

#figure(
  table(
    columns: 4,
    toprule,
    table.header(
    [感应频率\ （KHz）], [感应发生器功率\ （$\% #math.times $80Kw）], [工件移动速度\ （mm/min）], [感应圈与零件间隙\ （mm）],
    ),
    midrule,
    [250], [88], [5900], [1.65],
    [250], [88], [5900], [1.65],
    [250], [88], [5900], [1.65],
    [250], [88], [5900], [1.65],
    bottomrule
  ),
  caption: "高频感应加热的基本参数"
)<table_basic_thing>

对于表格`table`和图`image`, 都需要用`#figure`包裹起来才是正式的图表, 才可以设置标签`<table_basic_thing>`, 并用`@table_basic_thing`来引用 @table_basic_thing . 

== 公式格式
=== Typst
你可以使用Typst的公式格式, 后面用`<formula_abc>`来设置标签: 
$$$
 1/mu nabla^2A - j omega sigma A - nabla(1/mu) 
#math.times (nabla #math.times A)+J_0=0 
$$$<formula_abc>
然后使用`@formula_abc`对 @formula_abc\进行引用

=== Latex
也可以使用Latex的语法: 

#mitex(`
\frac{1}{\mu} \nabla^2A - j \omega \sigma A -\nabla(\frac{1}{\mu}) \times(\nabla \times A)+J_0=0 
`)

== 本章小结

本章介绍了图表和公式的格式要求@刘星2014恶意代码的函数调用图相似性分析。

= 结论与展望

== 主要结论

本文主要研究了基于深度学习的图像识别技术，通过实验验证了所提方法的有效性。

== 研究展望

未来可以在以下几个方面进行更深入的研究：
1. 改进网络结构，提高识别精度
2. 减少计算复杂度，提高运行效率
3. 扩展应用场景，探索更多实际应用

// 如果bibliography_file有效的话, 参考文献会自动插入在末尾.
// 附录, 致谢, 声明等同理.
// 如果需要修改, 请到`page/`下对应的文件去修改相应的内容.
