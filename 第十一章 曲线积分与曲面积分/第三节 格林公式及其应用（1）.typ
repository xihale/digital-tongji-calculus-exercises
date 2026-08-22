// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第三节 格林公式及其应用（1）]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设有界闭区域 $D$ 由分段光滑曲线 $L$ 围成，$L$ 取正向。若函数 $P(x, y), Q(x, y)$ 在 $D$ 上具有一阶连续偏导数，则 $oint_L P dif x + Q dif y =$
    ],
    options: (
      [$iint_D ((pd P)/(pd y)-(pd Q)/(pd x)) dif sigma$],
      [$iint_D ((pd Q)/(pd y)-(pd P)/(pd x)) dif sigma$],
      [$iint_D ((pd P)/(pd x)-(pd Q)/(pd y)) dif sigma$],
      [$iint_D ((pd Q)/(pd x)-(pd P)/(pd y)) dif sigma$],
    ),
    answer: [D],
    solution: [
      由格林公式，取正向：$oint_L P dif x + Q dif y = iint_D ((pd Q)/(pd x)-(pd P)/(pd y)) dif sigma$。选 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $L: x^2 + y^2 = a^2$，取逆时针方向，则 $oint_L x y^2 dif y - x^2 y dif x =$
    ],
    options: (
      [$pi a^2/2$],
      [$-pi a^4/2$],
      [$pi a^4/2$],
      [$-pi a^4$],
    ),
    answer: [C],
    solution: [
      $I = iint_D (y^2 - (-x^2)) dif sigma = iint_D (x^2 + y^2) dif sigma = int_0^(2 pi) dif theta int_0^a r^3 dif r = pi a^4/2$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设面积为 3 的平面有界闭区域 $D$ 由分段光滑曲线 $L$ 围成，$L$ 取正向，则 $oint_L y dif x + 2 dif y =$
    ],
    options: (
      [3],
      [-3],
      [-1],
      [无法计算],
    ),
    answer: [B],
    solution: [
      $I = iint_D (0 - 1) dif sigma = -sigma(D) = -3$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设 $L: x^2 + y^2 = 9$，取顺时针方向，则 $oint_L (2x - y + 4) dif x + (5y + 3x - 6) dif y =$
    ],
    answer: [$-36 pi$],
    solution: [
      $ Q_x - P_y = 3 - (-1) = 4 $。由于 $L$ 取顺时针方向：
      $ I = - iint_D 4 dif sigma = -4 dot 9 pi = -36 pi $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L$ 为椭圆 $x^2/a^2+y^2/b^2= 1$ 的正向边界，则 $oint_L x dif y - y dif x =$
    ],
    answer: [$2 pi a b$],
    solution: [
      $ Q_x - P_y = 1 - (-1) = 2 $
      $ oint_L x dif y - y dif x = iint_D 2 dif sigma = 2 pi a b $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L$ 为圆 $x^2 + y^2 = 1$ 上从点 $(1, 0)$经点 $(0, 1)$ 到点 $(-1, 0)$ 的一段弧，则 $int_L ee^(y^2) dif y =$
    ],
    answer: [$0$],
    solution: [
      起止点 $y$ 坐标均为 0，$int_L ee^(y^2) dif y = 0$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      利用格林公式计算 $iint_D x dif sigma$，其中 $D$ 是以三点 $O(0, 0), A(2, 0), B(2, 2)$ 为顶点的三角形闭区域
    ],
    solution: [
      由格林公式，取 $P = 0, Q = x^2/2$，则 $iint_D x dif sigma = oint_L x^2/2 dif y$，$L$ 为 $D$ 的正向边界：
          $L_1 (O -> A): y = 0, dif y = 0$；$L_2 (A -> B): x = 2$，$int_0^2 2 dif y = 4$；$L_3 (B -> O): y = x$，$int_2^0 x^2/2 dif x = -4/3$
          $ I = 4 - 4/3 = 8/3 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $oint_L (2x y - x^2) dif x + (x + y^2) dif y$，其中 $L$ 为由抛物线 $y = x^2$ 和 $y^2 = x$ 所围成的区域的正向边界曲线
    ],
    solution: [
      $ Q_x - P_y = 1 - 2x $
      $ I = int_0^1 int_(x^2)^(sqrt(x)) (1 - 2x) dif y dif x = int_0^1 (1 - 2x)(sqrt(x) - x^2) dif x = 1/30 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $int_L (ee^x sin y - m y) dif x + (ee^x cos y - m) dif y$，其中 $L$ 为圆 $x^2 + y^2 = a x$ ($a > 0$) 上从点 $(a, 0)$ 到点 $(0, 0)$ 的上半部分
    ],
    solution: [
      补 $S$: 从 $(0,0)$ 到 $(a,0)$ 的线段，且 $int_S = 0$。$C = L + S$ 为正向。
      $ Q_x - P_y = m $。$ I = iint_D m dif sigma = m dot 1/2 dot pi (a/2)^2 = pi m a^2/8 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $(oint_L (x + y) dif x - (x - y) dif y)/(x^2 + y^2)$，其中 $L$ 为一条无重点、分段光滑且不经过坐标原点的连续闭曲线，取逆时针方向
    ],
    solution: [
      $ = (x dif x + y dif y)/(x^2+y^2) + (y dif x - x dif y)/(x^2+y^2) = dif (ln sqrt(x^2+y^2)) - dif theta $
      闭路积分第一项为 0。原点在内时 $I = -2 pi$，在外时 $I = 0$。
    ],
  ),
)

#book-section(section-title, problems)
