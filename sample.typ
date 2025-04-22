
#import "cqu-template.typ": project
#import "utilities/three-line-table.typ": *
#import "@preview/mitex:0.2.5": *
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

== 本文主要研究内容

研究内容部分应着重介绍你具体研究的对象、问题或主题。明确概括你的研究范围和涉及的关键要素。强调你的研究如何填补领域现有知识的空白或者为该领域做出独特的贡献。这一部分的目标是为读者提供关于研究的具体方向和深度的清晰认识……

== 本文研究意义

在研究意义部分，阐述你的研究对学术界和实践领域的重要性。强调你的研究如何推动学科的发展，解决实际问题或者对社会产生积极影响。可以涉及到研究的创新性、实用性、理论意义等方面。此部分需要突出你的研究对于学术和实际领域的价值，使读者明白为何该研究是有意义的……

== 本章小结

小结部分是引言的收尾，总结引言中提到的关键信息。简要回顾研究的背景、问题、目的和结构，并为读者提供对整个研究的整体印象。强调研究的重要性，为后续章节的阅读做铺垫。小结要紧凑而有力，概括引言的核心内容，使读者对整篇论文的主旨有明确的认识……@impagliazzo2001problems

#pagebreak()

= 正文文字格式

== 论文正文

论文正文是主体，一般由标题、文字叙述、图、表格和公式等部分构成。一般可包括理论分析、计算方法、实验装置和测试方法，经过整理加工的实验结果分析和讨论，与理论计算结果的比较@papadimitriou1998combinatorial@Burckhardt:2013 以及本研究方法与已有研究方法的比较等，因学科性质不同可有所变化。

== 字数要求

=== 本科论文字数要求

论文主体部分字数要求：理工类专业一般不少于1.5万字，其他专业一般不少于1.0万字。

== 本章小结

本章介绍了论文正文的基本格式和字数要求。

#pagebreak()

= 图表、公式格式

== 图表格式

本章将主要介绍一些图表和公式的格式...

#figure(
  rect(width: 100%, height:8cm, fill: none, stroke: 0.5pt, [Placeholder Image]),
  caption: "内热源沿径向的分布Abc"
)

// 三线表是这样练成的, 注意使用toprule, midrule, bottomrule
#figure(
  table(
    columns: 4,
    toprule,
    table.header(
    [感应频率], [感应发生器功率], [工件移动速度], [感应圈与零件间隙],
    ),
    midrule,
    [（KHz）], [$\% #math.times $80Kw], [mm/min], [mm],
    [250], [88], [5900], [1.65],
    [250], [88], [5900], [1.65],
    [250], [88], [5900], [1.65],
    [250], [88], [5900], [1.65],
    bottomrule
  ),
  caption: "高频感应加热的基本参数"
)


== 公式格式
=== Typst
你可以使用Typst的公式格式: 
$$$
 1/mu nabla^2A - j omega sigma A - nabla(1/mu) 
#math.times (nabla #math.times A)+J_0=0 
$$$

=== Latex
也可以使用Latex的语法: 

#mitex(`
\frac{1}{\mu} \nabla^2A - j \omega \sigma A -\nabla(\frac{1}{\mu}) \times(\nabla \times A)+J_0=0 
`
)

== 本章小结

本章介绍了图表和公式的格式要求@刘星2014恶意代码的函数调用图相似性分析。

#pagebreak()

= 结论与展望

== 主要结论

本文主要研究了基于深度学习的图像识别技术，通过实验验证了所提方法的有效性。

== 研究展望

未来可以在以下几个方面进行更深入的研究：
1. 改进网络结构，提高识别精度
2. 减少计算复杂度，提高运行效率
3. 扩展应用场景，探索更多实际应用

#pagebreak()

// References would be included here if bibliography_file was provided

// Appendix is included automatically

// Acknowledgement is included automatically

// Declaration is included automatically
