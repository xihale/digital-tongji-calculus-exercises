// 下册试卷：题面=原书扫描页；答案=书后 OCR 纯文本。
#import "../lib/style.typ": gap-item, muted, solution-color, answer-color, stem-color

// 进入目录
#heading(level: 2)[高等数学(下册)期末测试真题(二)]

#text(size: 0.9em, fill: muted)[
  题面为原书扫描页（结构化录入待校对）。答案为 OCR 纯文本速查，符号可能不准，请对照下册 PDF。
]

#v(gap-item)

  #block(width: 100%, breakable: true)[
    #image("images/下册/page-099.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-100.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-101.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-102.jpg", width: 100%)
  ]
  #v(0.8em)

#v(gap-item)
#block(width: 100%)[
  #set text(size: 0.92em, fill: solution-color)
  #text(weight: "bold", fill: answer-color)[参考答案与提示（OCR 纯文本）]
  #v(0.5em)
  #raw(block: true, "高等数学(下册) 期末测试真题 (二)
一、 1. B. 2. C. 3. D. 4. A. 5. D.
二、 6. 2.
7. x + 11y + 5z = 18 .
8. 1/4 (e^2 + 1) .
9. 1/2 .
10. 1/2 .
三、11. 提示: 利用极坐标, 有
 integral.double_D e^(-x^2 - y^2) dif x dif y = integral_0^(2pi) dif theta integral_0^R rho e^(-rho^2) dif rho = pi (1 - e^(-R^2)). 
12. 提示: (方法一) 过点 M(2, 1, 3) 且与直线 l colon (x+1)/3 = (y-1)/2 = z/(-1) 垂直的平面 Pi 的方程为
 3(x-2) + 2(y-1) - (z-3) = 0, quad \"即\" quad 3x + 2y - z = 5. 
令 (x+1)/3 = (y-1)/2 = z/(-1) = t , 即 x = 3t - 1, y = 2t + 1, z = -t , 代入上式得
 3(3t - 1) + 2(2t + 1) - (-t) = 5, quad \"即\" quad t = 3/7, 
则直线 l 与平面 Pi 的交点为 (2/7, 13/7, -3/7) . 于是, 所求直线过点 M(2, 1, 3) 及点 (2/7, 13/7, -3/7) , 则直线方程为
 (x-2)/2 = (y-1)/(-1) = (z-3)/4. 
(方法二) 将已知直线方程化为一般方程 cases(2x - 3y + 5 = 0, x + 3z + 1 = 0) , 并写出该直线的平面束方程为
 (2x - 3y + 5) + lambda(x + 3z + 1) = 0, 
即
 (2 + lambda)x - 3y + 3lambda z + 5 + lambda = 0. 
将点 (2, 1, 3) 代入上述方程, 解得 lambda = -1/2 , 则过点 M 与已知直线的平面方程为
 x - 2y - z + 3 = 0. 
过点 M 且垂直于已知直线的平面方程为
 3x + 2y - z - 5 = 0, 
因此所求直线即为所得两平面的交线, 直线方程为
[• 127 •]
// ==================== PAGE 133 ====================
高等数学学习题册 (下册)\\

\"原式\" &= (oiint_(Sigma+Sigma_1) - iint_(Sigma_1)) [x dif y dif z - y dif z dif x + (z^2+x) dif x dif y] \\
&= - iiint_Omega (1-1+2z) dif v - iint_(x^2+y^2 <= 4) x dif x dif y \\
&= -2 integral_0^2 z dot pi (4-z^2) dif z - 0 = -8 pi.

22. 提示: (1) 因 lim_(n -> oo) | a_(n+1) / a_n | = lim_(n -> oo) (n dot 3^n) / ((n+1) dot 3^(n+1)) = 1/3, 故收敛半径为 R = 3.
(2) 当 x = 0 时, 原级数为 sum_(n=1)^oo (-1)^n / n 收敛; 当 x = 6 时, 原级数为 sum_(n=1)^oo 1 / n 发散, 从而原级数的收敛域为 [0, 6).
(3) 记和函数 S(x) = sum_(n=1)^oo ((x-3)^n) / (n dot 3^n), 令 t = (x-3) / 3, -1 <= t < 1, 则

S(t) = sum_(n=1)^oo t^n / n, quad S'(t) = sum_(n=1)^oo t^(n-1) = 1 / (1-t).

于是, 有 S(t) = -ln(1-t), 从而

S(x) = -ln(1 - (x-3)/3) = -ln(6-x) + ln 3, quad 0 <= x < 6.

四、23. 提示: 由题意可知目标函数为

(partial u) / (partial l) = bold(\"grad\") u(x, y, z) dot e_l = \\{2x, 2y, 2z\\} \\{1/sqrt(2), -1/sqrt(2), 0\\} = sqrt(2)(x-y).

作拉格朗日函数

F(x, y, z, lambda) = x - y + lambda(2x^2 + 2y^2 + z^2 - 1),

解方程组

F'_x = 1 + 4 lambda x = 0,
F'_y = -1 + 4 lambda y = 0,
F'_z = 2 lambda z = 0,
F'_lambda = 2x^2 + 2y^2 + z^2 - 1 = 0

得两个可能极值点 M_1(1/2, -1/2, 0), M_2(-1/2, 1/2, 0). 在点 M_1 处, (partial u) / (partial l) = sqrt(2); 在点 M_2 处,
(partial u) / (partial l) = -sqrt(2), 所以在点 (1/2, -1/2, 0) 处方向导数最大.
24. 提示: 因为 bold(\"grad\") h(x, y) = \\{y-2x, x-2y\\}, 所以在点 (x, y) 处的最大方向导数为

||bold(\"grad\") h(x, y)|| = sqrt(5x^2 + 5y^2 - 8xy).

令函数 f = 5x^2 + 5y^2 - 8xy, 求 f 在约束条件 x^2 + y^2 - xy = 75 下的极值.
作拉格朗日函数

L = 5x^2 + 5y^2 - 8xy + lambda(75 - x^2 - y^2 + xy),

解方程组

L'_x = 10x - 8y + lambda(y - 2x) = 0,
L'_y = 10y - 8x + lambda(x - 2y) = 0,
L'_lambda = 75 - x^2 - y^2 + xy = 0

[• 126 •]
参考答案与提示\\
[CANKAODAANYUTISHI]
得可能极值点 M_1(5sqrt(3), 5sqrt(3)), M_2(-5sqrt(3), -5sqrt(3)), M_3(5, -5), M_4(-5, 5). 由于

f(M_1) = f(M_2) = 150, quad f(M_3) = f(M_4) = 450,

因此在山脚的点 M_3 或点 M_4 可作为攀爬的起点.
[高等数学 (下册) 期末测试真题 (二)]
一、1. B. quad 2. C. quad 3. D. quad 4. A. quad 5. D.
二、6. 2.
7. x + 11y + 5z = 18.
8. 1/4(e^2 + 1).
9. 1/2.
10. 1/2.
三、11. 提示: 利用极坐标, 有

iint_D e^(-x^2-y^2) dif x dif y = integral_0^(2pi) dif theta integral_0^R rho e^(-rho^2) dif rho = pi(1 - e^(-R^2)).

12. 提示: (方法一) 过点 M(2, 1, 3) 且与直线 l: (x+1)/3 = (y-1)/2 = z/(-1) 垂直的平面 Pi 的方程为

3(x-2) + 2(y-1) - (z-3) = 0, quad \"即\" quad 3x + 2y - z = 5.

令 (x+1)/3 = (y-1)/2 = z/(-1) = t, 即 x = 3t-1, y = 2t+1, z = -t, 代入上式得

3(3t-1) + 2(2t+1) - (-t) = 5, quad \"即\" quad t = 3/7,

则直线 l 与平面 Pi 的交点为 (2/7, 13/7, -3/7). 于是, 所求直线过点 M(2, 1, 3) 及点 (2/7, 13/7, -3/7), 则直线方程为

(x-2)/2 = (y-1)/(-1) = (z-3)/4.

(方法二) 将已知直线方程化为一般方程 cases(2x-3y+5=0, x+3z+1=0), 并写出该直线的平面束方程为

(2x - 3y + 5) + lambda(x + 3z + 1) = 0,

即

(2+lambda)x - 3y + 3lambda z + 5 + lambda = 0.

将点 (2, 1, 3) 代入上述方程, 解得 lambda = -1/2, 则过点 M 与已知直线的平面方程为

x - 2y - z + 3 = 0.

过点 M 且垂直于已知直线的平面方程为

3x + 2y - z - 5 = 0,

因此所求直线即为所得两平面的交线, 直线方程为
[• 127 •]
// ==================== PAGE 134 ====================
bigcirc 高等数学练习册 (下册)\\
 cases(
3x + 2y - z - 5 = 0, \\
x - 2y - z + 3 = 0.
) 
13. 提示: 利用全微分, 有
 dif z &= dif f(x y, x/y) + dif g(x^2 - y^2) \\
&= f'_1 dif (x y) + f'_2 dif (x/y) + g' dif (x^2 - y^2) \\
&= f'_1 (y dif x + x dif y) + f'_2 (y dif x - x dif y)/y^2 + g' (2x dif x - 2y dif y) \\
&= (y f'_1 + (f'_2)/y + 2x g') dif x + (x f'_1 - (x f'_2)/y^2 - 2y g') dif y, 
从而
 (partial z)/(partial x) &= y f'_1 + (f'_2)/y + 2x g', \\
(partial^2 z)/(partial x partial y) &= (partial)/(partial y) ((partial z)/(partial x)) = (partial)/(partial y) (y f'_1 + (f'_2)/y + 2x g') = (partial)/(partial y) (y f'_1) + (part")
]
