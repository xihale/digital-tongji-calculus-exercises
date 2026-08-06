// 矢量图库：用 cetz 按原扫描图几何重绘。
// 每个函数返回一个 cetz canvas（合法 content），可直接塞进 p.figure。
//
// 配色：坐标轴/几何用 stem-color（近黑），曲线/填充用 answer-color（蓝）系，
// 与全书题/答配色一致。字号略小于正文。
//
// cetz 0.4.x API 要点：
//   - `import draw: *` 只能在 canvas({...}) 内部生效
//   - 填充闭合区域用 `line(..pts, close: true, fill: .., stroke: none)`
//   - content 的 anchor 用方位词 "north/south/east/west"
//   - 虚线 stroke 写法：`(paint: muted, dash: "dashed")`

#import "@preview/cetz:0.4.2": canvas, draw
#import "style.typ": answer-color, body-size, muted, stem-color

#let axis-color = stem-color
#let curve-color = answer-color
#let shade-color = answer-color.lighten(70%)
#let shade-dark = answer-color.lighten(45%)
#let label-size = body-size * 0.82

// ---------- 通用：一对带箭头的坐标轴 ----------
#let axes(d, x-max, y-max, x-label: [$x$], y-label: [$y$], origin-label: [$O$], x-min: -0.3, y-min: -0.3) = {
  d.line((x-min, 0), (x-max, 0), arrow: true, stroke: axis-color)
  d.line((0, y-min), (0, y-max), arrow: true, stroke: axis-color)
  if x-label != none { d.content((x-max, 0), anchor: "west", padding: (left: 2pt))[#x-label] }
  if y-label != none { d.content((0, y-max), anchor: "south", padding: (bottom: 2pt))[#y-label] }
  if origin-label != none {
    d.content((0, 0), anchor: "north-east", padding: (top: 2pt, right: 2pt))[#origin-label]
  }
}

// 空心 / 实心端点
#let open-dot(p, r: 0.08) = {
  import draw: *
  circle(p, radius: r, fill: white, stroke: curve-color)
}
#let solid-dot(p, r: 0.08) = {
  import draw: *
  circle(p, radius: r, fill: curve-color, stroke: none)
}

// ---------- 图 6-1：细棒与质点（万有引力） ----------
// 原图：数轴，O 为细棒右端；细棒在 O 左侧长度 l；O 右侧距离 a 处质点 M。
// 上方尺寸线：两端竖短线 + 双向箭头标 l、a。轴下方 O、M 用常规字重（不粗）。
#let fig-rod-mass() = canvas({
  import draw: *
  let l = 2.8
  let a = 1.15
  let x-left = -l - 0.55
  let x-right = a + 1.05
  // 数轴
  line((x-left, 0), (x-right, 0), arrow: true, stroke: axis-color)
  content((x-right, 0), anchor: "west", padding: (left: 2pt))[$x$]
  // 细棒（O 左侧；粗细贴近原图）
  line((-l, 0), (0, 0), stroke: 2.6pt + axis-color, cap: "butt")
  // 棒左端竖刻度
  line((-l, -0.1), (-l, 0.1), stroke: 0.65pt + axis-color)
  // O、M：轴上实心点 + 轴下常规字重标签（不粗）
  circle((0, 0), radius: 0.07, fill: axis-color, stroke: none)
  content((0, 0), anchor: "north", padding: (top: 5pt))[
    #text(size: label-size, weight: "regular")[$upright(O)$]
  ]
  circle((a, 0), radius: 0.07, fill: axis-color, stroke: none)
  content((a, 0), anchor: "north", padding: (top: 5pt))[
    #text(size: label-size, weight: "regular")[$upright(M)$]
  ]
  // 尺寸线 y = y-dim（细箭头，贴近原图 ← l → / ← a →）
  let y-dim = 0.58
  for x in (-l, 0, a) {
    line((x, 0.14), (x, y-dim + 0.08), stroke: 0.5pt + axis-color)
  }
  let dim-mark = (symbol: ">", fill: axis-color, scale: 0.55)
  line((-l, y-dim), (0, y-dim), stroke: 0.7pt + axis-color, mark: (start: dim-mark, end: dim-mark))
  content((-l / 2, y-dim), anchor: "south", padding: (bottom: 2pt))[
    #text(size: label-size, weight: "regular")[$l$]
  ]
  line((0, y-dim), (a, y-dim), stroke: 0.7pt + axis-color, mark: (start: dim-mark, end: dim-mark))
  content((a / 2, y-dim), anchor: "south", padding: (bottom: 2pt))[
    #text(size: label-size, weight: "regular")[$a$]
  ]
})

// ---------- 真题图2：抛物线 y=2x² 与直线 x=a、x=2 围成的 D₁/D₂ ----------
// 原图：D₂ 为 [0,a] 曲线下浅区，D₁ 为 [a,2] 曲线下深色阴影；竖直实线 x=a、x=2。
// 显示缩放：横向拉宽、纵向压扁（数学 y=2x² 不变），接近原书宽扁比例。
#let fig-parabola-region(a: 1.0) = canvas({
  import draw: *
  let f(x) = 2 * x * x
  let sx = 1.55
  let sy = 0.48
  let P(x, y) = (sx * x, sy * y)
  let x-end = 2.15
  let y-end = f(2) + 0.7
  // 轴（y 轴从 0 起）
  line(P(-0.15, 0), P(x-end, 0), arrow: true, stroke: axis-color)
  line(P(0, -0.3), P(0, y-end), arrow: true, stroke: axis-color)
  content(P(x-end, 0), anchor: "west", padding: (left: 2pt))[$x$]
  content(P(0, y-end), anchor: "south", padding: (bottom: 2pt))[$y$]
  content(P(0, 0), anchor: "north-east", padding: (top: 2pt, right: 2pt))[$O$]
  // 区间内精确端点采样，避免 filter 漏点导致左右空隙
  let n = 32
  let arc(x0, x1) = range(0, n + 1).map(i => {
    let x = x0 + (x1 - x0) * i / n
    P(x, f(x))
  })
  // D₂：0→a（较浅）；闭合：底边左端 → 弧 → 底边右端
  line(
    ..(P(0, 0),) + arc(0, a) + (P(a, 0),),
    close: true,
    fill: shade-color,
    stroke: none,
  )
  // D₁：a→2（较深）
  line(
    ..(P(a, 0),) + arc(a, 2) + (P(2, 0),),
    close: true,
    fill: shade-dark,
    stroke: none,
  )
  // 抛物线（略过 2，与原图一致）
  line(..arc(0, 2.05), stroke: curve-color)
  // 竖线 x=a、x=2（实线，到曲线）
  for x in (a, 2) {
    line(P(x, 0), P(x, f(x)), stroke: axis-color)
    line(P(x, -0.15), P(x, 0.15), stroke: axis-color)
  }
  content(P(a, 0), anchor: "north", padding: (top: 2pt))[#text(size: label-size)[$a$]]
  content(P(2, 0), anchor: "north", padding: (top: 2pt))[#text(size: label-size)[$2$]]
  // 区域标注：D₂ 略靠右
  content(P(0.8 * a, f(0.55 * a) * 0.72), anchor: "center")[#text(size: label-size)[$D_2$]]
  content(P((a + 2) / 2, f((a + 2) / 2) * 0.32), anchor: "center")[#text(
    size: label-size,
  )[$D_1$]]
  // 曲线方程写在左上方空白
  content(P(0.42, f(1.0)), anchor: "south", padding: (bottom: 1pt))[#text(
    size: label-size,
  )[$y = 2x^2$]]
})

// ---------- 图 6-2：两曲线围成的 ∞ 双叶阴影 ----------
// 要点：∞ 形、整体微倾、两侧缓降（扁长透镜，端点不陡）。
// [a,c] g 上 f 下；[c,b] f 上 g 下。剖面用 √sin，端点附近张开慢。
#let fig-two-curves-shade() = canvas({
  import draw: *
  let xa = 1.15
  let xc = 3.25
  let xb = 5.4
  // 交点高度：倾斜不变，整体上移
  let ya = 1.45
  let yc = 1.9
  let yb = 2.35

  // 叶扁长：半高小、跨度大 → 两侧缓降
  let h = 0.32
  let n = 48
  // 0<p<1：比 sin 更缓收；比 √sin 仍保持尖端
  let p = 0.7

  let lobe(x0, x1, y0, y1) = {
    let upper = range(0, n + 1).map(i => {
      let t = i / n
      let x = x0 + (x1 - x0) * t
      let ym = y0 + (y1 - y0) * t
      let s = calc.pow(calc.sin(calc.pi * t), p)
      (x, ym + h * s)
    })
    let lower = range(0, n + 1).map(i => {
      let t = i / n
      let x = x0 + (x1 - x0) * t
      let ym = y0 + (y1 - y0) * t
      let s = calc.pow(calc.sin(calc.pi * t), p)
      (x, ym - h * s)
    })
    (upper, lower)
  }
  let (left-upper, left-lower) = lobe(xa, xc, ya, yc)
  let (right-upper, right-lower) = lobe(xc, xb, yc, yb)

  let x-max = xb + 1.15
  let y-max = yb + h + 0.9
  line((-0.3, 0), (x-max, 0), arrow: true, stroke: axis-color)
  line((0, -0.25), (0, y-max), arrow: true, stroke: axis-color)
  content((x-max, 0), anchor: "west", padding: (left: 2pt))[$x$]
  content((0, y-max), anchor: "south", padding: (bottom: 2pt))[$y$]
  content((0, 0), anchor: "north", padding: (top: 3pt))[$O$]

  line(..left-upper + left-lower.rev(), close: true, fill: shade-color, stroke: none)
  line(..right-upper + right-lower.rev(), close: true, fill: shade-color, stroke: none)

  // f = 左下 + 右上；g = 左上 + 右下
  line(..left-lower + right-upper.slice(1), stroke: curve-color)
  line(..left-upper + right-lower.slice(1), stroke: curve-color)

  for (x, y-meet, lab) in ((xa, ya, [$a$]), (xc, yc, [$c$]), (xb, yb, [$b$])) {
    line((x, 0), (x, y-meet), stroke: (paint: muted, dash: "dashed"))
    line((x, -0.08), (x, 0.08), stroke: axis-color)
    content((x, 0), anchor: "north", padding: (top: 2pt))[#text(size: label-size)[#lab]]
  }

  let f-pt = right-upper.at(int(n * 0.4))
  let g-pt = right-lower.at(int(n * 0.75))
  content((f-pt.at(0) - 0.2, f-pt.at(1) + 0.5), anchor: "south")[
    #text(size: label-size)[$y = f(x)$]
  ]
  line(
    (f-pt.at(0) - 0.08, f-pt.at(1) + 0.42),
    (f-pt.at(0), f-pt.at(1) + 0.05),
    stroke: 0.5pt + axis-color,
  )
  content((xb + 0.4, g-pt.at(1) - 0.1), anchor: "west")[
    #text(size: label-size)[$y = g(x)$]
  ]
  line(
    (xb + 0.35, g-pt.at(1) - 0.04),
    (g-pt.at(0) + 0.04, g-pt.at(1)),
    stroke: 0.5pt + axis-color,
  )
})

// ---------- 图 2-5 / 真题图1：分段折线函数（极限） ----------
// 原图特征：
//   - 左支折线：自左下 → 空心峰 (-2, 0) → 折到约 (-1,-1) → 水平 → 空心 (0,-1)
//   - 右支：空心 (0,1) 起水平向右 y=1
//   - 原点 O 实心；y=1、-1 处有标注
#let fig-piecewise-limits() = canvas({
  import draw: *
  let x-min = -3.0
  let x-max = 2.8
  let y-max = 1.7
  let y-min = -1.7
  line((x-min, 0), (x-max, 0), arrow: true, stroke: axis-color)
  line((0, y-min), (0, y-max), arrow: true, stroke: axis-color)
  content((x-max, 0), anchor: "west", padding: (left: 2pt))[$x$]
  content((0, y-max), anchor: "south", padding: (bottom: 2pt))[$y$]
  // O 实心点 + 标签
  circle((0, 0), radius: 0.07, fill: axis-color, stroke: none)
  content((0, 0), anchor: "north-west", padding: (top: 3pt, left: 3pt))[$O$]

  // 关键点（按原图折线：左下→空心峰(-2,0)→折到 y=-1→水平→空心(0,-1)）
  let p-start = (-2.65, -1.4)
  let p-peak = (-2.0, 0.0) // 空心
  let p-kink = (-1.15, -1.0)
  let p-left0 = (0.0, -1.0) // 空心
  let p-right0 = (0.0, 1.0) // 空心
  let p-end = (2.35, 1.0)

  // 左支折线
  line(p-start, p-peak, p-kink, p-left0, stroke: curve-color)
  // 右支水平
  line(p-right0, p-end, stroke: curve-color)

  // 空心端点
  open-dot(p-peak)
  open-dot(p-left0)
  open-dot(p-right0)

  // y=±1 标注
  content((-0.12, 1), anchor: "east", padding: (right: 2pt))[#text(size: label-size)[$1$]]
  content((-0.12, -1), anchor: "east", padding: (right: 2pt))[#text(size: label-size)[$-1$]]

  // x 刻度
  for (x, lab) in ((-2, [$-2$]), (-1, [$-1$]), (1, [$1$])) {
    line((x, -0.08), (x, 0.08), stroke: axis-color)
    content((x, 0), anchor: "north", padding: (top: 2pt))[#text(size: label-size)[#lab]]
  }

  // 函数名
  content((x-min + 0.15, 1.35), anchor: "west")[#text(size: label-size)[$y = f(x)$]]
})

// ---------- 图 5-1：[-3,2] 上双峰光滑曲线 ----------
// 原图：自 (-3,0) 起 → 左峰（较低）→ 谷（近 O 左侧仍 >0）→ 右峰（较高，O 右侧）
// → 圆顶缓降，过 x=2 贴轴后略穿下方。整条用单一 centripetal Catmull-Rom，保证整体平滑。
#let fig-arched-curve() = canvas({
  import draw: *
  let xa = -3.0
  let xb = 2.0
  let x-min = xa - 0.45
  let x-max = xb + 1.0
  let y-max = 2.15
  line((x-min, 0), (x-max, 0), arrow: true, stroke: axis-color)
  line((0, -0.55), (0, y-max), arrow: true, stroke: axis-color)
  content((x-max, 0), anchor: "west", padding: (left: 2pt))[$x$]
  content((0, y-max), anchor: "south", padding: (bottom: 2pt))[$y$]
  content((0, 0), anchor: "north-west", padding: (top: 2pt, left: 2pt))[$O$]

  // 关键点沿原图轮廓均匀取，间距尽量匀，避免 CR 过冲；首尾虚点控制端切线
  let key = (
    (-3.25, -0.08), // 虚点：起点切线略上
    (-3.0, 0.0),
    (-2.55, 0.32),
    (-2.15, 0.52),
    (-1.75, 0.95),
    (-1.5, 1.12), // 左峰
    (-1.25, 0.95),
    (-0.95, 0.55),
    (-0.7, 0.36), // 谷
    (-0.4, 0.55),
    (-0.1, 1.05),
    (0.15, 1.55),
    (0.35, 1.72), // 右峰
    (0.6, 1.58),
    (0.95, 1.2),
    (1.3, 0.75),
    (1.6, 0.4),
    (1.85, 0.15),
    (2.0, 0.0),
    (2.3, -0.18),
    (2.65, -0.3),
    (2.9, -0.34), // 虚点：尾部缓平
  )
  // centripetal Catmull-Rom（α=0.5）：比 uniform 更稳，峰谷不易尖角/打环
  let alpha = 0.5
  let n-seg = 16
  let dist(a, b) = {
    let dx = b.at(0) - a.at(0)
    let dy = b.at(1) - a.at(1)
    calc.pow(dx * dx + dy * dy, alpha * 0.5)
  }
  let pts = ()
  let m = key.len()
  // 只画中间真实段：跳过首尾虚点之间的外延
  for i in range(1, m - 2) {
    let p0 = key.at(i - 1)
    let p1 = key.at(i)
    let p2 = key.at(i + 1)
    let p3 = key.at(i + 2)
    let d01 = dist(p0, p1)
    let d12 = dist(p1, p2)
    let d23 = dist(p2, p3)
    // 防止相邻点重合
    let t0 = 0.0
    let t1 = t0 + calc.max(d01, 1e-6)
    let t2 = t1 + calc.max(d12, 1e-6)
    let t3 = t2 + calc.max(d23, 1e-6)
    let tj = if i == 1 { 0 } else { 1 } // 首段含 t1，其后从段内起步避免重点
    for j in range(tj, n-seg + 1) {
      let t = t1 + (t2 - t1) * j / n-seg
      // Barry–Goldman 递推
      let a1-x = (t1 - t) / (t1 - t0) * p0.at(0) + (t - t0) / (t1 - t0) * p1.at(0)
      let a1-y = (t1 - t) / (t1 - t0) * p0.at(1) + (t - t0) / (t1 - t0) * p1.at(1)
      let a2-x = (t2 - t) / (t2 - t1) * p1.at(0) + (t - t1) / (t2 - t1) * p2.at(0)
      let a2-y = (t2 - t) / (t2 - t1) * p1.at(1) + (t - t1) / (t2 - t1) * p2.at(1)
      let a3-x = (t3 - t) / (t3 - t2) * p2.at(0) + (t - t2) / (t3 - t2) * p3.at(0)
      let a3-y = (t3 - t) / (t3 - t2) * p2.at(1) + (t - t2) / (t3 - t2) * p3.at(1)
      let b1-x = (t2 - t) / (t2 - t0) * a1-x + (t - t0) / (t2 - t0) * a2-x
      let b1-y = (t2 - t) / (t2 - t0) * a1-y + (t - t0) / (t2 - t0) * a2-y
      let b2-x = (t3 - t) / (t3 - t1) * a2-x + (t - t1) / (t3 - t1) * a3-x
      let b2-y = (t3 - t) / (t3 - t1) * a2-y + (t - t1) / (t3 - t1) * a3-y
      let x = (t2 - t) / (t2 - t1) * b1-x + (t - t1) / (t2 - t1) * b2-x
      let y = (t2 - t) / (t2 - t1) * b1-y + (t - t1) / (t2 - t1) * b2-y
      pts.push((x, y))
    }
  }
  line(..pts, stroke: curve-color)

  // 端点刻度 -3、2
  for (x, lab) in ((-3, [$-3$]), (2, [$2$])) {
    line((x, -0.08), (x, 0.08), stroke: axis-color)
    content((x, 0), anchor: "north", padding: (top: 2pt))[#text(size: label-size)[#lab]]
  }
  content((0.85, 1.85), anchor: "south", padding: (bottom: 1pt))[#text(size: label-size)[$y = f(x)$]]
})
