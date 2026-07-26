// 页面与基础样式：题/答色分；垂直间距只认下面几档。
// 三态：full（题+解）/ practice（纯题）/ answers（速查+详解，无题干）
//
// 兼容旧 input：SHOW_ANSWER=true  → full
//               SHOW_ANSWER=false → practice（默认）
// 优先读取 MODE；未设时回退到 SHOW_ANSWER。

#let mode = {
  let m = sys.inputs.at("MODE", default: none)
  if m != none {
    m
  } else if sys.inputs.at("SHOW_ANSWER", default: "false") == "true" {
    "full"
  } else {
    "practice"
  }
}

#let show-solutions = mode == "full" or mode == "answers"
#let show-stems = mode == "full" or mode == "practice"
#let answers-only = mode == "answers"

// 版心（2026-07-21：由 2.2cm 收窄到 2.6cm，版心≈155.8mm，每行更舒适）
#let page-margin-x = 2.6cm
#let page-margin-y = 2cm
#let content-width = 210mm - 2 * page-margin-x

// 色：题干近黑；答案/解答用蓝系
#let stem-color = rgb("#1a1a1a")
#let answer-color = rgb("#0b5cab")
#let solution-color = rgb("#1e4d7b")
#let muted = rgb("#6b7280")

// ---------- 数学简写（下册常用） ----------
#let dif = math.upright("d")
#let pd = math.partial
#let ee = math.upright("e")
#let ii = math.upright("i")
#let grad = math.op("grad")
#let div = math.op("div")
#let rot = math.op("rot")
#let Prj = math.op("Prj")
#let int = math.integral
#let iint = math.integral.double
#let iiint = math.integral.triple
#let oint = math.integral.cont

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

// 练习模式计算题默认留白（仅 data-driven render 使用；
// 旧 API 的 answer-process 在未显式给 height 时不再占位）
#let practice-gap = 4cm

// 章节标题：居左
#let section-title(body) = block(below: gap-item, width: 100%)[
  #set text(weight: "bold", size: 1.25em, fill: stem-color)
  #set align(left)
  #set par(leading: body-leading, spacing: par-spacing)
  #body
]

// 小节标题：上下都留空，避免后文贴住
#let subsection-title(body) = block(
  width: 100%,
  above: gap-item,
  below: gap-block,
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

// 全局页面/正文字体（index 与独立入口共用）
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
  // 正文：思源宋体（Noto Serif CJK SC），与衬线数学字体协调；
  // 回退顺序含 LXGW WenKai，缺字体时也不致编译失败。
  set text(font: ("Noto Serif CJK SC", "Source Han Serif SC", "LXGW WenKai"), size: body-size, fill: stem-color)
  set par(leading: body-leading, spacing: par-spacing, justify: true)
  set math.equation(numbering: none)
  show math.equation: it => {
    // 行内公式不再加 y 方向内边距，避免撑高行距 / 基线偏移（2026-07-21）
    if it.block { it } else { box(inset: (y: 0pt), it) }
  }
}
