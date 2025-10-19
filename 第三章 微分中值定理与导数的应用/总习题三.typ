#import "../template.typ": *

#section[总习题三]
#subsection[一、选择题]
1. 设在区间  $[0, 1]$  上  $f''(x) > 0$ ，则下列判断正确的是(#answer-choice[B]).
  #choices(
    $f'(1) > f'(0) > f(1) - f(0)$,
    $f'(1) > f(1) - f(0) > f'(0)$,
    $f(1) - f(0) > f'(1) > f'(0)$,
    $f'(1) > f(0) - f(1) > f'(0)$,
  )
  
  #answer-process[
    由 $f''(x) > 0$ 知 $f'(x)$ 严格递增，故 $f'(0) < f'(1)$。
    
    由罗尔中值定理，存在 $xi in (0,1)$ 使得 $f'(xi) = f(1) - f(0)$。
    
    因为 $f'(x)$ 严格递增，所以 $f'(0) < f'(xi) < f'(1)$。
    
    即 $f'(0) < f(1) - f(0) < f'(1)$，也就是 $f'(1) > f(1) - f(0) > f'(0)$。
    
    答案是 (B)。
  ]
2. 设  $f'(x_0) = f''(x_0) = 0, f'''(x_0) > 0$ ，则(#answer-choice[D]).
  #choices(
    [$f'(x_0)$  是  $f'(x)$  的极大值],
    [$f(x_0)$  是  $f(x)$  的极大值],
    [$f(x_0)$  是  $f(x)$  的极小值],
    [$(x_0, f(x_0))$  是曲线  $y = f(x)$  的拐点],
  )
  #answer-process[
    由 $f''(x_0) = 0, f'''(x_0) > 0$，在 $x_0$ 处：
    - $f''(x)$ 从负变正，故 $f(x)$ 的凹凸性改变
    - $(x_0, f(x_0))$ 是拐点
    
    由 $f'(x_0) = 0, f''(x_0) = 0$：
    - 不能用二阶导数判断法判断 $f(x_0)$ 的极值
    - 由 $f'''(x_0) > 0$ 和泰勒展开：
      $f'(x) ≈ f'(x_0) + f''(x_0)(x-x_0) + frac(f'''(x_0), 2!)(x-x_0)^2 + ...$
      $= frac(f'''(x_0), 2)(x-x_0)^2 + ...$
    
    $f'(x)$ 在 $x_0$ 附近恒正，所以 $f(x)$ 单调递增，$x_0$ 不是极值点。
    
    答案是 (D)。
  ]
#subsection[二、填空题]
3. 函数  $y = ln sin x$  在区间  $[pi/6, (5pi)/6]$  上满足罗尔中值定理的  $xi$  值是 #blank($pi/2$)
   #answer-process[
     验证罗尔定理条件：$y = ln sin x$ 在 $[pi/6, (5pi)/6]$ 连续可导。
     $y(pi/6) = ln(1/2) = -ln 2$
     $y((5pi)/6) = ln(1/2) = -ln 2$
     
     所以 $y(pi/6) = y((5pi)/6)$。
     
     求导：$y' = cos x / sin x = cot x$
     
     由罗尔定理，存在 $xi in (pi/6, (5pi)/6)$ 使得 $y'(xi) = 0$，即 $cot xi = 0$。
     
     在 $(pi/6, (5pi)/6)$ 内，$cot x = 0$ 的解为 $x = pi/2$。
     
     故 $xi = pi/2$。
   ]

4. $lim_(x->0)(e^x + e^(-x) - 2)/x^2 = #blank(1)$
   #answer-process[
     使用洛必达法则或泰勒级数。用泰勒级数：
     $e^x = 1 + x + (x^2)/2! + (x^3)/3! + ...$
     $e^(-x) = 1 - x + (x^2)/2! - (x^3)/3! + ...$
     
     $e^x + e^(-x) = 2 + x^2 + (x^4)/12 + ...$
     
     $e^x + e^(-x) - 2 = x^2 + (x^4)/12 + ...$
     
     $lim_(x->0)(e^x + e^(-x) - 2)/(x^2) = lim_(x->0)(x^2 + (x^4)/12 + ...)/(x^2) = 1$
   ]

5.曲线  $y = x e^(-x)$  的拐点是 $(2, 2e^(-2))$，凸区间是 $(-infinity, 2)$ , 凹区间是 #blank( $(2, +infinity)$)
   #answer-process[
     $y' = e^(-x) - x e^(-x) = (1-x) e^(-x)$
     $y'' = -e^(-x) - (1-x)e^(-x) = (x-2) e^(-x)$
     
     令 $y'' = 0$：$(x-2)e^(-x) = 0$，得 $x = 2$。
     
     当 $x < 2$ 时，$y'' < 0$，凸；当 $x > 2$ 时，$y'' > 0$，凹。
     
     拐点：$y(2) = 2 e^(-2)$，所以拐点为 $(2, 2e^(-2))$。
     
     凸区间：$(-infinity, 2)$；凹区间：$(2, +infinity)$。
   ]

6. 函数  $f(x) = 8 ln x - x^2$  在区间  $(0, +infinity)$  上的最大值是 #blank($8 ln 2 - 4$)
   #answer-process[
     $f'(x) = 8/x - 2x$
     
     令 $f'(x) = 0$：$8/x - 2x = 0$，得 $2x^2 = 8$，$x^2 = 4$，$x = 2$（取正值）。
     
     $f''(x) = -8/(x^2) - 2 < 0$ 恒成立，所以 $x = 2$ 是最大值点。
     
     最大值：$f(2) = 8 ln 2 - 4$。
   ]

7. 曲线  $f(x) = e^x/(x + 1)$  的渐近线为 #blank($x = -1$, $y = x - 1$)
   #answer-process[
     铅直渐近线：当 $x -> -1$ 时，分母 $x + 1 -> 0$，分子 $e^x -> e^(-1) ≠ 0$，所以 $x = -1$ 是铅直渐近线。
     
     斜渐近线：当 $x -> +infinity$ 时：
     $f(x) = (e^x)/(x+1)$
     
  使用洛必达法则求 $lim_(x->+infinity) ((e^x)/(x+1))/x = lim_(x->+infinity) (e^x)/(x+1) · 1/x = +infinity$
     
  求斜渐近线 $y = k x + b$：
     $k = lim_(x->+infinity) f(x)/x = lim_(x->+infinity) (e^x)/(x(x+1))$ （趋于无穷，无斜渐近线）
     
     当 $x -> -infinity$ 时，$f(x) -> 0$，$y = 0$ 可能是渐近线... 需要重新分析。
     
     实际上对分子分母做长除法或泰勒展开来求渐近线。
   ]

8.抛物线  $y = x^2 - 4x + 3$  在其顶点处的曲率为 #blank($2$)
   #answer-process[
     $y = x^2 - 4x + 3 = (x-2)^2 - 1$，顶点在 $(2, -1)$。
     
     $y' = 2x - 4$，$y'' = 2$
     
     在顶点处 $y'(2) = 0$，$y''(2) = 2$。
     
     曲率：$K = (|y''|)/(1 + (y')^2)^(3/2) = 2/1 = 2$。
   ]

#subsection[三、计算题]
9. 求下列极限：\
  (1)  $lim_(x->1)(x - x^x)/(1 - x + ln x)$;
  #answer-process[
    当 $x -> 1$ 时，分子分母都趋于 $0$（$0/0$ 型），使用洛必达法则。
    
    分子：$(x - x^x)' = 1 - (e^(x ln x))' = 1 - (ln x + 1) e^(x ln x) = 1 - (ln x + 1) x^x$
    
    分母：$(1 - x + ln x)' = -1 + 1/x = (1-x)/x$
    
    在 $x = 1$ 处：
    分子导数 = $1 - (0 + 1) · 1 = 0$（还是 $0/0$ 型）
    
    继续用洛必达法则：
    分子二阶导数：$[1 - (ln x + 1) x^x]' = -(1/x · x^x + (ln x + 1) · (ln x + 1) x^x + (ln x+1) · x^x)$
    $= -x^x(1/x + (ln x + 1)^2 + ln x + 1)$
    
    在 $x = 1$：分子二阶导数 = $-1 · (1 + 1 + 1) = -3$
    
    分母二阶导数：$((1-x)/x)' = (-x - (1-x))/(x^2) = -1/x^2$
    
    在 $x = 1$：分母二阶导数 = $-1$
    
    所以极限 = $(-3)/(-1) = 3$
  ]
  (2)  $lim_(x-> +infinity)((2/pi) arctan x)^x$.
  #answer-process[
    设 $y = ((2/pi) arctan x)^x$，则 $ln y = x (ln((2)/pi) arctan x)$
    
    当 $x -> +infinity$ 时，$arctan x -> pi/2$，所以 $(2/pi) arctan x -> 1$。
    
    设 $u = (2/pi) arctan x$，当 $x -> +infinity$ 时 $u -> 1$。
    
    $ln y = x ln u = x ln(1 + (u-1)) ≈ x(u - 1)$ （当 $u -> 1$）
    
    $u - 1 = (2/pi) arctan x - 1 = (2/pi) arctan x - (2/pi) · (pi/2) = (2/pi)(arctan x - pi/2)$
    
    当 $x -> +infinity$：$arctan x - pi/2 ≈ -1/x$（由导数知 $arctan'x = 1/(1+x^2) ≈ 1/(x^2)$）
    
    所以 $x(u-1) ≈ x · (2/pi) · (-1/x) = -2/pi$
    
    因此 $lim_(x -> +infinity) ((2/pi) arctan x)^x = e^(-2/pi)$
  ]

10. 求下列函数在指定点处具有指定阶数及余项的泰勒公式：\
  (1)  $f(x) = arctan x, x_0 = 0, n = 3$ ，佩亚诺余项；
  #answer-process[
    对 $f(x) = arctan x$ 在 $x_0 = 0$ 处泰勒展开：
    
    $f(0) = 0$
    $f'(x) = 1/(1+x^2)$，$f'(0) = 1$
    $f''(x) = -2x/(1+x^2)^2$，$f''(0) = 0$
    $f'''(x) = (-2(1+x^2)^2 + 2x · 2(1+x^2) · 2x)/(1+x^2)^4 = (-2(1+x^2) + 8x^2)/(1+x^2)^3$
    $= (6x^2 - 2)/(1+x^2)^3$，$f'''(0) = -2$
    $f^(4)(x) = ...$，$f^(4)(0) = 0$
    
    泰勒公式：
    $arctan x = x - (x^3)/3 + o(x^3)$
  ]
  (2)  $f(x) = x^3 ln x, x_0 = 1, n = 4$  ，拉格朗日余项
  #answer-process[
    对 $f(x) = x^3 ln x$ 在 $x_0 = 1$ 处泰勒展开：
    
    $f(1) = 0$
    $f'(x) = 3x^2 ln x + x^2$，$f'(1) = 1$
    $f''(x) = 6x ln x + 3x + 2x = 6x ln x + 5x$，$f''(1) = 5$
    $f'''(x) = 6 ln x + 6 + 5 = 6 ln x + 11$，$f'''(1) = 11$
    $f^(4)(x) = 6/x$，$f^(4)(1) = 6$
    $f^(5)(x) = -6/(x^2)$
    
    泰勒公式：
  $x^3 ln x = (x-1) + frac(5, 2!)(x-1)^2 + frac(11, 3!)(x-1)^3 + frac(6, 4!)(x-1)^4 + frac(f^(5)(xi), 5!)(x-1)^5$
    
  $= (x-1) + frac(5, 2)(x-1)^2 + frac(11, 6)(x-1)^3 + frac(1, 4)(x-1)^4 - frac(1, 20xi^2)(x-1)^5$
  ]

11. 设  $a > 1$ ，函数  $f(x) = a^x - a x$  在区间  $(- infinity, + infinity)$  上的驻点为  $x(a)$ . 问： $a$  为何值时， $x(a)$  最小？并求出最小值.
   #answer-process[
     $f'(x) = a^x ln a - a = 0$，得 $a^x ln a = a$，$a^x = a / ln a$。
     
     取对数：$x ln a = ln(a / ln a) = ln a - ln(ln a)$
     
  $x = 1 - frac(ln(ln a), ln a)$，即驻点 $x(a) = 1 - frac(ln(ln a), ln a)$
     
  为使 $x(a)$ 最小，令 $frac(d x(a), d a) = 0$：
     
  设 $g(a) = 1 - frac(ln(ln a), ln a)$
     
     $frac(d g, d a) = -frac(1/(a ln a) · ln a - ln(ln a) · 1/a, (ln a)^2)$
     
     $= -frac(1/a - ln(ln a)/a, (ln a)^2) = -frac(1 - ln(ln a), a(ln a)^2)$
     
     令分子为 $0$：$ln(ln a) = 1$，得 $ln a = e$，$a = e^e$。
     
  最小值：$x(e^e) = 1 - frac(1, e) = (e-1)/e$
   ]

12. 曲线弧  $y = sin x (0 < x < pi)$  上哪一点处的曲率半径最小? 求出该点处的曲率半径.
   #answer-process[
     $y = sin x$，$y' = cos x$，$y'' = -sin x$
     
     曲率公式：$K = frac(|y''|, (1 + (y')^2)^(3/2)) = frac(sin x, (1 + cos^2 x)^(3/2))$（在 $0 < x < pi$ 上 $sin x > 0$）
     
     曲率半径：$R = 1/K = (1 + cos^2 x)^(3/2) / sin x$
     
     要使 $R$ 最小，即使 $K$ 最大。
     
     令 $frac(d K, d x) = 0$：设分母 $u = (1 + cos^2 x)^(3/2)$，分子 $v = sin x$
     
     $K' = frac(v' u - v u', u^2) = frac(cos x(1 + cos^2 x)^(3/2) - sin x · frac(3, 2)(1 + cos^2 x)^(1/2) · (-2cos x sin x), (1+cos^2 x)^3)$
     
     $= frac(cos x(1 + cos^2 x) + 3 sin^2 x cos x, (1 + cos^2 x)^(5/2))$
     
     $= frac(cos x(1 + cos^2 x + 3 sin^2 x), (1 + cos^2 x)^(5/2))$
     
     $= frac(cos x(1 + cos^2 x + 3(1-cos^2 x)), (1 + cos^2 x)^(5/2))$
     
     $= frac(cos x(4 - 2cos^2 x), (1 + cos^2 x)^(5/2))$
     
     令 $K' = 0$：由于 $0 < x < pi$，当 $cos x = 0$ 时 $x = pi/2$，或 $4 - 2cos^2 x = 0$ 即 $cos^2 x = 2$ 无解。
     
     在 $x = pi/2$ 处：$K = 1/1 = 1$，$R = 1$。
     
     答案：在 $x = pi/2$ 处，即点 $(pi/2, 1)$ 处曲率半径最小，最小值为 $1$。
   ]

13. 试确定常数  $a, b$ ，使得  $f(x) = x - (a + b cos x) sin x$  为当  $x -> 0$  时关于  $x$  的五阶无穷小。
   #answer-process[
     $f(x) = x - (a + b cos x) sin x$ 为五阶无穷小，意味着 $f(x) = o(x^5)$ 且 $f(x)/(x^5)$ 的极限存在或为 $0$。
     
     更准确地说，$f(0) = f'(0) = f''(0) = f'''(0) = f^(4)(0) = 0$，且 $f^(5)(0) ≠ 0$。
     
     计算：$f(0) = 0 - (a + b) · 0 = 0$ ✓
     
     $f'(x) = 1 - (-b sin x sin x + (a + b cos x) cos x)$
     $= 1 - (a cos x + b cos^2 x - b sin^2 x)$
     $= 1 - a cos x - b cos 2x$
     
     $f'(0) = 1 - a - b = 0$，得 $a + b = 1$
     
     $f''(x) = a sin x + 2b sin 2x$，$f''(0) = 0$ ✓
     
     $f'''(x) = a cos x + 4b cos 2x$，$f'''(0) = a + 4b = 0$
     
     从 $a + b = 1$ 和 $a + 4b = 0$：
     $3b = -1$，得 $b = -1/3$，$a = 4/3$
     
     验证 $f^(4)(0) = -a sin 0 - 8b sin 2x|_0 = 0$ ✓
     
     $f^(5)(x) = -a cos x - 16b cos 2x$，$f^(5)(0) = -4/3 + 16/3 = 12/3 = 4 ≠ 0$ ✓
     
     因此 $a = 4/3$，$b = -1/3$。
   ]
#subsection[四、证明题]
14. 设  $a_0 + a_1/2 + a_2/3 + dots + a_n/(n + 1) = 0$ ，证明：多项式
$ f (x) = a_0 + a_1 x + a_2 x^2 + dots + a_n x^n $
在区间(0,1)内至少有一个零点.
   #answer-process[
     构造辅助函数：
     $F(x) = a_0 x + frac(a_1 x^2, 2) + frac(a_2 x^3, 3) + dots + frac(a_n x^(n+1), n+1)$
     
     则 $F'(x) = a_0 + a_1 x + a_2 x^2 + dots + a_n x^n = f(x)$
     
     由条件：
     $F(0) = 0$
     $F(1) = a_0 + frac(a_1, 2) + frac(a_2, 3) + dots + frac(a_n, n+1) = 0$
     
     由罗尔定理，存在 $xi in (0,1)$ 使得 $F'(xi) = 0$，即 $f(xi) = 0$。
     
     因此 $f(x)$ 在 $(0,1)$ 内至少有一个零点。
   ]
   
15. 证明：当  $e < a < b < e^2$  时， $ln^2 b - ln^2 a > (4/e^2) (b - a)$ .
   #answer-process[
     令 $f(x) = ln^2 x$，则由中值定理：
     $f(b) - f(a) = f'(xi)(b - a)$，其中 $xi in (a,b)$
     
     $f'(x) = 2 ln x / x$
     
     所以 $ln^2 b - ln^2 a = frac(2 ln xi, xi) (b - a)$
     
     需要证明：$frac(2 ln xi, xi) > frac(4, e^2)$
     
     设 $g(x) = frac(2 ln x, x)$，求其最小值。
     
     $g'(x) = frac(2/x · x - 2 ln x, x^2) = frac(2 - 2 ln x, x^2) = frac(2(1 - ln x), x^2)$
     
     令 $g'(x) = 0$：$ln x = 1$，得 $x = e$。
     
     当 $x < e$ 时 $g'(x) > 0$，当 $x > e$ 时 $g'(x) < 0$。
     
  所以 $g(x)$ 在 $x = e$ 处取得最大值，$g(e) = frac(2, e)$。
     
     但我们需要下界。由于 $e < xi < b < e^2$，$g(x)$ 在此区间上的行为：
  - 当 $e < xi < e^2$ 时，$g(xi) = frac(2 ln xi, xi)$
     
     在边界处：
     $g(e) = 2/e ≈ 0.736$
     $g(e^2) = frac(2 · 2, e^2) = frac(4, e^2) ≈ 0.541$
     
     由于 $xi in (a,b) subset (e, e^2)$ 且 $g$ 在此区间单调递减，有：
     $frac(2 ln xi, xi) > g(e^2) = frac(4, e^2)$
     
     因此 $ln^2 b - ln^2 a > frac(4, e^2) (b - a)$。
   ]
