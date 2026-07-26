// 下册试卷：题面=原书扫描页；答案=书后 OCR 纯文本。
#import "../lib/style.typ": gap-item, muted, solution-color, answer-color, stem-color

// 进入目录
#heading(level: 2)[高等数学(下册)期末测试模拟卷(二)]

#text(size: 0.9em, fill: muted)[
  题面为原书扫描页（结构化录入待校对）。答案为 OCR 纯文本速查，符号可能不准，请对照下册 PDF。
]

#v(gap-item)

  #block(width: 100%, breakable: true)[
    #image("images/下册/page-091.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-092.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-093.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-094.jpg", width: 100%)
  ]
  #v(0.8em)

#v(gap-item)
#block(width: 100%)[
  #set text(size: 0.92em, fill: solution-color)
  #text(weight: "bold", fill: answer-color)[参考答案与提示（OCR 纯文本）]
  #v(0.5em)
  #raw(block: true, "高等数学 (下册) 期末测试模拟卷 (二)]
一、 1. B. quad 2. A. quad 3. D. quad 4. C. quad 5. B.
二、 6. 3.
7. (3, 4, 1).
8. (f'_1 + y f'_2) dif x + (f'_1 + x f'_2) dif y.
9. sqrt(6).
10. int_0^(2 pi) dif theta int_0^1 rho dif rho int_rho^1 1/(1+rho^2) dif z.
11. F(t) = int_0^t dif x int_0^x f(x) dif y.
13. pi/2.
三、14. 提示: 已知曲线中第一个曲面的法向量 bold(n)_1 = \\{4x, 6y, 2z\\} |_( (1, -1, 2) ) = \\{4, -6, 4\\}, 第二个曲面的法向量 bold(n)_2 = \\{1, 1, 1\\}, 故所求切线的方向向量
 bold(T) = bold(n)_1 times bold(n)_2 = \\{-10, 0, 10\\}. 
于是, 得法平面方程
 -10 dot (x - 1) + 10 dot (z - 2) = 0, quad \"即\" quad x - z = -1. 
15. 提示: 因为 phi'_x = c phi'_1, phi'_y = c phi'_2, phi'_z = - a phi'_1 - b phi'_2, 所以
 (partial z)/(partial x) = - phi'_x/phi'_z = (c phi'_1)/(a phi'_1 + b phi'_2), quad (partial z)/(partial y) = - phi'_y/phi'_z = (c phi'_2)/(a phi'_1 + b phi'_2), 
故
[dot 122 dot] [dot 123 dot]
// ==================== PAGE 130 ====================
高等数学习题册（下册）\\
参考答案与提示\\
[CANKAODAANYUTISHI]
 a (partial z)/(partial x) + b (partial z)/(partial y) = (a c phi'_1 + b c phi'_2) / (a phi'_1 + b phi'_2) = c. 
16. 提示: iint_D y e^(x y) dif sigma = integral_0^1 dif x integral_0^x y e^(x y) dif y，即以 X 型区域计算比较繁杂，故选择 Y 型区域计算。
原式 = integral_0^1 dif y integral_y^1 y e^(x y) dif x = integral_0^1 (e^y - e) dif y = 1/2 e^2 - e. 
17. 提示:令 P = 3 sin x + 2 x y - 4 x, Q = x^2 - e^y，则 (partial P)/(partial y) = 2 x = (partial Q)/(partial x)，故曲线积分与路径无关。于是，改变路径，沿着折线 L_1 : y = 0, x : 0 -> pi ; L_2 : x = pi, y : 0 -> 2，积分有
 integral_L P dif x + Q dif y &= integral_(L_1 + L_2) P dif x + Q dif y \\
&= integral_0^pi (3 sin x - 4 x) dif x + integral_0^2 (pi^2 - e^y) dif y \\
&= 7 - e^2 . 
18. 提示:记 u_n = (-1)^(n-1) (2n - 1) / n，则收敛半径为
 R = lim_(n -> oo) abs(u_n / u_(n+1)) = lim_(n -> oo) ((2n - 1)/n) / ((2n + 1)/(n + 1)) = 1 . 
对于端点 x = 1，其通项 (-1)^(n-1) (2n - 1) / n -> 0，级数发散；对于端点 x = -1，其通项 -(2n - 1) / n -> -2 != 0，级数发散，故收敛域为 (-1, 1)。于是，级数的和函数为
 S(x) &= sum_(n=1)^oo (-1)^(n-1) (2n - 1) / n x^n = 2 sum_(n=1)^oo (-1)^(n-1) x^n - sum_(n=1)^oo (-1)^(n-1) 1/n x^n \\
&= 2 dot x / (1 + x) - sum_(n=1)^oo (-1)^(n-1) integral_0^x x^(n-1) dif x = (2 x) / (1 + x) - integral_0^x sum_(n=1)^oo (-1)^(n-1) x^(n-1) dif x \\
&= (2 x) / (1 + x) - ln(1 + x), quad x in (-1, 1) . 
19. 提示:作辅助面 Sigma_1: z = 0，取下侧，球面投影在下底面 D_(x y): x^2 + y^2 <= a^2。于是，有
 I &= (oiint_(Sigma + Sigma_1) - iint_(Sigma_1)) [x z^2 dif y dif z + (x^2 y - z^3) dif z dif x + (2 x y + y^2 z) dif x dif y] \\
&= iiint_Omega (x^2 + y^2 + z^2) dif x dif y dif z - (-1) iint_(D_(x y)) 2 x y dif x dif y \\
&= integral_0^(2 pi) dif theta integral_0^(pi/2) sin varphi dif varphi integral_0^a r^2 dot r^2 dif r + 0 = 2/5 pi a^5, 
其中 Omega 为 Sigma + Sigma_1 所围成的空间闭区域。
四、20. 提示:设长为 x，宽为 y。假设绕宽边旋转，则实际上是要求圆柱体体积 V = pi x^2 y 在条件 x + y = p 下的条件极值，为此构造函数
 L(x, y) = pi x^2 y + lambda (x + y - p) . 
解方程组
[· 124 ·]
 cases(
L'_x = 2 pi x y + lambda = 0,
L'_y = pi x^2 + lambda = 0,
L'_lambda = x + y - p = 0,
) 
得 x = 2/3 p, y = 1/3 p。由问题可知，圆柱体的最大体积一定存在，故当矩形的长、宽分别为 2/3 p 与 1/3 p 时，绕宽边旋转体积最大，其值为 4/27 pi p^3。
[= 高等数学(下册)")
]
