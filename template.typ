// 统一的标题样式模板
#let title(content) = text(weight: "bold", size: 2.3em, content)

// 使用 Typst 的 heading 系统，以便自动生成目录
// 章标题（一级标题）
#let chapter(content) = {
  align(center)[
    #heading(level: 1, numbering: none)[#content]
  ]
}

// 节标题（二级标题）
#let section(content) = {
  align(center)[
    #heading(level: 2, numbering: none)[#content]
  ]
}

// 小节标题（三级标题，不显示在目录中）
#let subsection(content) = block(text(weight: "bold", size: 1.2em, content))

// 答案显示控制系统
// 通过 input 参数传递，默认为 false（隐藏答案）
// 使用: typst compile --input SHOW_ANSWER=true input.typ output.pdf
#let SHOW_ANSWERS = sys.inputs.at("SHOW_ANSWER", default: "false") == "true"

// 选择题答案（取代 h(2em)）
// 用法: #answer-choice[A] 或 #answer-choice[]（空答案）
#let answer-choice(content) = {
  if SHOW_ANSWERS {
    // 显示答案时，显示答案内容（带括号）
    text(fill: rgb("#0066cc"), weight: "bold")[#content]
  } else {
    h(2em)
  }
}

// 解答过程答案（取代 answer-space）
// 用法: #answer-process[解答过程...] 或 #answer-process[内容][高度]
// 高度参数决定不显示答案时的占位空间，默认6cm
#let answer-process(content, height: 6cm) = {
  if SHOW_ANSWERS {
    // 显示答案时，显示答案内容在浅色背景框中
    block(
      // fill: rgb("#f0f8ff"),
      inset: 1em,
      radius: 0.3em,
      width: 100%,
      stroke: (paint: rgb("#0066cc"), thickness: 0.5pt, dash: "dashed")
    )[
      #text(fill: rgb("#003366"))[
        #content
      ]
    ]
  } else {
    // 不显示答案时，占据相同空间以保持页码一致
    v(height)
  }
}

// 保留旧的定义以兼容（但建议逐步替换）
#let answer-space = v(8cm)

// 填空题答案（用下划线）
// 用法: #blank[答案内容]
#let blank(..args) = {
  let pos = args.pos()
  let has-content = pos.len() > 0
  let placeholder = box(width: 5em, stroke: (bottom: 0.7pt))

  if SHOW_ANSWERS and has-content {
    text(fill: rgb("#0066cc"))[#pos.at(0)]
  } else {
    placeholder
  }
}

#let choices(..opts) = {
    let labels = ([A], [B], [C], [D], [E], [F], [G])
    let opts = opts.pos()
    let n = opts.len()

    grid(rows: n)[
        #for i in range(n) {
            stack(dir: ltr, spacing: 1.5em)[
                #labels.at(i).
                #opts.at(i)
            ]
        }
    ]
}
