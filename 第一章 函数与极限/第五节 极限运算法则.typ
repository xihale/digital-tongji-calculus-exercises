#import "../template.typ": *

#section[第五节 极限运算法则]
#subsection[一、选择题]
1. 函数 $f(x) = (x + 1)/(x^2 - 1)$ 在( )的变化过程中为无穷大
   #v(0.5em)
   #choices(
   "$x -> 0$",
   "$x -> 1$",
   "$x -> -1$",
   "$x -> infinity$"
   )
   #answer-process[
     化简函数：$f(x) = (x + 1)/((x - 1)(x + 1)) = 1/(x - 1) (x != -1)$
     
     - 当 $x -> 0$ 时，$f(x) -> -1$，不是无穷大
     - 当 $x -> 1$ 时，$f(x) -> infinity$，是无穷大 ✓
     - 当 $x -> -1$ 时，函数无定义，不能判定
     - 当 $x -> infinity$ 时，$f(x) -> 0$，不是无穷大
     
     因此答案是 B。
   ]

#subsection[二、计算题]
2. 计算下列极限：
   (1) $lim_(x->1)(x^2 - 2x + 1)/(x^2 - 1)$
   #answer-process[
     分解因式：
     $lim_(x->1)(x^2 - 2x + 1)/(x^2 - 1) = lim_(x->1)((x - 1)^2)/((x - 1)(x + 1))$
     
     当 $x -> 1$ 时，$x - 1 -> 0$，可约去 $(x - 1)$：
     $= lim_(x->1)(x - 1)/(x + 1) = 0/2 = 0$
   ]

   (2) $lim_(h->0)((x + h)^2 - x^2)/h$
   #answer-process[
     展开分子：
     $lim_(h->0)((x + h)^2 - x^2)/h = lim_(h->0)(x^2 + 2 x h + h^2 - x^2)/h$
     
     $= lim_(h->0)(2 x h + h^2)/h = lim_(h->0)(2 x + h) = 2 x$
   ]

   (3) $lim_(n->infinity)(1 + 1/2 + 1/4 + dots + 1/2^n)$
   #answer-process[
     这是首项为 1，公比为 $1/2$ 的等比级数和：
     $S_n = (1(1 - (1/2)^(n+1)))/(1 - 1/2) = 2(1 - (1/2)^(n+1))$
     
     当 $n -> infinity$ 时，$(1/2)^(n+1) -> 0$，因此：
     $lim_(n->infinity) S_n = 2$
   ]

   (4) $lim_(n->infinity)((n + 1)(n + 2)(n + 3))/(5n^3)$
   #answer-process[
     分子展开：$(n + 1)(n + 2)(n + 3) = n^3 + 6n^2 + 11n + 6$
     
     分子分母同除以 $n^3$：
     $lim_(n->infinity)((n + 1)(n + 2)(n + 3))/(5n^3) = lim_(n->infinity)(1 + 6/n + 11/n^2 + 6/n^3)/(5)$
     
     $= (1 + 0 + 0 + 0)/5 = 1/5$
   ]

   (5) $lim_(x->1)(1/(1 - x) - 3/(1 - x^3))$
   #answer-process[
     通分：
     $lim_(x->1)(1/(1 - x) - 3/(1 - x^3)) = lim_(x->1)(1/(1 - x) - 3/((1 - x)(1 + x + x^2)))$
     
     $= lim_(x->1)((1 + x + x^2 - 3)/((1 - x)(1 + x + x^2))) = lim_(x->1)((x^2 + x - 2)/((1 - x)(1 + x + x^2)))$
     
     分解 $x^2 + x - 2 = (x + 2)(x - 1) = -(x + 2)(1 - x)$：
     $= lim_(x->1)(-(x + 2)(1 - x))/((1 - x)(1 + x + x^2)) = lim_(x->1)(-(x + 2))/(1 + x + x^2)$
     
     $= -(1 + 2)/(1 + 1 + 1) = -3/3 = -1$
   ]

   (6) $lim_(x->0)x^2 sin(1/x)$
   #answer-process[
     由于 $|sin(1/x)| <= 1$，所以 $|x^2 sin(1/x)| <= x^2$
     
     当 $x -> 0$ 时，$x^2 -> 0$，根据夹逼准则：
     $lim_(x->0)x^2 sin(1/x) = 0$
   ]

   (7) $lim_(x->infinity)(arctan x)/x$
   #answer-process[
     由于 $|arctan x| < pi/2$，对于充分大的 $x$ 有：
     $|arctan x/x| < (pi/2)/x$
     
     当 $x -> infinity$ 时，$(pi/2)/x -> 0$，因此：
     $lim_(x->infinity)(arctan x)/x = 0$
   ]

3. 函数 $y = x cos x$ 在区间 $(-infinity, +infinity)$ 上是否有界? 这个函数是否为 $x -> +infinity$ 时的无穷大? 为什么?
   #answer-process[
     函数 $y = x cos x$ 在 $(-infinity, +infinity)$ 上 *无界*。
     
     理由：虽然 $|cos x| <= 1$，但 $|x cos x| = |x| dot |cos x| <= |x|$。对于任意 $M > 0$，可以选择 $|x| > M$，使得 $|x cos x|$ 可以任意大。
     
     这个函数 *不是* $x -> +infinity$ 时的无穷大。
     
     理由：当 $x$ 充分大时，在某些地方（如 $x = 2k pi + pi/2$，其中 $k in ZZ^+$），有 $cos x = 0$，此时 $y = 0$。因此函数值无法保持无限增大，不符合无穷大的定义。
   ]

#subsection[三、证明题]
4. 证明: 函数 $y = 1/x sin(1/x)$ 在区间 $(0, 1]$ 上无界, 但并不是 $x -> 0^+$ 时的无穷大.
   #answer-process[
     *证明函数无界：*
     
     对于任意 $M > 0$，选择 $x_n = 1/(2n pi + pi/2)$ 其中 $n$ 为自然数。
     
     则 $x_n in (0, 1]$ 且当 $n$ 充分大时 $x_n$ 充分小。
     
     此时 $sin(1/x_n) = sin(2n pi + pi/2) = 1$，所以 $y(x_n) = 1/x_n dot 1 = 2n pi + pi/2$
     
     当 $n -> infinity$ 时，$y(x_n) -> infinity$，因此函数无界。
     
     *证明不是无穷大：*
     
     选择另一列点 $x'_n = 1/(2n pi)$ 其中 $n in ZZ^+$。
     
     则 $x'_n in (0, 1]$ 且 $x'_n -> 0^+$。
     
     此时 $sin(1/x'_n) = sin(2n pi) = 0$，所以 $y(x'_n) = 1/x'_n dot 0 = 0$
     
     虽然 $x'_n -> 0^+$，但函数值 $y(x'_n) = 0$ 有界且不趋于无穷大。因此函数不是 $x -> 0^+$ 时的无穷大。
   ]