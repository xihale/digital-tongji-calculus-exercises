// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第一节 微分中值定理]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [设函数 $f(x) = sin x$ 在区间 $[0, pi]$ 上满足罗尔中值定理的条件，则罗尔中值定理结论中的 $xi =$],
    options: ([$pi$], [$pi/2$], [$pi/3$], [$pi/4$]),
    answer: [B],
    solution: [
      $f(0) = f(pi) = 0$，满足罗尔定理条件。
      由 $f'(x) = cos x = 0$，在 $(0, pi)$ 内得 $xi = pi/2$。
    ],
  ),
  (
    kind: "choice",
    stem: [下列函数中在区间 $[1, e]$ 上满足拉格朗日中值定理条件的是],
    options: ([$ln x$], [$ln ln x$], [$1/ln x$], [$ln(2 - x)$]),
    answer: [A],
    solution: [
      A：$ln x$ 在 $[1, e]$ 上连续、在 $(1, e)$ 内可导。
      B：$ln ln x$ 在 $x = 1$ 处无定义。
      C：$1/ln x$ 在 $x = 1$ 处无定义。
      D：$ln(2 - x)$ 在 $x = e > 2$ 处无定义。
      故选 A。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [
      设函数 $f(x) = (x - 1)(x - 2)(x - 3)(x - 5)$，则 $f'(x) = 0$ 的实根个数及所在区间为
    ],
    answers: (
      [3 个],
      [$(1,2),(2,3),(3,5)$],
    ),
    solution: [
      $f$ 有四个互异实根 $1,2,3,5$。
      由罗尔定理，相邻两根之间各至少有一个 $f'$ 的零点，
      故 $f'(x) = 0$ 有 3 个实根，分别位于 $(1,2)$、$(2,3)$、$(3,5)$。
    ],
  ),

  // ===== 三、证明题 =====
  (
    kind: "proof",
    stem: [证明恒等式：$arcsin x + arccos x = pi/2$ （$-1 <= x <= 1$）],
    solution: [
      令 $f(x) = arcsin x + arccos x$，则
      $f'(x) = 1/sqrt(1-x^2) - 1/sqrt(1-x^2) = 0$，故 $f$ 为常数。
      取 $x = 0$：$f(0) = 0 + pi/2 = pi/2$，
      因此 $arcsin x + arccos x = pi/2$。
    ],
  ),
  (
    kind: "proof",
    stem: [
      若函数 $f(x)$ 在区间 $(a, b)$ 内具有二阶导数，且 $f(x_1) = f(x_2) = f(x_3)$，
      其中 $a < x_1 < x_2 < x_3 < b$，证明：在区间 $(x_1, x_3)$ 内至少存在一点 $xi$，使得 $f''(xi) = 0$
    ],
    solution: [
      由罗尔定理，存在 $c_1 in (x_1, x_2)$、$c_2 in (x_2, x_3)$ 使 $f'(c_1) = f'(c_2) = 0$。
      再对 $f'$ 在 $[c_1, c_2]$ 上应用罗尔定理，
      存在 $xi in (c_1, c_2) subset (x_1, x_3)$ 使 $f''(xi) = 0$。
    ],
  ),
  (
    kind: "proof",
    stem: [设 $a > b > 0$，证明：$(a - b)/a < ln(a/b) < (a - b)/b$],
    solution: [
      对 $f(x) = ln x$ 在 $[b, a]$ 上用拉格朗日中值定理，
      存在 $xi in (b, a)$ 使 $ln a - ln b = (a - b)/xi$，即 $ln(a/b) = (a - b)/xi$。
      由 $b < xi < a$ 得 $1/a < 1/xi < 1/b$，
      从而 $(a-b)/a < ln(a/b) < (a-b)/b$。
    ],
  ),
)

#book-section(section-title, problems)
