// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section, blank

#let section-title = [第一节 对弧长的曲线积分]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设 $L$ 为从点 $A(1, 0)$ 到点 $B(-1, 2)$ 的线段，则 $int_L (x + y) dif s =$
    ],
    options: (
      [$sqrt(2)$],
      [$2 sqrt(2)$],
      [2],
      [0],
    ),
    answer: [B],
    solution: [
      直线 $A B$: $y = 1 - x$, $x + y = 1$。$L$ 的长度 $l = sqrt((-1 - 1)^2 + (2 - 0)^2) = 2 sqrt(2)$。
          $ int_L (x + y) dif s = int_L 1 dif s = 2 sqrt(2) $
    ],
  ),
  (
    kind: "choice",
    stem: [
      $oint_L (x^2 + y^2) dif s =$，其中 $L$ 为圆 $x^2 + y^2 = 1$
    ],
    options: (
      [$int_(2 pi)^0 dif theta$],
      [$int_0^(2 pi) dif theta$],
      [$int_0^(2 pi) r^2 dif theta$],
      [$int_0^(2 pi) sqrt(2) dif theta$],
    ),
    answer: [B],
    solution: [
      在 $L$ 上 $x^2 + y^2 = 1$, $dif s = 1 dif theta$。
          $ oint_L (x^2 + y^2) dif s = int_0^(2 pi) 1 dif theta $
    ],
  ),
  (
    kind: "choice",
    stem: [
      $int_L x dif s =$，其中 $L$ 为抛物线 $y = x^2$ 上相应于 $x$ 从 0 到 1 的一段弧
    ],
    options: (
      [$(1)/(12 (5 sqrt(5) - 1))$],
      [$5 sqrt(5) - 1$],
      [$(1)/(12)$],
      [$(1)/(8 (5 sqrt(5) - 1))$],
    ),
    answer: [A],
    solution: [
      由 $y = x^2$ 得 $ dif s = sqrt(1 + 4x^2) dif x $
          $ I = int_0^1 x sqrt(1 + 4x^2) dif x = [1/12 (1 + 4x^2)^(3/2)]_0^1 = 1/12 (5 sqrt(5) - 1) $
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $O M$ 为从点 $O(0, 0)$ 到点 $M(1, 1)$ 的线段，则与 $int_(O M) ee^(sqrt(x^2 + y^2)) dif s$ 不相等的积分是
    ],
    options: (
      [$int_0^1 sqrt(2) ee^(sqrt(2) x) dif x$],
      [$int_0^1 sqrt(2) ee^(sqrt(2) y) dif y$],
      [$int_0^(sqrt(2)) sqrt(2) ee^r dif r$],
      [$int_0^(sqrt(2)) ee^r dif r$],
    ),
    answer: [C],
    solution: [
      参数化 $x=t, y=t, t in [0, 1]$，则 $dif s = sqrt(2) dif t, sqrt(x^2+y^2) = sqrt(2) t$。
          $ I = int_0^1 ee^(sqrt(2)t) sqrt(2) dif t = int_0^(sqrt(2)) ee^r dif r $
          A, B, D 与原积分等价，C 多了系数 $sqrt(2)$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设 $L$ 为曲线 $cases(x = 2 cos t, y = 2 sin t, z = t)$，介于 $t = 0$ 到 $t = pi$ 的一段弧，则 $int_L z / (x^2 + y^2) dif s =$
    ],
    answer: [$(sqrt(5) pi^2)/8$],
    solution: [
      $ x^2+y^2=4, z=t, dif s = sqrt((-2sin t)^2 + (2cos t)^2 + 1) dif t = sqrt(5) dif t $
          $ I = int_0^(pi) 1/4 t sqrt(5) dif t = (sqrt(5) pi^2)/8 $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L: cases(x = a cos t, y = a sin t)$ ($0 <= t <= 2 pi, a > 0$)，则 $oint_L (x^2 + y^2)^n dif s =$
    ],
    answer: [$2 pi a^(2 n + 1)$],
    solution: [
      $ x^2+y^2=a^2, dif s = a dif t $
          $ oint_L (x^2 + y^2)^n dif s = int_0^(2 pi) a^(2n) dot a dif t = 2 pi a^(2n+1) $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设在 $x O y$ 面内有一线密度为 $mu(x, y)$ 的曲线弧 $L$，则：
          此曲线弧关于 $x$ 轴的转动惯量为 $I_x =$ #blank()；
          关于 $y$ 轴的转动惯量为 $I_y =$ #blank()；
          其质心坐标 $(overline(x), overline(y))$ 中：
          $overline(x) =$ #blank()，$overline(y) =$ #blank()
        ],
    answers: (
      [$int_L y^2 mu(x, y) dif s$],
      [$int_L x^2 mu(x, y) dif s$],
      [$int_L x mu(x, y) dif s / int_L mu(x, y) dif s$],
      [$int_L y mu(x, y) dif s / int_L mu(x, y) dif s$],
    ),
    solution: [
      $ dif m = mu(x, y) dif s $
          $ I_x = int_L y^2 dif m = int_L y^2 mu(x, y) dif s $, $ I_y = int_L x^2 mu(x, y) dif s $
          $ overline(x) = int_L x mu dif s / int_L mu dif s $, $ overline(y) = int_L y mu dif s / int_L mu dif s $
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      计算 $int_L (2 x - y) dif s$，其中 $L$ 为联结点 $(0, 0), (1, 0), (0, 1)$ 的闭折线
    ],
    solution: [
      $L_1: y=0, x in [0, 1], dif s = dif x$
          $ I_1 = int_0^1 2x dif x = 1 $
          $L_2: x+y=1, x in [0, 1], dif s = sqrt(2) dif x$
          $ I_2 = int_0^1 (2x-(1-x)) sqrt(2) dif x = sqrt(2)/2 $
          $L_3: x=0, y in [0, 1], dif s = dif y$
          $ I_3 = int_0^1 (-y) dif y = -1/2 $
          $ I = 1 + sqrt(2)/2 - 1/2 = (1 + sqrt(2))/2 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $oint_L x dif s$，其中 $L$ 为由直线 $y = x$ 及抛物线 $y = x^2$ 所围成闭区域的整个边界
    ],
    solution: [
      $L_1: y=x, x in [0, 1], dif s = sqrt(2) dif x$
          $ I_1 = sqrt(2) int_0^1 x dif x = sqrt(2)/2 $
          $L_2: y=x^2, x in [0, 1], dif s = sqrt(1+4x^2) dif x$
          $ I_2 = int_0^1 x sqrt(1+4x^2) dif x = 1/(12 (5 sqrt(5) - 1)) $
          $ I = sqrt(2)/2 + 1/(12 (5 sqrt(5) - 1)) $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $oint_L ee^(sqrt(x^2 + y^2)) dif s$，其中 $L$ 为圆 $x^2 + y^2 = a^2$，直线 $y = x$ 和 $x$ 轴在第一象限所围成扇形的整个边界
    ],
    solution: [
      $L_1: y=0, x in [0, a], dif s = dif x$
          $ I_1 = ee^a - 1 $
          $L_2: r=a, theta in [0, pi/4], dif s = a dif theta$
          $ I_2 = int_0^(pi/4) ee^a a dif theta = (pi a ee^a)/4 $
          $L_3: y=x, r in [0, a], dif s = dif r$
          $ I_3 = ee^a - 1 $
          $ I = 2(ee^a - 1) + (pi a ee^a)/4 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $int_L x y z dif s$，其中 $L$ 为曲线弧 $x = t, y = 2/(3 sqrt(2) t^(3/2)), z = 1/(2 t^2)$ ($0 <= t <= 1$)
    ],
    solution: [
      $ x=t, y=2/(3 sqrt(2) t^(3/2)), z=1/(2 t^2) $, $ dif s = sqrt(1 + 2t + t^2) dif t = (1+t) dif t $
          $ I = int_0^1 t dot 2/(3 sqrt(2) t^(3/2)) dot 1/(2 t^2) (1+t) dif t = sqrt(2)/3 int_0^1 (t^(-5/2) + t^(-3/2)) dif t = 16 sqrt(2)/143 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      （附加题）计算 $oint_L (2 y^2 + z^2) dif s$，其中 $L$ 为球面 $x^2 + y^2 + z^2 = a^2$ 与平面 $x = y$ 相交的圆
    ],
    solution: [
      在 $L$ 上 $x=y => 2y^2+z^2=x^2+y^2+z^2=a^2$。
          $ I = oint_L a^2 dif s = a^2 dot 2 pi a = 2 pi a^3 $
    ],
  ),
)

#book-section(section-title, problems)
