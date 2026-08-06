// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section, blank

#let section-title = [第二节 二重积分的计算法（1）]

#let problems = (
  (
    kind: "judge",
    kind-title: [一、判断题（如果错误，请加以改正）],
    stem: [
      设闭区域 $D$ 由直线 $y = x, y = 1, x = 3$ 所围成，要计算 $iint_D 1/(y ln x) dif sigma$。
          （1）既可将 $D$ 视为 $X$ 型区域，也可视为 $Y$ 型区域；

          （2）若将 $D$ 视为 $X$ 型区域，则其相应积分限为 $1 <= x <= 3, 1 <= y <= x$；

          （3）该积分的结果为 2。
    ],
    answer: [√],
    solution: [
      (1) √；(2) ×；(3) ×。
    ],
  ),
  (
    kind: "choice",
    kind-title: [二、选择题],
    stem: [
      设闭区域 $D$ 由 $x$ 轴和 $y = sin x$ ($0 <= x <= pi$) 所围成，则 $iint_D y dif sigma =$。
    ],
    options: (
      [$pi/6$],
      [$pi/4$],
      [$pi/3$],
      [$pi/2$],
    ),
    answer: [B],
    solution: [
      $I = int_0^pi dif x int_0^(sin x) y dif y = 1/2 int_0^pi sin^2 x dif x = 1/2 dot pi/2 = pi/4$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设闭区域 $D$ 由 $y = x^2$ 和 $y = x + 2$ 所围成，则 $iint_D f(x, y) dif sigma =$。
    ],
    options: (
      [$int_(-1)^2 dif x int_(x^2)^(x + 2) f(x, y) dif y$],
      [$int_(-1)^2 dif x int_0^2 f(x, y) dif y$],
      [$int_(-2)^1 dif x int_(x^2)^(x + 2) f(x, y) dif y$],
      [$int_0^1 dif x int_(x^2)^(x + 2) f(x, y) dif y$],
    ),
    answer: [A],
    solution: [
      联立 $y = x^2$ 与 $y = x + 2$：
          $ x^2 - x - 2 = 0 => x = -1, 2 $
          $ D = \{ (x, y) | -1 <= x <= 2, x^2 <= y <= x + 2 \} $
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $f(x, y)$ 是连续函数，则 $int_0^4 dif x int_x^(2 sqrt(x)) f(x, y) dif y =$。
    ],
    options: (
      [$int_0^4 dif y int_(y^2/4)^y f(x, y) dif x$],
      [$int_0^4 dif y int_(-y)^(y^2/4) f(x, y) dif x$],
      [$int_0^4 dif y int_(1/4)^y f(x, y) dif x$],
      [$int_0^4 dif y int_(y^2/2)^y f(x, y) dif x$],
    ),
    answer: [A],
    solution: [
      积分区域由 $y = x$ 和 $y = 2 sqrt(x)$ 围成，交点为 $(0, 0)$ 和 $(4, 4)$。改为 $Y$ 型区域，则 $0 <= y <= 4$，对于固定的 $y$，有 $y^2/4 <= x <= y$。故 $I = int_0^4 dif y int_{y^2/4}^y f(x, y) dif x$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      若闭区域 $D$ 由直线 $x + y = 1, x = 0, y = 0$ 所围成，且 $int_0^1 f(x) dif x = int_0^1 x f(x) dif x$ ，则 $iint_D f(x) dif sigma =$。
    ],
    options: (
      [2],
      [0],
      [0.5],
      [1],
    ),
    answer: [B],
    solution: [
      $ iint_D f(x) dif sigma = int_0^1 f(x) dif x int_0^(1 - x) dif y = int_0^1 (1 - x) f(x) dif x = int_0^1 f(x) dif x - int_0^1 x f(x) dif x = 0 $
    ],
  ),
  (
    kind: "blank",
    kind-title: [三、填空题],
    stem: [
      已知闭区域 $D = {(x, y) | a <= x <= b, 0 <= y <= 1}$，且 $iint_D y f(x) dif sigma = 1$，则 $int_a^b f(x) dif x =$
    ],
    answer: [$2$],
    solution: [
      $ iint_D y f(x) dif sigma = (int_a^b f(x) dif x) (int_0^1 y dif y) = 1/2 int_a^b f(x) dif x = 1 => int_a^b f(x) dif x = 2 $
    ],
  ),
  (
    kind: "blank",
    stem: [
      设闭区域 $D$ 由两坐标轴与直线 $x + y = 2$ 所围成，若将 $D$ 视为 $X$ 型区域，则其相应积分限为 #blank()；若将 $D$ 视为 $Y$ 型区域，则其相应积分限为 #blank()
    ],
    answers: (
      [$0 <= x <= 2, 0 <= y <= 2 - x$],
      [$0 <= y <= 2, 0 <= x <= 2 - y$],
    ),
    solution: [
      区域边界为 $x=0, y=0, x+y=2$。
          $X$ 型：$0 <= x <= 2, 0 <= y <= 2 - x$。
          $Y$ 型：$0 <= y <= 2, 0 <= x <= 2 - y$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设闭区域 $D$ 由曲线 $y = e^x$ 与直线 $x = 0, y = e$ 所围成，若将 $D$ 视为 $X$ 型区域，则其相应积分限为 #blank()；若将 $D$ 视为 $Y$ 型区域，则其相应积分限为 #blank()
    ],
    answers: (
      [$0 <= x <= 1, e^x <= y <= e$],
      [$1 <= y <= e, 0 <= x <= ln y$],
    ),
    solution: [
      由 $y=e^x$ 得 $x=ln y$。交点 $(0,1)$ 和 $(1,e)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设闭区域 $D$ 由曲线 $y^2 = 2x$ 与直线 $y = x - 4$ 所围成。
          若将 $D$ 视为 $X$ 型区域，则其相应积分限为 #blank()；
          若将 $D$ 视为 $Y$ 型区域，则其相应积分限为 #blank()
        ],
    answers: (
      [$0 <= x <= 2, -sqrt(2x) <= y <= sqrt(2x)$ 和 $2 <= x <= 8, x - 4 <= y <= sqrt(2x)$],
      [$-2 <= y <= 4,(y^2)/(2)<= x <= y + 4$],
    ),
    solution: [
      联立 $x = y^2/2$ 与 $x = y + 4 => y^2/2 - y - 4 = 0 => y = -2, 4$。
          $Y$ 型：$-2 <= y <= 4, y^2/2 <= x <= y + 4$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [四、计算题],
    stem: [
      计算 $iint_D x sqrt(y) dif sigma$，其中 $D$ 是由曲线 $y = sqrt(x), y = x^2$ 所围成的闭区域。
    ],
    solution: [
      $6/55$

      $ I = int_0^1 x dif x int_(x^2)^(sqrt(x)) y^(1/2) dif y = int_0^1 x [2/(3 y^(3/2))]_(x^2)^(sqrt(x)) dif x $
          $ = 2/3 int_0^1 (x^(7/4) - x^4) dif x = 2/3 [4/11 x^(11/4) - 1/5 x^5]_0^1 = 6/55 $
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_D e^(x + y) dif sigma$，其中闭区域 $D = {(x, y) | |x| + |y| <= 1}$。
    ],
    solution: [
      $e - 1/e$

      区域 $D$ 关于 $x$ 轴和 $y$ 轴均对称。
          $I = iint_D e^x e^y dif sigma = int_(-1)^1 e^x (int_(|x|-1)^(1-|x|) e^y dif y) dif x$
          $= int_(-1)^1 e^x [ e^y ]_(|x|-1)^(1-|x|) dif x$
          $= int_(-1)^1 e^x (e^(1-|x|) - e^((|x|-1))) dif x$
          分段积分：
          $I = int_(-1)^0 e^x (e^(1+x) - e^(-1-x)) dif x + int_0^1 e^x (e^(1-x) - e^(x-1)) dif x$
          $= int_(-1)^0 (e^(2x+1) - e^(-1)) dif x + int_0^1 (e - e^(2x-1)) dif x$
          $= [ 1/2 e^(2x+1) - x e^(-1) ]_(-1)^0 + [ e x - 1/2 e^(2x-1) ]_0^1$
          $= (1/2 e - 0) - (1/2 e^(-1) + e^(-1)) + (e - 1/2 e) - (0 - 1/2 e^(-1))$
          $= 1/2 e - 3/2 e^(-1) + 1/2 e + 1/2 e^(-1) = e - e^(-1)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      计算 $iint_D (x^2 + y^2 - x) dif sigma$，其中 $D$ 是由直线 $y = 2, y = x$ 及 $y = 2x$ 所围成的闭区域。
    ],
    solution: [
      $13/6$

      $ I = int_0^2 dif y int_(y/2)^y (x^2 + y^2 - x) dif x $
          $ iint_D x^2 dif sigma = 1/3 int_0^2 (y^3 - y^3/8) dif y = 7/6 $
          $ iint_D y^2 dif sigma = int_0^2 y^2 (y - y/2) dif y = 2 $
          $ iint_D x dif sigma = 1/2 int_0^2 (y^2 - y^2/4) dif y = 1 $
          $ I = 7/6 + 2 - 1 = 13/6 $
    ],
  ),
)

#book-section(section-title, problems)
