#import "../template.typ": *

#section[第一节 微分中值定理]
#subsection[一、选择题]
1. 设函数  $f(x) = sin x$  在区间  $[0, pi]$  上满足罗尔中值定理的条件，则罗尔中值定理结论中的  $xi =$ (#answer-choice[B]).
   #choices(
   [$pi$],
   [$pi/2$],
   [$pi/3$],
   [$pi/4$]
   )
   #answer-process[
     $f(0) = 0, f(pi) = 0$，所以满足罗尔定理条件
     
     $f'(x) = cos x = 0$ 在 $(0, pi)$ 中的解是 $x = pi/2$
   ]
   
2. 下列函数中在区间  $[1, e]$  上满足拉格朗日中值定理条件的是 (#answer-choice[A]).
   #choices(
   [$ln x$],
   [$ln ln x$],
   [$1/ln x$],
   [$ln (2 - x)$]
   )
   #answer-process[
     A: $ln x$ 在 $[1, e]$ 上连续可导 ✓
     
     B: $ln ln x$ 在 $x=1$ 处无定义（$ln 1 = 0$，$ln 0$ 无定义）✗
     
     C: $1/ln x$ 在 $x=1$ 处无定义 ✗
     
     D: $ln(2-x)$ 在 $x=e > 2$ 时无定义 ✗
     
     答案是 A
   ]
#subsection[二、填空题]
3. 设函数  $f(x) = (x - 1)(x - 2)(x - 3)(x - 5)$ ，则  $f'(x) = 0$  有 #blank[3] 个实根，分别位于区间 #blank[$(1,2), (2,3), (3,5)$] 中。
   #answer-process[
     $f(x)$ 是四次多项式，有四个不同的实根：1, 2, 3, 5
     
     由罗尔定理，在相邻两个根之间各有一个 $f'(x) = 0$ 的根
     
     因此 $f'(x) = 0$ 有 3 个实根，分别在 $(1,2), (2,3), (3,5)$ 中
   ]
#subsection[三、证明题]
4. 证明恒等式:  $arcsin x + arccos x = pi/2 (-1 <= x <= 1)$ .
   #answer-process[
     令 $f(x) = arcsin x + arccos x$
     
     $f'(x) = 1/(sqrt(1)-x^2) - 1/(sqrt(1)-x^2) = 0$
     
     所以 $f(x) =$ 常数
     
     取 $x = 0$: $f(0) = arcsin 0 + arccos 0 = 0 + pi/2 = pi/2$
     
     因此 $arcsin x + arccos x = pi/2$
   ]
   
5. 若函数  $f(x)$  在区间  $(a, b)$  内具有二阶导数，且  $f(x_1) = f(x_2) = f(x_3)$ ，其中  $a < x_1 < x_2 < x_3 < b$ ，证明：在区间  $(x_1, x_3)$  内至少存在一点  $xi$ ，使得  $f''(xi) = 0$ .
   #answer-process[
     由罗尔定理，在 $(x_1, x_2)$ 中存在 $c_1$ 使 $f'(c_1) = 0$
     
     在 $(x_2, x_3)$ 中存在 $c_2$ 使 $f'(c_2) = 0$
     
     因为 $x_1 < c_1 < x_2 < c_2 < x_3$，在 $(c_1, c_2)$ 上对 $f'(x)$ 应用罗尔定理
     
     存在 $xi in (c_1, c_2) subset (x_1, x_3)$ 使 $f''(xi) = 0$
   ]
   
6. 设  $a > b > 0$  ，证明：  $(a - b)/a < ln(a/b) < (a - b)/b$
   #answer-process[
     令 $f(x) = ln x$，在 $[b, a]$ 上应用拉格朗日定理
     
     存在 $xi in (b, a)$ 使 $ln a - ln b = (1/xi)(a - b)$
     
     即 $ln(a/b) = (a - b)/xi$
     
     因为 $b < xi < a$，所以 $1/a < 1/xi < 1/b$
     
     因此 $(a-b)/a < (a-b)/xi < (a-b)/b$
     
     即 $(a-b)/a < ln(a/b) < (a-b)/b$
   ]
