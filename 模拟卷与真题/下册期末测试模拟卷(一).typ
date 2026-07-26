// 下册试卷：题面=原书扫描页；答案=书后 OCR 纯文本。
#import "../lib/style.typ": gap-item, muted, solution-color, answer-color, stem-color

// 进入目录
#heading(level: 2)[高等数学(下册)期末测试模拟卷(一)]

#text(size: 0.9em, fill: muted)[
  题面为原书扫描页（结构化录入待校对）。答案为 OCR 纯文本速查，符号可能不准，请对照下册 PDF。
]

#v(gap-item)

  #block(width: 100%, breakable: true)[
    #image("images/下册/page-087.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-088.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-089.jpg", width: 100%)
  ]
  #v(0.8em)
  #block(width: 100%, breakable: true)[
    #image("images/下册/page-090.jpg", width: 100%)
  ]
  #v(0.8em)

#v(gap-item)
#block(width: 100%)[
  #set text(size: 0.92em, fill: solution-color)
  #text(weight: "bold", fill: answer-color)[参考答案与提示（OCR 纯文本）]
  #v(0.5em)
  #raw(block: true, "高等数学（下册）期末测试模拟卷（一）]]
一、1. C. 2. B. 3. D. 4. C. 5. B.
二、6. 2.
8. e^2 x - 4y - z + 6 = 0.
9. 4pi.
10. 1 + pi.
三、11. 提示：由 dif z = (4-2x) dif x - (2y+4) dif y 知，
 f'_x(x,y) = 4-2x, quad f'_y(x,y) = -2y-4. 
令 cases(f'_x(x,y) = 4-2x = 0, f'_y(x,y) = -2y-4 = 0)，解得驻点 (2, -2). 又在点 (2, -2) 处，
 A = f''_(x x)(x,y) = -2, quad B = f''_(x y)(x,y) = 0, quad C = f''_(y y)(x,y) = -2, 
有 A C - B^2 = 4 > 0，所以点 (2, -2) 是函数 z = f(x,y) 的极值点，且由 A < 0 知，点 (2, -2) 为极大值点.
12. 提示：
 iint_D cos (x/y) dif x dif y = int_(pi/2)^pi dif y int_0^y cos (x/y) dif x = int_(pi/2)^pi y dif y int_0^y cos (x/y) dif(x/y) = int_(pi/2)^pi y sin y dif y = pi - 1. 
13. 提示：因为
 (partial z)/(partial x) = 1/y f'_1 - y/x^2 f'_2, quad (partial z)/(partial y) = - x/y^2 f'_1 + 1/x f'_2, 
所以
 dif z = (1/y f'_1 - y/x^2 f'_2) dif x + (1/x f'_2 - x/y^2 f'_1) dif y. 
14. 提示：令函数
 F(x,y,z) = x^2 + 2y^2 + z^2 - 10, quad G(x,y,z) = x - y + z, 
于是有
 F_x = 2x, quad F_y = 4y, quad F_z = 2z, quad G_x = 1, quad G_y = -1, quad G_z = 1. 
在点 (1,2,1) 处，n_1 = \\{2, 8, 2\\} = 2\\{1, 4, 1\\}，n_2 = \\{1, -1, 1\\}，从而取切线的方向向量为
[· 120 ·]
align(left)[〇 高等数学学习题册 (下册)\\ []],
align(right)[参考答案与提示 〇\\ [CANKAODAANYUTISHI]]
 s = mat(delim: \"|\", i, j, k; 1, 4, 1; 1, -1, 1) = 5i - 5k, 
所以在点 (1,2,1) 处的切线方程为
 (x-1)/1 = (y-2)/0 = (z-1)/(-1). 
15. 提示：
 lim_(t -> 0^+) 1/t^3 iint_(x^2+y^2 <= t^2) f(sqrt(x^2+y^2)) dif x dif y &= lim_(t -> 0^+) (int_0^(2pi) dif theta int_0^t f(rho) rho dif rho)/t^3 = lim_(t -> 0^+) (2pi int_0^t f(rho) rho dif rho)/t^3 \\
&= 2pi/3 lim_(t -> 0^+) f(t)/t = 2pi/3 lim_(t -> 0^+) f'(t) \\
&= 2pi/3 f'(0) = (2pi)/3. 
16. 提示：(方法一) L 的参数方程为 cases(x = 2 cos theta, y = 2 sin theta) quad (0 <= theta <= 2pi)，从而有
 dif s = sqrt((-2 sin theta)^2 + (2 cos theta)^2) dif theta = 2 dif theta, 
于是
 oint_L (y^2 + x) dif s &= int_0^(2pi) (4 sin^2 theta + 2 cos theta) dot 2 dif theta \\
&= 8 int_0^(2pi) sin^2 theta dif theta + 0 = 8pi. 
(方法二) 由对称性可知
 oint_L y^2 dif s = oint_L x^2 dif s, quad oint_L x dif s = 0, 
所以
 oint_L (y^2 + x) dif s &= 1/2 oint_L (x^2 + y^2) dif s + 0 = 1/2 oint_L 4 dif s \\
&= 2 oint_L dif s = 8pi. 
17. 提示：因为
 f(x) &= 1/((x+1)(x+3)) = 1/(2(1+x)) - 1/(2(3+x)) \\
&= 1/(4(1 + (x-1)/2)) - 1/(8(1 + (x-1)/4)), 
而
 1/(4(1 + (x-1)/2)) &= 1/4 sum_(n=0)^oo ((-1)^n)/2^n (x-1)^n quad (-1 < x < 3), \\
1/(8(1 + (x-1)/4)) &= 1/8 sum_(n=0)^oo ((-1)^n)/4^n (x-1)^n quad (-3 < x < 5), 
[· 121 ·]
// ==================== PAGE 127 ====================
[高等数学学习题册 (下册)], [参考答案与提示]
16. 2 . \\
17. 3 . \\
18. (x+2)/2 . \\
四、19. [1, 3] . \\
20. S(x) = x^2/(1-x^2)^2 - ln(1-x^2) quad (-1 < x < 1) , \\
 sum_(n=1)^infty (n^2+1)/(n dot 2^n) = 2+ln 2 .
= 高等数学(下册) 期末测试模拟卷(一)
一、1. C. quad 2. B. quad 3. D. quad 4. C. quad 5. B. \\
二、6. 2 . \\
7. 5 . \\
8. e^2 x - 4y - z + 6 = 0 . \\
9. 4pi . \\
10. 1+pi . \\
三、11. 提示：由 dif z = (4-2x) dif x - (2y+4) dif y 知，
 f'_x (x,y) = 4-2x, quad f'_y (x,y) = -2y-4. 
令 cases(f'_x (x,y) = 4-2x = 0, f'_y (x,y) = -2y-4 = 0) , 解得驻点 (2, -2) . 又在点 (2, -2) 处，
 A = f''_(x x)(x,y) = -2, quad B = f''_(x y)(x,y) = 0, quad C = f''_(y y)(x,y) = -2, 
有 A C - B^2 = 4 > 0 , 所以点 (2, -2) 是函数 z = f(x,y) 的极值点，且由 A < 0 知，点 (2, -2) 为极大值点.
12. 提示：
 iint_D cos(x/y) dif x dif y &= integral_(pi/2)^pi dif y integral_0^(y^2) cos(x/y) dif x \\
&= integral_(pi/2)^pi y dif y integral_0^y cos(x/y) dif (x/y) \\
&= integral_(pi/2)^pi y sin y dif y = pi - 1. 
13. 提示：因为
 (partial z)/(partial x) = 1/y f'_1 - y/x^2 f'_2, quad (partial z)/(partial y) = 1/x f'_2 - x/y^2 f'_1, 
所以
 dif z = (1/y f'_1 - y/x^2 f'_2) dif x + (1/x f'_2 - x/y^2 f'_1) dif y. 
14. 提示：令函数
 F(x,y,z) = x^2 + 2y^2 + z^2 - 10, quad G(x,y,z) = x - y + z, 
于是有
 F_x = 2x, quad F_y = 4y, quad F_z = 2z, quad G_x = 1, quad G_y = -1, quad G_z = 1. 
在点 (1, 2, 1) 处， n_1 = \\{2, 8, 2\\} = 2\\{1, 4, 1\\} , n_2 = \\{1, -1, 1\\} ，从而取切线的方向向量为
 s = mat(delim: \"|\", i, j, k; 1, 4, 1; 1, -1, 1) = 5i - 5k, 
所以在点 (1, 2, 1) 处的切线方程为
 (x-1)/1 = (y-2)/0 = (z-1)/(-1). 
15. 提示：
 lim_(t -> 0^+) 1/t^3 iint_(x^2+y^2 <= t^2) f(sqrt(x^2+y^2)) dif x dif y &= lim_(t -> 0^+) (integral_0^(2pi) dif theta integral_0^t f(rho) rho dif rho)/t^3 \\
&= lim_(t -> 0^+) (2pi integral_0^t f(rho) rho dif rho)/t^3 \\
&= (2pi)/3 lim_(t -> 0^+) (f(t) t)/t^2 = (2pi)/3 lim_(t -> 0^+) f(t)/t \\
&= (2pi)/3 lim_(t -> 0^+) f'(t) = (2pi)/3 f'(0) = (2pi)/3. 
16. 提示：(方法一) L 的参数方程为 cases(x = 2 cos theta, y = 2 sin theta) quad (0 <= theta <= 2pi) , 从而有
 dif s = sqrt((-2 sin theta)^2 + (2 cos theta)^2) dif theta = 2 dif theta, 
于是
 oint_L (y^2 + x) dif s &= integral_0^(2pi) (4 sin^2 theta + 2 cos theta) dot 2 dif theta \\
&= 8 integral_0^(2pi) sin^2")
]
