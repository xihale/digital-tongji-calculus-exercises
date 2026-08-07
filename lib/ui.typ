// 题型组件：题号 / 选项 / 填空 / 解答
// 垂直间距一律来自 style 的 gap-inner / gap-block / gap-item

#import "style.typ": (
  show-solutions, answer-color, solution-color, stem-color,
  content-width, page-body-height, body-leading, par-spacing,
  gap-inner, gap-block, gap-item,
)

// ---------- 选项：无边框；项内留白 + 项间距宽；整项不断行 ----------
#let choices(..opts) = context {
  let labels = ("A", "B", "C", "D", "E", "F", "G")
  let opts = opts.pos()
  let n = opts.len()
  if n == 0 { return }

  let g = measure[#h(3.6em)].width
  let pad-x = measure[#h(0.45em)].width
  let pad-y = measure[#h(0.28em)].width
  let label-gap = measure[#h(0.55em)].width
  let num-reserve = measure[#h(2.2em)].width

  let cells = opts.enumerate().map(((i, o)) => {
    box(inset: (x: pad-x, y: pad-y))[
      #box[#labels.at(i).#h(label-gap)#o]
    ]
  })

  let max-w = calc.max(..cells.map(c => measure(c).width))
  let min-cell = measure[#h(3em)].width
  let cell-w = calc.max(max-w, min-cell)
  let avail = content-width - num-reserve

  // 列数只取 4 或 2（跳过 3，避免四选项排成 3+1）；从大到小试，取首个能放下的。
  let cols = 1
  for c in (4, 2).filter(c => c <= n) {
    if c * cell-w + (c - 1) * g <= avail {
      cols = c
      break
    }
  }

  v(gap-inner)
  block(width: 100%)[
    #grid(
      columns: (auto,) * cols,
      column-gutter: g,
      row-gutter: gap-inner,
      ..cells,
    )
  ]
}

// ---------- 选择题括号答案（括号内加宽） ----------
#let choice-mark(ans) = {
  if show-solutions {
    [（#h(0.4em)#text(fill: answer-color, weight: "bold")[#ans]#h(0.4em)）]
  } else {
    [（#h(2em)）]
  }
}

// ---------- 填空：空位与答案都带下划线 ----------
// 单个空位
#let blank-mark(ans) = {
  let line = 0.55pt + luma(70)
  if show-solutions {
    box(
      stroke: (bottom: line),
      inset: (x: 0.25em, y: 0.08em),
      baseline: 15%,
    )[
      #text(fill: answer-color, weight: "bold")[#ans]
    ]
  } else {
    box(width: 4em, stroke: (bottom: line), baseline: 15%)[]
  }
}

// 多个填空（答案序列，以中文分号「；」分隔）
#let blank-marks(answers) = {
  for (i, a) in answers.enumerate() {
    if i > 0 {
      text(fill: stem-color)[；]
      h(0.2em)
    }
    blank-mark(a)
  }
}

// 题干内嵌空位：按出现顺序消费当前题的 answer / answers
// 用法：stem: [设 $f(x)=$ #blank()，则 $f'(0)=$ #blank()]
// 若 stem 中未写 #blank()，render 仍在题末自动补空（兼容旧题）
#let blank-answers = state("blank-answers", ())
#let blank-counter = counter("blank-slot")

#let blank() = {
  blank-counter.step()
  context {
    let i = blank-counter.get().first() - 1
    let answers = blank-answers.get()
    if i < answers.len() {
      blank-mark(answers.at(i))
    } else {
      blank-mark([])
    }
  }
}

// ---------- 小问分块：行高=正文；与前文/彼此一律 gap-block ----------
#let subparts(items, numbered: true) = {
  if items.len() == 0 { return }
  v(gap-block)
  for (i, item) in items.enumerate() {
    if i > 0 { v(gap-block) }
    block(width: 100%, breakable: true)[
      #set par(leading: body-leading, spacing: par-spacing, first-line-indent: 0em)
      #if numbered {
        [(#(i + 1))]
        h(0.45em)
      }
      #item
    ]
  }
}

// ---------- 解答：与题干一律 gap-block（显式 v，不靠 block margin） ----------
#let solution-block(body: none, parts: none, numbered: true) = {
  if not show-solutions { return }
  if body == none and parts == none { return }
  v(gap-block)
  block(width: 100%, breakable: true)[
    #set text(size: 0.97em, fill: solution-color)
    #set par(leading: body-leading, spacing: par-spacing, first-line-indent: 0em)
    #text(weight: "bold", fill: answer-color)[解]#h(0.4em)
    #if body != none { body }
    #if parts != none {
      subparts(parts, numbered: numbered)
    }
  ]
}

// ---------- 练习作答留白：固定高度、不可分页/压缩 ----------
// 页底不够则整块移到下一页（只可多不可少）。
#let write-space(height) = block(
  width: 100%,
  height: height,
  breakable: false,
)[]

// ---------- 题目容器：题与题 / 节标题后 一律 gap-item ----------
// 题号与题干同一段落 → 基线天然一致；换行悬挂缩进。
// extras（选项 / 小问 / 解 / 作答留白）左缩进与题干文字对齐。
// 所有题型（选择/判断/填空/计算/简答/证明…）统一：
//   整题高度 ≤ 版心 → breakable: false，页底不够整题下移，禁止跨页；
//   整题高度 > 版心 → 允许分页（否则无法排版），文末 write-space 仍不可拆。
#let problem(num, stem, extras: none) = context {
  let gap = 0.5em
  let lab = text[#num.]
  let w = measure[#lab#h(gap)].width
  let body = {
    set text(fill: stem-color)
    set par(leading: body-leading, spacing: par-spacing, hanging-indent: w)
    lab
    h(gap)
    stem
    if extras != none {
      // 作答留白已是 unbreakable；extras 随整题高度策略走
      block(width: 100%, breakable: true, inset: (left: w))[
        #set par(hanging-indent: 0em)
        #extras
      ]
    }
  }
  let can-break = measure(block(width: content-width, body)).height > page-body-height
  block(
    width: 100%,
    above: gap-item,
    below: 0em,
    breakable: can-break,
  )[#body]
}

