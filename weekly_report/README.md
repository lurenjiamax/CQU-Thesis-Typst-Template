# 重庆大学周报模板

本目录包含一个用于创建重庆大学（CQU）学生周报的Typst模板。

## 内容

- `week_template.typ`：周报的主要模板文件。
- `sample.typ`：演示如何使用模板的示例文件。

## 使用方法

1. 将`weekly_report.typ`文件复制到您的项目目录中。
2. 在同一目录下创建一个新的Typst文件（例如，`my_report.typ`）。
3. 在新文件中导入模板并使用它：

```typst
#import "weekly_report.typ": weekly_report

#show: weekly_report.with(
  name: "您的姓名",
  student_id: "您的学号",
  major: "您的专业",
  supervisor: "您的导师姓名",
  week_number: 1,
  start_date: "2024-03-01",
  end_date: "2024-03-07"
)

= 本周完成的工作

- 任务1
- 任务2
- 任务3

= 下周计划

- 计划1
- 计划2
- 计划3

= 问题或疑难

- 问题1
- 疑难1
```

4. 根据需要自定义报告内容。
5. 编译您的Typst文件以生成PDF报告。

## 自定义

您可以根据自己的需求或院系要求修改`weekly_report.typ`文件，以更改报告模板的外观或结构。

## 示例

请参考`sample.typ`文件，了解如何使用此模板的完整示例。

