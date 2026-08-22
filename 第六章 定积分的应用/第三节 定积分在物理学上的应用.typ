// 数据层：只放内容。公式一律行内。
#import "../lib/render.typ": book-section
#import "../lib/figures.typ": fig-rod-mass

#let section-title = [第三节 定积分在物理学上的应用]

#let problems = (
  // ===== 一、填空题 =====
  (
    kind: "blank",
    stem: [
      设 $x$ 轴上有一长度为 $l$、线密度为常数 $mu$ 的细棒，
      在与细棒右端的距离为 $a$ 处有一质量为 $m$ 的质点 $M$（见图 6-1）。
      已知万有引力常数为 $G$，则质点 $M$ 与细棒之间的引力大小为
    ],
    answer: [$(G m mu l)/(a(a + l))$ 或 $G m mu (1/a - 1/(a + l))$],
    figure: fig-rod-mass(),
    figure-caption: [图6-1],
    solution: [
      取细棒上位置 $x$ 的微元，距质点的距离为 $r = a + l - x$，微元质量 $dif m = mu dif x$。
      微元与质点间引力 $dif F = G m mu dif x / r^2$，积分得
      $F = G m mu integral_0^l dif x/(a + l - x)^2 = G m mu (1/a - 1/(a + l))$。
    ],
  ),

  // ===== 二、应用题（简答） =====
  (
    kind: "short",
    stem: [
      试根据胡克定律，计算弹簧由原长拉伸 $6$ cm 所需要做的功
      （已知弹簧的劲度系数以 N/m 为单位时数值为 $k$）
    ],
    solution: [
      胡克定律给出拉力 $F = k x$。功 $W = integral_0^(0.06) k x dif x = k/2 (0.06)^2 = 1.8 times 10^(-3) k$ J。
    ],
  ),
  (
    kind: "short",
    stem: [
      一物体按规律 $x = c t^3$ 做直线运动，介质的阻力与速度的平方成正比，
      计算该物体由 $x = 0$ 移至 $x = a$ 时，克服介质阻力所做的功
    ],
    solution: [
      速度 $v = (dif x)/(dif t) = 3 c t^2$。以位置 $x$ 表示时，$t = (x/c)^(1/3)$，故 $v = 3 c^(1/3) x^(2/3)$。
      阻力 $F = k v^2 = 9 k c^(2/3) x^(4/3)$，所做的功
      $W = integral_0^a 9 k c^(2/3) x^(4/3) dif x = 27/7 k c^(2/3) a^(7/3)$。
    ],
  ),
  (
    kind: "short",
    stem: [
      有一圆锥形贮水池（上大下小），深 $15$ m，口径 $20$ m，盛满水，
      现用泵将水吸尽，需做多少功？
    ],
    solution: [
      设底部为原点，水面在 $y = 15$。任意高度 $y$ 处截面半径 $r = (10/15) y = (2/3) y$。
      薄层体积 $dif V = pi r^2 dif y = pi (4/9) y^2 dif y$，需提升的距离为 $15 - y$。
      功 $W = rho g integral_0^15 pi (4/9) y^2 (15 - y) dif y = rho g pi (16875)/9$，
      取 $rho = 1000$ kg/m³、$g = 9.8$ m/s²，可得 $W approx 5.78 times 10^7$ J。
    ],
  ),
  (
    kind: "short",
    stem: [
      有一等腰梯形闸门，它的两条底边分别长 $10$ m 和 $6$ m，高为 $20$ m，
      较长的底边与水面相齐。计算闸门的一侧所受的水压力
    ],
    solution: [
      设深度 $y$ 自水面向下，梯形宽度线性变化：$w(y) = 10 - 0.2 y$。
      压力元素 $dif F = rho g y w(y) dif y$，总压力
      $F = rho g integral_0^20 y (10 - 0.2 y) dif y = rho g · 4400/3$。
      取 $rho g = 9800$ N/m³，得 $F approx 1.44 times 10^7$ N。
    ],
  ),
  (
    kind: "short",
    stem: [
      一底为 $8$ cm、高为 $6$ cm 的等腰三角形铅直地浸没在水中，顶在上，
      底在下且与水面平行，而顶离水面 $3$ cm，试求它每面所受的水压力
    ],
    solution: [
      以深度 $y$（单位：m）从水面量起，范围 $0.03 <= y <= 0.09$。
      该高度处宽度 $w(y) = (4/3)(y - 0.03)$，压力元素 $dif F = rho g y w(y) dif y$。
      $F = rho g integral_(0.03)^(0.09) y (4/3)(y - 0.03) dif y = (4 rho g/3) · 0.000126 approx 1.65$ N，
      两侧受力相同。
    ],
  ),
  (
    kind: "short",
    stem: [
      （附加题）半径为 $r$ 的球沉入水中，球的上部与水面相切，球的密度 $rho$ 与水相同，
      现将球从水中取出，需做多少功？
    ],
    solution: [
      球质量与水相同，重力 $G = rho g (4/3) pi r^3$。
      提升位移 $s$（$0$ 至 $2r$）时浮力 $B(s) = rho g V(s)$，其中 $V(s)$ 为浸没体积。
      计算可得净向下力 $G - B(s) = rho g pi (r s^2 - (s^3)/3)$。
      故所做的功 $W = integral_0^(2r) rho g pi (r s^2 - (s^3)/3) dif s = (4/3) rho g pi r^4$。
    ],
  ),
)

#book-section(section-title, problems)
