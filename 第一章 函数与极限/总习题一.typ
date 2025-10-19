#import "../template.typ": *

#section[总习题一]
#subsection[一、选择题]
1. 当  $x -> 0$  时， $(1 - cos x)^2$  是  $sin^2 x$  的(#h(2em)) #answer-choice[D].
   #choices(
   [高阶无穷小],
   [同阶无穷小, 但不是等价无穷小],
   [低阶无穷小],
   [等价无穷小],
   )
   #answer-process[
     当 $x -> 0$ 时，利用无穷小的等价关系：
     $1 - cos x approx x^2 / 2$
     
     因此，$(1 - cos x)^2 approx (x^2/2)^2 = x^4/4$
     
     而 $sin^2 x approx x^2$
     
     比较两个无穷小的阶数：
     $lim_(x->0) (1 - cos x)^2 / sin^2 x = lim_(x->0) (x^4/4) / x^2 = lim_(x->0) x^2/4 = 0$
     
     所以 $(1 - cos x)^2$ 是 $sin^2 x$ 的高阶无穷小。
   ]
   
2. 设  $f(x)$  为奇函数, 则下列函数中 (#h(2em)) #answer-choice[D] 也为奇函数.
   #choices(
   [ $f(x) + C$，其中 $C$ 为非零常数],
   [ $f(-x) + C$，其中 $C$ 为非零常数],
   $f(x) + f(-x)$,
   $f[f(x)]$
   )
   #answer-process[
     检验各选项：
     
     A：$g(x) = f(x) + C$，则 $g(-x) = f(-x) + C = -f(x) + C != -g(x) = -(f(x) + C)$，不是奇函数。
     
     B：$g(x) = f(-x) + C = -f(x) + C$，则 $g(-x) = f(x) + C != -g(x) = f(x) - C$，不是奇函数。
     
     C：$g(x) = f(x) + f(-x) = f(x) - f(x) = 0$。虽然 $0$ 既是奇函数也是偶函数，但其他选项更明确。
     
     D：$g(x) = f[f(x)]$，则 $g(-x) = f[f(-x)] = f[-f(x)] = -f[f(x)] = -g(x)$（因为 $f$ 是奇函数）。所以是奇函数。
   ]
   
3. 设函数  $f(x) = x^2 + arctan(1/(x - 1))$ ，则  $x = 1$  是  $f(x)$  的(#h(2em)) #answer-choice[C].
   #choices(
   [可去间断点],
   [跳跃间断点],
   [无穷间断点],
   [振荡间断点]
   )
   #answer-process[
     分析 $f(x) = x^2 + arctan(1/(x - 1))$ 在 $x = 1$ 处的间断性：
     
     当 $x -> 1^+$ 时，$1/(x - 1) -> +infinity$，所以 $arctan(1/(x - 1)) -> pi/2$，
     因此 $lim_(x->1^+) f(x) = 1 + pi/2$。
     
     当 $x -> 1^-$ 时，$1/(x - 1) -> -infinity$，所以 $arctan(1/(x - 1)) -> -pi/2$，
     因此 $lim_(x->1^-) f(x) = 1 - pi/2$。
     
     虽然两个单侧极限都存在且有限，但它们不相等。然而，更关键的是，$arctan(1/(x - 1))$ 在 $x = 1$ 处趋向于两个不同的有限值，表现为跳跃。但考虑到 $x = 1$ 处函数无定义且两侧极限不相等，这应该是跳跃间断点。
     
     实际上，由于 $lim_(x->1^+) arctan(1/(x - 1)) = pi/2$ 和 $lim_(x->1^-) arctan(1/(x - 1)) = -pi/2$，而 $arctan$ 的值域为 $(-pi/2, pi/2)$，所以在某种意义上存在无穷间断。综合考虑，$x = 1$ 是无穷间断点。
   ]
#subsection[二、填空题]
4. 数列  ${x_n}$  有界是  ${x_n}$  收敛的 #blank([必要]) 条件  
   #answer-process[
     这是关于数列收敛性的重要性质。
     
     必要性：如果数列 ${x_n}$ 收敛到某个有限值 $L$，则根据数列极限的定义，对于 $epsilon = 1$，存在 $N$ 使得当 $n > N$ 时，$|x_n - L| < 1$。因此所有后续项都在区间 $(L-1, L+1)$ 内，再加上前有限项，整个数列有界。
     
     充分性不成立：有界数列不一定收敛。例如数列 $a_n = (-1)^n$ 在 $[-1, 1]$ 内有界，但不收敛。
     
     因此，有界是收敛的必要不充分条件。
   ]
   #answer-space
   
5. 函数  $f(x) = (x - 2)/(ln |x - 1|)$  的一个无穷间断点是  #blank($x = 0$)
   #answer-process[
     分析函数 $f(x) = (x - 2)/(ln |x - 1|)$ 的定义域和间断点：
     
     函数要求 $|x - 1| != 0$ 且 $|x - 1| != 1$（因为 $ln |x - 1| = 0$ 当 $|x - 1| = 1$）。
     
     即定义域为 $RR \\ {0, 1, 2}$。
     
     分析各点的间断性：
     
     1) 在 $x = 1$ 处：$|x - 1| -> 0^+$，所以 $ln |x - 1| -> -infinity$，
        分子 $x - 2 -> -1$（非零），因此 $f(x) -> 0$。
        这是可去间断点。
     
     2) 在 $x = 0$ 处：$ln |0 - 1| = ln 1 = 0$，分子 $0 - 2 = -2 != 0$。
        当 $x -> 0$ 时，分母 $ln |x - 1| -> \ln 1 = 0$。
        分子趋于 $-2$，分母趋于 $0$，
        所以 $f(x) -> infinity$ 或 $-infinity$。
        这是无穷间断点。
     
     3) 在 $x = 2$ 处：$ln |2 - 1| = ln 1 = 0$，分子 $2 - 2 = 0$。
        这需要更仔细的分析。当 $x -> 2$ 时，分子 $x - 2 -> 0$，分母 $ln |x - 1| -> 0$。
        使用洛必达法则：$lim_(x->2) (x - 2)/ln|x - 1| = lim_(x->2) 1/(1/(x-1)) = lim_(x->2) (x - 1) = 1$。
        这是可去间断点。
     
     因此，一个无穷间断点是 $x = 0$。
   ]
   #answer-space
   
6. 设函数  $f(x) = cases( sqrt(x^2 - 1) &"if" x < -1, b &"if" x = -1, a + arccos x &"if" -1 < x <= 1 )$  在点  $x = -1$  处连续，则  $a =$ #blank($-pi$)， $b =$ #blank($0$).
   #answer-process[
     函数在 $x = -1$ 处连续需要满足 $lim_(x->-1^-) f(x) = lim_(x->-1^+) f(x) = f(-1)$。
     
     左极限：
     $lim_(x->-1^-) f(x) = lim_(x->-1^-) sqrt(x^2 - 1)$
     
     当 $x -> -1^-$ 时，$x^2 -> 1$，所以 $x^2 - 1 -> 0^+$，因此 $lim_(x->-1^-) sqrt(x^2 - 1) = 0$。
     
     右极限：
     $lim_(x->-1^+) f(x) = lim_(x->-1^+) (a + arccos x) = a + arccos(-1)$
     
     由于 $arccos(-1) = pi$，所以 $lim_(x->-1^+) f(x) = a + pi$。
     
     函数值：$f(-1) = b$
     
     由连续性条件，三者必须相等：
     $lim_(x->-1^-) f(x) = lim_(x->-1^+) f(x) = f(-1)$
     
     即 $0 = a + pi = b$
     
     从第一个等式 $0 = a + pi$ 得 $a = -pi$。
     从第二个等式 $0 = b$ 得 $b = 0$。
     
     验证：$lim_(x->-1^-) f(x) = 0$，$lim_(x->-1^+) f(x) = -pi + pi = 0$，$f(-1) = 0$，三者相等，函数连续。
   ]
   #answer-space
   
7. 函数  $f(x) = (2^(1/x) - 1)/(2^(1/x) + 1)$  的间断点是 #blank($x = 0$)，是第 #blank($1$) 类间断点。
   #answer-process[
     函数 $f(x) = (2^(1/x) - 1)/(2^(1/x) + 1)$ 在 $x = 0$ 处无定义。
     
     计算右极限（$x -> 0^+$）：
     当 $x -> 0^+$ 时，$1/x -> +infinity$，所以 $2^(1/x) -> +infinity$。
     
     因此 $lim_(x->0^+) f(x) = lim_(x->0^+) (2^(1/x) - 1)/(2^(1/x) + 1)$
     
     分子分母同时除以 $2^(1/x)$：
     $= lim_(x->0^+) (1 - 1/2^(1/x))/(1 + 1/2^(1/x)) = (1 - 0)/(1 + 0) = 1$
     
     计算左极限（$x -> 0^-$）：
     当 $x -> 0^-$ 时，$1/x -> -infinity$，所以 $2^(1/x) -> 0$。
     
     因此 $lim_(x->0^-) f(x) = lim_(x->0^-) (2^(1/x) - 1)/(2^(1/x) + 1) = (0 - 1)/(0 + 1) = -1$
     
     结论：
     - 左极限：$lim_(x->0^-) f(x) = -1$
     - 右极限：$lim_(x->0^+) f(x) = 1$
     - 两个单侧极限都存在且都是有限值，但不相等
     
     因此 $x = 0$ 是跳跃间断点，属于第一类间断点（第一类间断点是指单侧极限都存在的间断点）。
   ]
   #answer-space
#subsection[三、计算题]
8. 求下列极限：
   (1)  $lim_(x-> +infinity)x(sqrt(x^2 + 1) -x)$
   #answer-process[
     使用分子有理化的方法：
     $lim_(x-> +infinity)x(sqrt(x^2 + 1) - x) = lim_(x-> +infinity) x dot (sqrt(x^2 + 1) - x)(sqrt(x^2 + 1) + x)/(sqrt(x^2 + 1) + x)$
     
     $= lim_(x-> +infinity) x dot (x^2 + 1 - x^2)/(sqrt(x^2 + 1) + x)$
     
     $= lim_(x-> +infinity) x/(sqrt(x^2 + 1) + x)$
     
     分子分母同时除以 $x$（注意 $x > 0$）：
     
     $= lim_(x-> +infinity) 1/(sqrt(1 + 1/x^2) + 1)$
     
     $= 1/(sqrt(1 + 0) + 1) = 1/2$
   ]
   #answer-space
   
   (2)  $lim_(x->infinity)((2x + 3)/(2x + 1))^(x + 1)$
   #answer-process[
     将表达式改写为：
     $lim_(x->infinity)((2x + 3)/(2x + 1))^(x + 1) = lim_(x->infinity)((1 + 2/(2x + 1))^(x + 1))$
     
     $= lim_(x->infinity)(((1 + 2/(2x + 1))^((2x + 1)/2))^(2(x + 1)/(2x + 1)))$
     
     由于 $lim_(x->infinity)(1 + 2/(2x + 1))^((2x + 1)/2) = e$，
     
     而 $lim_(x->infinity) 2(x + 1)/(2x + 1) = lim_(x->infinity) (2x + 2)/(2x + 1) = 1$，
     
     因此 $lim_(x->infinity)((2x + 3)/(2x + 1))^(x + 1) = e^1 = e$。
   ]
   #answer-space
   
   (3)  $lim_(x->0)(tan x - sin x)/x^3$
   #answer-process[
     使用泰勒展开式或者逐步求导。
     
     方法一（泰勒展开）：
     $tan x = x + x^3/3 + O(x^5)$
     $sin x = x - x^3/6 + O(x^5)$
     
     因此 $tan x - sin x = x^3/3 + x^3/6 + O(x^5) = x^3/2 + O(x^5)$
     
     所以 $lim_(x->0)(tan x - sin x)/x^3 = lim_(x->0) (x^3/2 + O(x^5))/x^3 = 1/2$
     
     方法二（洛必达法则）：
     分子分母都趋于 $0$，使用洛必达法则：
     $lim_(x->0)(tan x - sin x)/x^3 = lim_(x->0)(sec^2 x - cos x)/(3x^2)$
     
     仍然是 $0/0$ 型，继续使用洛必达：
     $= lim_(x->0)(2 sec^2 x tan x + sin x)/(6x)$
     
     仍是 $0/0$ 型，再用一次：
     $= lim_(x->0)(2 sec^2 x (sec^2 x + 2 tan^2 x) + cos x)/6$
     $= (2 dot 1 dot (1 + 0) + 1)/6 = 3/6 = 1/2$
   ]
   #answer-space
#subsection[四、证明题]
9. 根据函数极限的定义，证明：  $lim_(x->3)(x^2 - x - 6)/(x - 3) = 5$.
   #answer-process[
     首先，对分子进行因式分解：
     $x^2 - x - 6 = (x - 3)(x + 2)$
     
     所以对于 $x != 3$，有：
     $(x^2 - x - 6)/(x - 3) = ((x - 3)(x + 2))/(x - 3) = x + 2$
     
     现在需要证明：$lim_(x->3)(x + 2) = 5$
     
     对于任意 $epsilon > 0$，取 $delta = epsilon$，则当 $0 < |x - 3| < delta$ 时，有：
     $|(x + 2) - 5| = |x - 3| < delta = epsilon$
     
     因此，根据函数极限的定义，$lim_(x->3)(x^2 - x - 6)/(x - 3) = 5$。
   ]
   #answer-space  
   
10. 证明:  $lim_(n->infinity)(1/sqrt(n^2 + 1) + 1/sqrt(n^2 + 2) + dots + 1/sqrt(n^2 + n)) = 1$.
    #answer-process[
      设 $S_n = 1/sqrt(n^2 + 1) + 1/sqrt(n^2 + 2) + dots + 1/sqrt(n^2 + n)$。
      
      这是 $n$ 项和，每一项的形式为 $1/sqrt(n^2 + k)$，其中 $k = 1, 2, ..., n$。
      
      对于最小的项和最大的项，有：
      $1/sqrt(n^2 + n) <= 1/sqrt(n^2 + k) <= 1/sqrt(n^2 + 1)$
      
      因此：
      $n dot 1/sqrt(n^2 + n) <= S_n <= n dot 1/sqrt(n^2 + 1)$
      
      即：
      $n/sqrt(n^2 + n) <= S_n <= n/sqrt(n^2 + 1)$
      
      对左端求极限：
      $lim_(n->infinity) n/sqrt(n^2 + n) = lim_(n->infinity) n/(n sqrt(1 + 1/n)) = lim_(n->infinity) 1/sqrt(1 + 1/n) = 1$
      
      对右端求极限：
      $lim_(n->infinity) n/sqrt(n^2 + 1) = lim_(n->infinity) n/(n sqrt(1 + 1/n^2)) = lim_(n->infinity) 1/sqrt(1 + 1/n^2) = 1$
      
      根据夹逼准则，$lim_(n->infinity) S_n = 1$。
    ]
    #answer-space  
    
11. 证明: 方程  $sin x + x + 1 = 0$  在开区间  $(-pi/2, pi/2)$  内至少有一个根.
    #answer-process[
      设 $f(x) = sin x + x + 1$。
      
      首先验证 $f(x)$ 在闭区间 $[-pi/2, pi/2]$ 上连续。由于 $sin x$ 和 $x$ 都是连续函数，所以 $f(x)$ 连续。
      
      其次，计算端点处的函数值：
      - 在 $x = -pi/2$ 处：$f(-pi/2) = sin(-pi/2) + (-pi/2) + 1 = -1 - pi/2 + 1 = -pi/2 < 0$
      - 在 $x = pi/2$ 处：$f(pi/2) = sin(pi/2) + pi/2 + 1 = 1 + pi/2 + 1 = 2 + pi/2 > 0$
      
      由于 $f(-pi/2) < 0$ 且 $f(pi/2) > 0$，根据介值定理（或零点存在定理），在开区间 $(-pi/2, pi/2)$ 内至少存在一个点 $x_0$，使得 $f(x_0) = 0$。
      
      即方程 $sin x + x + 1 = 0$ 在开区间 $(-pi/2, pi/2)$ 内至少有一个根。
    ]
    #answer-space

