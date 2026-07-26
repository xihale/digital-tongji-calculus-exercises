// 下册试卷：题面=原书扫描页；答案=书后 OCR 纯文本。
#import "../lib/style.typ": gap-item, muted, solution-color, answer-color, stem-color

// 进入目录
#heading(level: 2)[高等数学(下册)期末测试真题(一)]

#text(size: 0.9em, fill: muted)[
  题面为原书扫描页（结构化录入待校对）。答案为 OCR 纯文本速查，符号可能不准，请对照下册 PDF。
]

#v(gap-item)

  #block(width: 100%, breakable: true)[
    #image("images/下册/page-095.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-096.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-097.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-098.jpg", width: 100%)
  ]
  #v(0.8em)

#v(gap-item)
#block(width: 100%)[
  #set text(size: 0.92em, fill: solution-color)
  #text(weight: "bold", fill: answer-color)[参考答案与提示（OCR 纯文本）]
  #v(0.5em)
  #raw(block: true, "高等数学(下册)期末测试真题(一)]
一、1. D. 2. D. 3. B. 4. B. 5. B. \\
6. A. 7. D. 8. A. 9. B. 10. B.
二、11. 7.
12. - dif x.
13. 1/2 (1 - e^(-4)).
14. {0, sqrt(10)/5, sqrt(15)/5}.
16. 4 sqrt(2).
三、17. 提示:直线 L_1 上的点为 (1, 2, 3)，所求平面的法向量为
 n = {1, 2, 3} times {1, 0, 1} = {2, 2, -2} . 
所以所求平面方程为
 x + y - z = 0 . 
18. 提示: z_x = 2 f'_1 + y cos x dot f'_2,
 z_(x y) = -2 f''_11 + (2 sin x - y cos x) f''_12 + cos x dot f'_2 + y sin x cos x f''_22 . 
19. 提示:
 iint_D (x^2 + y) dif x dif y &= 1/2 iint_D (x^2 + y^2) dif x dif y + iint_D y dif x dif y \\
&= 1/2 integral_0^(2 pi) dif theta integral_0^1 rho^2 rho dif rho = pi/4 . 
20. 提示:设坐标原点为 O，圆上一点 A(a, 0)，记 Q(x, y) = x e^y - 2y, P(x, y) = e^y + x - y，D 为 L 所围成的半圆。因此
 \"原式\" &= (oint_(L + O A) - integral_(O A)) (Q dif y + P dif x) \\
&= iint_D ((partial Q)/(partial x) - (partial P)/(partial y)) dif x dif y - integral_a^0 (1 + x) dif x \\
&= 1/8 pi a^2 - a^2/2 - a . 
21. 提示:作辅助曲面 Sigma_1: z = 0(x^2 + y^2 <= 4)，取上侧，Omega 为 Sigma 与 Sigma_1 所围成的空间闭区域。由高斯公式，得
[· 125 ·]
// ==================== PAGE 131 ====================
h(4pt),
align(center)[高等数学学习题册 (下册) \\ []]
 a (partial z) / (partial x) + b (partial z) / (partial y) = (a c varphi'_1 + b c varphi'_2) / (a varphi'_1 + b varphi'_2) = c . 
16. 提示：iint_D y e^(x y) dif sigma = int_1^2 dif x int_0^1 y e^(x y) dif y，即以 X 型区域计算比较繁杂，故选择 Y 型区域计算.
 \"原式\" = int_0^1 dif y int_1^2 y e^(x y) dif x = int_0^1 (e^(2y) - e^y) dif y = 1/2 e^2 - e . 
17. 提示：令 P = 3 sin x + 2 x y - 4 x, Q = x^2 - e^y，则 (partial P) / (partial y) = 2 x = (partial Q) / (partial x)，故曲线积分与路径无关. 于是，改变路径，沿着折线 L_1 : y = 0, x : 0 -> pi ; L_2 : x = pi, y : 0 -> 2，积分有
 int_L P dif x + Q dif y &= int_(L_1 + L_2) P dif x + Q dif y \\
&= int_0^pi (3 sin x - 4 x) dif x + int_0^2 (pi^2 - e^y) dif y \\
&= 7 - e^2 . 
18. 提示：记 u_n = (-1)^(n-1) (2n - 1) / n，则收敛半径为
 R = lim_(n -> oo) | u_n / u_(n+1) | = lim_(n -> oo) ((2n - 1) / n) / ((2n + 1) / (n + 1)) = 1 . 
对于端点 x = 1，其通项 (-1)^(n-1) (2n - 1) / n arrow.r.not 0，级数发散；对于端点 x = -1，其通项 - (2n - 1) / n -> -2 != 0，级数发散，故收敛域为 (-1, 1). 于是，级数的和函数为
 S(x) &= sum_(n=1)^oo (-1)^(n-1) (2n - 1) / n x^n = 2 sum_(n=1)^oo (-1)^(n-1) x^n - sum_(n=1)^oo (-1)^(n-1) 1 / n x^n \\
&= 2 dot x / (1 + x) - sum_(n=1)^oo (-1)^(n-1) int_0^x x^(n-1) dif x = (2 x) / (1 + x) - int_0^x sum_(n=1)^oo (-1)^(n-1) x^(n-1) dif x \\
&= (2 x) / (1 + x) - ln(1 + x) , quad x in (-1, 1) . 
19. 提示：作辅助面 Sigma_1 : z = 0，取下侧，球面投影在下底面 D_(x y) : x^2 + y^2 <= a^2. 于是，有
 I &= (oiint_(Sigma + Sigma_1) - iint_(Sigma_1)) [ x z^2 dif y dif z + (x^2 y - z^3) dif z dif x + (2 x y + y^2 z) dif x dif y ] \\
&= iiint_Omega (x^2 + y^2 + z^2) dif x dif y dif z - (-1) iint_(D_(x y)) 2 x y dif x dif y \\
&= int_0^(2 pi) dif theta int_0^(pi/2) sin varphi dif varphi int_0^a r^2 dot r^2 dif r + 0 = 2/5 pi a^5 , 
其中 Omega 为 Sigma + Sigma_1 所围成的空间闭区域.
四、20. 提示：设长为 x，宽为 y. 假设绕宽边旋转，则实际上是要求圆柱体体积 V = pi x^2 y 在条件 x + y = p 下的条件极值，为此构造函数
 L(x, y) = pi x^2 y + lambda (x + y - p) . 
解方程组
 cases(
L'_x = 2 pi x y + lambda = 0 \",\",
L'_y = pi x^2 + lambda = 0 \",\",
L'_lambda = x + y - p = 0 \",\"
) 
得 x = 2/3 p , y = 1/3 p. 由问题可知，圆柱体的最大体积一定存在，故当矩形的长、宽分别为 2 p / 3 与 p / 3 时，绕宽边旋转体积最大，其值为 4/27 pi p^3.
解方程组 \\
[参考答案与提示 \\ [CANKAODAANYUTISHI]],
h(4pt),
[ [高等数学 (下册) 期末测试真题 (一)]]
[一、], [1. D.], [2. D.], [3. B.], [4. B.], [5. B.],
[], [6. A.], [7. D.], [8. A.], [9. B.], [10. B.]
二、11. 7. \\
12. - dif x. \\
13. 1/2 (1 - e^(-4)). \\
14. (0, sqrt(10) / 5, sqrt(15) / 5). \\
15. 0. \\
16. 4 sqrt(2).
三、17. 提示：直线 L_1 上的点为 (1, 2, 3)，所求平面的法向量为
 n = lbrace 1, 2, 3 rbrace times lbrace 1, 0, 1 rbrace = lbrace 2, 2, -2 rbrace . 
所以所求平面方程为
 x + y - z = 0 . 
18. 提示：z_x = 2 f'_1 + y cos x dot f'_2,
 z_(x y) = -2 f''_(1 1) + (2 sin x - y cos x) f''_(1 2) + cos x dot f'_2 + y sin x cos x f''_(2 2) . 
19. 提示：iint_D (x^2 + y) dif x dif y = 1/2 iint_D (x^2 + y^2) dif x dif y + iint_D y dif x dif y
 = 1/2 int_0^(2 pi) dif theta int_0^1 rho^2 rho dif rho = pi / 4 . 
20. 提示：设坐标原点为 O，圆上一点 A(a, 0)，记 Q(x, y) = x e^y - 2 y, P(x, y) = e^y + x - y, D 为 L 所围成的半圆. 因此
 \"原式\" &= (oint_(L + O A) - int_(O A)) (Q dif y + P dif x) \\
&= iint_D ((partial Q) / (partial x) - (partial P) / (partial y)) dif x dif y - int_0^a (1 + x) dif x \\
&= 1/8 pi a^2 - a^2 / 2 - a . 
21. 提示：作辅助曲面 Sigma_1 : z = 0 (x^2 + y^2 <= 4)，取上侧，Omega 为 Sigma 与 Sigma_1 所围成的空间闭区域. 由高斯公式，得
[• 125 •]
// ==================== PAGE 132 ====================
align(left)[高等数学题册 (下册)\\ ],
align(right)[参考答案与提示\\ CANKAODAANYUTISHI]
 \"原式\" &= (integral.surf_(Sigma+Sigma_1) - integral.double_(Sigma_1)) [x dif y dif z - y dif z dif x + (z^2+x) dif x dif ")
]
