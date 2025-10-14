#import "../template.typ": section, subsection, choices, answer-space

#section[总习题三]
#subsection[一、选择题]
1. 设在区间  $[0, 1]$  上  $f''(x) > 0$ ，则下列判断正确的是( ).
   #v(0.5em)
   #choices(
   $f'(1) > f'(0) > f(1) - f(0)$,
   $f'(1) > f(1) - f(0) > f'(0)$,
   $f(1) - f(0) > f'(1) > f'(0)$,
   $f'(1) > f(0) - f(1) > f'(0)$
   )
2. 设  $f'(x_0) = f''(x_0) = 0, f'''(x_0) > 0$ ，则( ).
   #v(0.5em)
   #choices(
   [$f'(x_0)$  是  $f'(x)$  的极大值],
   [$f(x_0)$  是  $f(x)$  的极大值],
   [$f(x_0)$  是  $f(x)$  的极小值],
   [$(x_0, f(x_0))$  是曲线  $y = f(x)$  的拐点]
   )
#subsection[二、填空题]
3. 函数  $y = ln sin x$  在区间  $[pi/6, 5pi/6]$  上满足罗尔中值定理的  $xi$  值是  
4.  $lim_(x->0)(e^x + e^(-x) - 2)/x^2 = underline(quad)$  
5.曲线  $y = x e^(-x)$  的拐点是 ，凸区间是  
6. 函数  $f(x) = 8 ln x - x^2$  在区间  $(0, +infinity)$  上的最大值是  
7. 曲线  $f(x) = e^x/(x + 1)$  的渐近线为  
8.抛物线  $y = x^2 - 4x + 3$  在其顶点处的曲率为
#subsection[三、计算题]
9. 求下列极限：
   (1)  $lim_(x->1)(x - x^x)/(1 - x + ln x)$;
   #answer-space
   (2)  $lim_(x-> +infinity)((2/pi) arctan x)^x$.
   #answer-space
10. 求下列函数在指定点处具有指定阶数及余项的泰勒公式：
    (1)  $f(x) = arctan x, x_0 = 0, n = 3$ ，佩亚诺余项；
    #answer-space
    (2)  $f(x) = x^3 ln x, x_{0} = 1, n = 4$  ，拉格朗日余项
    #answer-space
11. 设  $a > 1$ ，函数  $f(x) = a^x - a x$  在区间  $(- infinity, + infinity)$  上的驻点为  $x(a)$ . 问： $a$  为何值时， $x(a)$  最小？并求出最小值.
    #answer-space
12. 曲线弧  $y = sin x (0 < x < pi)$  上哪一点处的曲率半径最小? 求出该点处的曲率半径.
    #answer-space
13. 试确定常数  $a, b$ ，使得  $f(x) = x - (a + b cos x) sin x$  为当  $x -> 0$  时关于  $x$  的五阶无穷小。
    #answer-space
#subsection[四、证明题]
14. 设  $a_0 + a_1/2 + a_2/3 + dots + a_n/(n + 1) = 0$ ，证明：多项式
$$
f (x) = a _ {0} + a _ {1} x + a _ {2} x ^ {2} + dots + a _ {n} x ^ {n}
$$
在区间(0,1)内至少有一个零点.
   #answer-space
15. 证明：当  $e < a < b < e^2$  时， $ln^2 b - ln^2 a > (4/e^2) (b - a)$ .
   #answer-space
#pagebreak()
#align(center)[
总习题三结束
]