// 全书数学简写（上/下册共用）
#let dif = math.upright("d")
#let pd = math.partial
#let ee = math.upright("e")
#let ii = math.upright("i")
#let grad = math.op("grad")
#let div = math.op("div")
#let rot = math.op("rot")
#let Prj = math.op("Prj")

// 偏导 / 导数分数写法（Typst 的 / 只吃相邻原子）：
//   错：$pd z / pd x$ → 渲成 ∂(z/∂)x
//   对：$(pd z)/(pd x)$、$(pd^2 z)/(pd x pd y)$、$(dif y)/(dif x)$
// 不要写成 pd z / pd x 或 dif y / dif x。
// 积分：下册原稿用 int/iint/iiint/oint 作数学宏
#let int = math.integral
#let iint = math.integral.double
#let iiint = math.integral.triple
#let oint = math.integral.cont

// ---------- cases：式子与条件列距；可选式子后逗号 ----------
// Typst 的 math.cases 没有 column-gap，默认两列贴太紧。
// AMS 习惯：式子左对齐、默认不加逗号；列距 0.6em（约 \quad 量级）。
// 入口文档顶层写：#show math.cases: math-cases-show
// 教材风加逗号：#show math.cases: it => math-cases-show(it, comma: true)
// 或改默认：#let cases-comma = true（需在 show 绑定前，见 math-cases-show 参数）

#let cases-col-gap = 0.6em
/// AMS 习惯：式子后不加逗号（默认关）；教材风可设 true
#let cases-comma = false

#let _is-align-point(k) = type(k) == content and repr(k) == "align-point()"
#let _is-math-space(k) = type(k) == content and k.func() == math.space

#let _join-cell(parts) = {
  let p = parts
  while p.len() > 0 and _is-math-space(p.first()) { p = p.slice(1) }
  while p.len() > 0 and _is-math-space(p.last()) { p = p.slice(0, -1) }
  if p.len() == 0 { [] } else { p.join() }
}

// 按 &（align-point）拆成 mat 的一行多列
#let _split-align-row(row) = {
  let kids = if type(row) == content and row.has("children") {
    row.children
  } else {
    (row,)
  }
  let cols = ((),)
  for k in kids {
    if _is-align-point(k) {
      cols.push(())
    } else {
      cols.at(-1).push(k)
    }
  }
  cols.map(_join-cell)
}

#let _expr-cell(head, comma: true) = {
  if comma {
    if head == [] { $,$ } else { $#head,$ }
  } else if head == [] {
    []
  } else {
    head
  }
}

#let _cases-mat-delim(it) = {
  // cases 默认只显示一侧大括号；reverse 时括号在右
  let d = it.delim
  let left = if d == auto {
    "{"
  } else if type(d) == array {
    d.at(0)
  } else {
    d
  }
  if it.reverse { (none, left) } else { (left, none) }
}

/// 替换 math.cases：用 mat 实现；统一列距；式子左对齐（AMS）；comma 控制式子后逗号（默认关）。
/// 原写法 `$cases(x-1 & x<=1, 3-x & x>1)$` 无需改动。
/// 单列方程组也左对齐：mat 默认 center，须显式 align: left。
#let math-cases-show(
  it,
  col-gap: cases-col-gap,
  comma: cases-comma,
) = {
  let rows = it.children.map(_split-align-row)
  let rows2 = if comma {
    rows.map(r => {
      if r.len() < 2 {
        // 单列：逗号贴行末
        (_expr-cell(r.at(0), comma: true),)
      } else {
        (_expr-cell(r.at(0), comma: true),) + r.slice(1)
      }
    })
  } else {
    rows
  }
  math.mat(
    delim: _cases-mat-delim(it),
    column-gap: col-gap,
    row-gap: it.gap,
    align: left,
    ..rows2,
  )
}
