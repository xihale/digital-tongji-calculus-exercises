// 页面与基础样式：题/答色分；垂直间距只认下面几档。
// 三态：full（题+解）/ practice（纯题）/ answers（速查+详解，无题干）
// 编译时 --input MODE=full/practice/answers；默认 practice。

#let mode = sys.inputs.at("MODE", default: "practice")

#let show-solutions = mode == "full" or mode == "answers"
#let show-stems = mode == "full" or mode == "practice"
#let answers-only = mode == "answers"

// 版心（2026-07-21：由 2.2cm 收窄到 2.6cm，版心≈155.8mm，每行更舒适）
#let page-margin-x = 2.6cm
#let page-margin-y = 2cm
#let content-width = 210mm - 2 * page-margin-x
// A4 版心高度：用于判断「题干+作答留白」能否整页装下（装不下则题干可分页）
#let page-body-height = 297mm - 2 * page-margin-y

// 色：题干近黑；答案/解答用蓝系
#let stem-color = rgb("#1a1a1a")
#let answer-color = rgb("#0b5cab")
#let solution-color = rgb("#1e4d7b")
#let muted = rgb("#6b7280")

// 数学简写与 cases 列距：lib/math.typ（入口 #show math.cases: math-cases-show）

// ---------- 字号 / 行高 ----------
#let body-size = 12pt
#let body-leading = 1.5em
#let par-spacing = 0.9em

// ---------- 垂直节奏（唯一来源；组件只许用这几档） ----------
// gap-inner  组件内部：题干↔选项、选项行距、标题下沿
// gap-block  同题块间：题干↔解、总述↔小问、小问↔小问
// gap-item   题与题 / 详解条目 / 节标题后
#let gap-inner = 0.75em
#let gap-block = 1.0em
#let gap-item = 1.6em

// 练习模式计算/证明/简答默认书写留白高度（仅 practice）。
// 高度固定、不可压缩：页底不够则整块留白移到下一页（只可多不可少）。
// 短题：题干+留白能装进一页版心时整题 unbreakable，页底不够整题下移。
// 长题：题干允许跨页，文末仍追加完整 practice-gap，绝不缩短作答区。
// 单题可用 practice-gap 覆盖；practice-space: false 可关闭留白。
#let practice-gap = 6cm

// spacer（纯垂直留白条目）的默认高度；数据层可逐条用 height 覆盖。
// 固定高度、不可分页；仅 practice 生效（full/answers 下解答占位）。
#let spacer-default = 3cm

// 章节标题：居左
#let section-title(body) = block(below: gap-item, width: 100%)[
  #set text(weight: "bold", size: 1.25em, fill: stem-color)
  #set align(left)
  #set par(leading: body-leading, spacing: par-spacing)
  #body
]

// 小节标题：上下都留空，避免后文贴住。
// sticky：页底只够放下标题时，与后文（首题）一同移到下一页，避免孤行标题。
#let subsection-title(body) = block(
  width: 100%,
  above: gap-item,
  below: gap-block,
  sticky: true,
)[
  #set text(weight: "bold", size: 1.08em, fill: stem-color)
  #set align(left)
  #body
]

// 章标题：居左、更大；底部加细分隔线拉开章节层次（2026-07-21 新增）
#let chapter-title(body) = block(below: gap-item, width: 100%)[
  #set text(weight: "bold", size: 1.55em, fill: stem-color)
  #set align(left)
  #set par(leading: body-leading, spacing: par-spacing)
  #body
  #v(0.3em)
  #line(length: 100%, stroke: 0.6pt + muted)
]

// 全局页面设置（index 与独立入口共用）。
// 只放 set page：页面属性按"文档位置"生效，函数内的 set page 能传播到后续页面。
// 切勿在此放 set text / set par / show math.equation —— 它们只作用于函数体内部，
// 不会传播到调用之后的正文（typst 0.15 实测），会导致正文静默回退到默认字体。
// 正文样式见 body-font / body-size 等，需在入口文档顶层用 set 应用。
#let apply-document-style() = {
  set page(
    paper: "a4",
    margin: (
      top: page-margin-y,
      bottom: page-margin-y,
      left: page-margin-x,
      right: page-margin-x,
    ),
  )
}

// 正文：思源宋体（Noto Serif CJK SC），与衬线数学字体协调。
// 这是个值而非 set 规则，供入口文档在顶层 set text(font: body-font) 使用。
#let body-font = "Noto Serif CJK SC"

// 行内公式不再加 y 方向内边距，避免撑高行距 / 基线偏移（2026-07-21）。
// 入口文档顶层写：#show math.equation: inline-equation-show
#let inline-equation-show = it => {
  if it.block { it } else { box(inset: (y: 0pt), it) }
}
