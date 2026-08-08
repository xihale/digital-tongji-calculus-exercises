// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第二节 对坐标的曲线积分]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设 $L$ 为抛物线 $y = x^2$ 上从点 $A(1, 1)$ 到点 $B(0, 0)$ 的一段弧，则 $int_L x dif y =$。
    ],
    options: (
      [$int_0^1 2x^2 dif x$],
      [$int_1^0 x dif y$],
      [$int_1^0 2x^2 dif x$],
      [$int_0^1 sqrt(y) dif y$],
    ),
    answer: [C],
    solution: [
      $ y = x^2 => dif y = 2x dif x $。起点 $x = 1$，终点 $x = 0$。
          $ int_L x dif y = int_1^0 x (2x) dif x = int_1^0 2x^2 dif x $
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $L$ 为从点 $(a, 0)$ 到点 $(-a, 0)$ 的线段，则 $int_L (x + y^2) dif x =$。
    ],
    options: (
      [$a^2/2$],
      [$2 a$],
      [1],
      [0],
    ),
    answer: [D],
    solution: [
      在 $L$ 上 $y = 0 => int_L (x + y^2) dif x = int_a^(-a) x dif x = 0$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $L$ 为抛物线 $2y = x^2$ 上从点 $A(1, 1/2)$ 到点 $B(2, 2)$ 的一段弧，则 $int_L (2x/y) dif x - (x^2/y^2) dif y =$。
    ],
    options: (
      [-3],
      [0],
      [$3/2$],
      [3],
    ),
    answer: [B],
    solution: [
      $ (2x/y) dif x - (x^2/y^2) dif y = dif (x^2/y) $
          $ I = [x^2/y]_A^B = 4/2 - 1/(1/2) = 0 $
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $L$ 为从点 $(0, 0)$ 沿折线 $y = 1 - |x - 1|$ 到点 $A(2, 0)$ 的折线段，则 $int_L -y dif x + x dif y =$。
    ],
    options: (
      [0],
      [-1],
      [2],
      [-2],
    ),
    answer: [D],
    solution: [
      取 $A O$ 封闭 $L$。$ oint_(L+A O) -y dif x + x dif y = 2 iint_D dif sigma = 2 $
          $ int_(A O) = 0 $。由于 $L$ 为顺时针，$I = -2$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设 $L$ 为抛物线 $y = x^2$ 上从点 $A(0, 0)$ 到点 $B(1, 1)$ 的一段弧，则 $int_L x dif y =$
    ],
    answer: [$2/3$],
    solution: [
      $ y=x^2, dif y=2x dif x, x in [0, 1] $
          $ int_L x dif y = int_0^1 2x^2 dif x = 2/3 $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L$ 为曲线 $y = sqrt(x)$ 上从点 $A(0, 0)$ 到点 $B(1, 1)$ 的一段弧，则将对坐标的曲线积分 $int_L P(x, y) dif x + Q(x, y) dif y$ 化为对弧长的曲线积分是
    ],
    solution: [
      $ y=sqrt(x), dif s = sqrt(1+1/(4x)) dif x = sqrt(4x+1)/(2sqrt(x)) dif x $
          $ dif x = 2sqrt(x)/sqrt(4x+1) dif s $, $ dif y = 1/sqrt(4x+1) dif s $
          $ int_L P dif x + Q dif y = int_L [(2sqrt(x) P + Q)/sqrt(4x+1)] dif s $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $L$ 是上半圆 $x^2 + y^2 = 2x$ 从点 $(0, 0)$ 到点 $(1, 1)$ 的一段弧，则将对坐标的曲线积分 $int_L P(x, y) dif x + Q(x, y) dif y$ 化为对弧长的曲线积分是
    ],
    solution: [
      $ (x-1)^2+y^2=1 => dif x = -y dif s, dif y = (x-1) dif s $
          $ int_L P dif x + Q dif y = int_L [-y P + (x-1)Q] dif s $
    ],
  ),
  (
    kind: "blank",
    stem: [
      在力 $bold(F) = (x, -y, x)$ 的作用下，质点从点 $(0, 0, 0)$ 沿曲线 $L: cases(x = t, y = 2t, z = t^2)$ 移至点 $(1, 2, 1)$，则力 $bold(F)$ 所做的功为
    ],
    solution: [
      $ x=t, y=2t, z=t^2, t in [0, 1] $
          $ W = int_0^1 [t dot 1 - 2t dot 2 + t dot 2t] dif t = int_0^1 (2t^2-3t) dif t = -5/6 $
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      计算 $int_L (x^2 - y^2) dif x$，其中 $L$ 为抛物线 $y = x^2$ 上从点 $(0, 0)$ 到点 $(2, 4)$ 的一段弧。
    ],
    solution: [
      $ x=t, y=t^2, t in [0, 2] $
          $ int_L (x^2-y^2) dif x = int_0^2 (t^2-t^4) dif t = [t^3/3-t^5/5]_0^2 = -56/15 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $I = int_(O A) (x^2 - y^2) dif x + x y dif y$，其中点 $O(0, 0)$，点 $A(1, 1)$，$O A$ 为： \
          (1) 直线 $y = x$ 上从点 $O$ 到点 $A$ 的线段；
          (2) 从点 $O$ 经点 $(1, 0)$ 到点 $A$ 的折线段；
          (3) 抛物线 $y = x^2$ 上从点 $O$ 到点 $A$ 的一段弧；
          (4) 从点 $O$ 经点 $(0, 1)$ 到点 $A$ 的折线段。
    ],
    solution: [
      (1) $ y=x $, $ I = int_0^1 t^2 dif t = 1/3 $
          (2) $O -> (1,0) -> A$: $ I = int_0^1 x^2 dif x + int_0^1 1 dot y dif y = 1/3+1/2=5/6 $
          (3) $ y=x^2 $, $ I = int_0^1 [x^2-x^4 + x(x^2)2x] dif x = int_0^1 (x^2+x^4) dif x = 8/15 $
          (4) $O -> (0,1) -> A$: $ I = 0 + int_0^1 (x^2-1) dif x = -2/3 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $int_L (x^2 + 2x y) dif x + (x^2 + y^4) dif y$，其中 $L$ 为： \
          (1) 沿抛物线 $y = x^2$ 从点 $O(0, 0)$ 到点 $A(1, 1)$ 的一段弧；
          (2) 沿直线从点 $O(0, 0)$ 经点 $B(1, 0)$ 到点 $A(1, 1)$ 的折线段；
          (3) 沿直线从点 $O(0, 0)$ 经点 $C(0, 1)$ 到点 $A(1, 1)$ 的折线段；
          (4) 沿曲线 $y = sin(pi x/2)$ 从点 $O(0, 0)$ 到点 $A(1, 1)$ 的一段弧。
    ],
    solution: [
      $ P_y = 2x, Q_x = 2x =>$ 与路径无关。
          $ U = x^3/3+ x^2y +y^5/5 $
          $ I = U(1,1) - U(0,0) = 1/3+ 1 +1/5=23/15 $
    ],
  ),
)

#book-section(section-title, problems)
