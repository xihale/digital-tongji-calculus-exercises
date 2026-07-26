// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section

#let section-title = [第二节 可分离变量的微分方程]

#let problems = (
  // ===== 一、选择题 =====
  (
    kind: "choice",
    stem: [
      关于微分方程 $y'' + 2 y' + y = e^x$ 的下列结论：
      ① 该方程是齐次微分方程，② 该方程是线性微分方程，
      ③ 该方程是常系数微分方程，④ 该方程为二阶微分方程，其中正确的是
    ],
    options: ([①②③], [①②④], [①③④], [②③④]),
    answer: [D],
    solution: [
      最高阶导数为二阶，故④正确；右端不为零，不是齐次方程，①错误；
      满足线性形式且系数为常数，②③正确。
    ],
  ),
  (
    kind: "choice",
    stem: [下列方程中是一阶微分方程的是],
    options: (
      [$(y - x y')^2 = x^2 y''$],
      [$(y'')^2 + 5(y')^4 - y^5 + x^7 = 0$],
      [$(x^2 - y^2) dif x + (x^2 + y^2) dif y = 0$],
      [$x y'' + y' + y = 0$],
    ),
    answer: [C],
    solution: [
      选项 C 仅含一阶微分；其余均出现 $y''$，故只有 C 为一阶微分方程。
    ],
  ),

  // ===== 二、填空题 =====
  (
    kind: "blank",
    stem: [$x y'' + 2 x^2 (y')^2 + x^3 y = x^4 + 1$ 是几阶微分方程？阶数为],
    answer: [$2$],
    solution: [方程中最高阶导数为 $y''$，故为 2 阶微分方程。],
  ),
  (
    kind: "blank",
    stem: [微分方程 $y' = 2y/x$ 的通解为],
    answer: [$y = C x^2$],
    solution: [分离变量 $(dif y)/y = 2 (dif x)/x$，积分得 $ln|y| = 2 ln|x| + C'$，即 $y = C x^2$。],
  ),

  // ===== 三、计算题 =====
  (
    kind: "compute",
    stem: [
      确定函数 $y = (C_1 + C_2 x) e^(2x)$ 中所含的参数，
      使得该函数满足初值条件 $y|_(x=0) = 0$，$y'|_(x=0) = 1$。
    ],
    solution: [
      由 $y(0) = C_1 = 0$。
      $y' = (C_2 + 2(C_1 + C_2 x)) e^(2x)$，代入 $x = 0$ 得 $y'(0) = C_2 = 1$。
      故特解为 $y = x e^(2x)$。
    ],
  ),
  (
    kind: "compute",
    stem: [写出在点 $(x, y)$ 处的切线的斜率等于该点横坐标平方的曲线所满足的微分方程。],
    solution: [切线斜率 $y' = x^2$，故微分方程为 $(dif y)/(dif x) = x^2$。],
  ),
  (
    kind: "compute",
    stem: [求下列微分方程的通解：],
    parts: (
      [$x y' - y ln y = 0$；],
      [$(e^(x + y) - e^x) dif x + (e^(x + y) + e^y) dif y = 0$。],
    ),
    solution-parts: (
      [
        设 $y > 0$，分离变量得 $(dif y)/(y ln y) = (dif x)/x$。
        积分得 $ln|ln y| = ln|x| + C$，整理为 $ln y = C_1 x$，通解 $y = e^(C_1 x)$。
      ],
      [
        $M = e^(x+y) - e^x$，$N = e^(x+y) + e^y$，有 $M_y = N_x = e^(x+y)$，方程恰当。
        势函数 $F(x,y) = e^(x+y) - e^x + e^y = C$ 即为通解。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [求下列微分方程满足所给初值条件的特解：],
    parts: (
      [$cos x sin y dif y = cos y sin x dif x$，$y|_(x=0) = pi/4$；],
      [$y' sin x = y ln y$，$y|_(x=pi/2) = e$。],
    ),
    solution-parts: (
      [
        化为 $tan y thin dif y = tan x thin dif x$，积分得 $cos y = C_1 cos x$。
        代入 $y(0) = pi/4$，得 $C_1 = sqrt(2)/2$，特解 $cos y = (sqrt(2)/2) cos x$。
      ],
      [
        分离变量 $(dif y)/(y ln y) = (dif x)/sin x$，积分得 $ln y = C_1 tan(x/2)$。
        由 $y(pi/2) = e$ 得 $C_1 = 1$，故 $y = exp[tan(x/2)]$。
      ],
    ),
  ),
  (
    kind: "compute",
    stem: [
      一曲线通过点 $(2,3)$，且它在两坐标轴间的任一切线均被切点所平分，求该曲线方程。
    ],
    solution: [
      设斜率 $m = y'$，截距条件给出 $m = -y/x$。
      方程 $(dif y)/(dif x) = -y/x$ 分离变量得 $x y = C_1$。
      代入 $(2,3)$ 得 $C_1 = 6$，故曲线方程为 $x y = 6$。
    ],
  ),

  // ===== 四、应用题 =====
  (
    kind: "short",
    stem: [
      一个半球体形状的雪堆，其体积融化率与半球体面积 $A$ 成正比，比例系数 $k > 0$。
      假设在融化过程中雪堆始终保持半球体形状，已知半径为 $r_0$ 的雪堆在开始融化的 $3$ h 内，
      融化了其体积的 $7/8$，问：雪堆全部融化需要多少时间？
    ],
    solution: [
      半球 $V = (2/3) pi r^3$、$A = 2 pi r^2$，由 $(dif V)/(dif t) = -k A$ 得 $(dif r)/(dif t) = -k$，
      故 $r(t) = r_0 - k t$。3 小时后体积剩 $1/8$，半径为 $r_0/2$，得 $k = r_0/6$。
      当 $r = 0$ 时 $t = 6$ h。
    ],
  ),

  // ===== 五、证明题 =====
  (
    kind: "proof",
    stem: [验证：$x^2 - x y + y^2 = C$ 所确定的函数为微分方程 $(x - 2y) y' = 2x - y$ 的解。],
    solution: [
      对 $x^2 - x y + y^2 = C$ 两边求导得 $2x - y - x y' + 2 y y' = 0$，
      移项得 $(x - 2y) y' = 2x - y$，与题给方程一致。
    ],
  ),
)

#book-section(section-title, problems)
