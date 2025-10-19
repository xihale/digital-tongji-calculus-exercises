#import "../template.typ": *

#section[第二节 微积分基本公式]
#subsection[一、计算题]
1.计算下列导数：
   (1)  $d/(d x) integral_0^(x^2) sqrt(1 + t^2) dif t$;
   #answer-process[
  用变限积分的求导法则：$frac(d, d x) integral_a^(u(x)) f(t) dif t = f(u(x)) · u'(x)$
     
     这里 $u(x) = x^2$，$u'(x) = 2x$，$f(t) = sqrt(1 + t^2)$。
     
  $frac(d, d x) integral_0^(x^2) sqrt(1 + t^2) dif t = sqrt(1 + (x^2)^2) · 2x = 2x sqrt(1 + x^4)$
   ]

   (2)  $d/(d x) integral_(x^2)^(x^3) (dif t)/(sqrt(1 + t^4))$;
   #answer-process[
     对于 $integral_(u(x))^(v(x)) f(t) dif t$ 的求导：
  $frac(d, d x) = f(v(x)) v'(x) - f(u(x)) u'(x)$
     
     这里 $u(x) = x^2, v(x) = x^3, f(t) = 1/(sqrt(1)+t^4)$。
     
  $frac(d, d x) integral_(x^2)^(x^3) (dif t)/(sqrt(1 + t^4)) = frac(1, sqrt(1 + (x^3)^4)) · 3x^2 - frac(1, sqrt(1 + (x^2)^4)) · 2x$
     
    $= frac(3x^2, sqrt(1 + x^12)) - frac(2x, sqrt(1 + x^8))$
   ]

   (3)  $d/(d x) integral_(sin x)^(cos x) cos (pi t^2) dif t$.
   #answer-process[
     $u(x) = sin x, v(x) = cos x, f(t) = cos(pi t^2)$。
     
  $frac(d, d x) = cos(pi cos^2 x) · (-sin x) - cos(pi sin^2 x) · cos x$
     
     $= -sin x · cos(pi cos^2 x) - cos x · cos(pi sin^2 x)$
   ]

2. 求下列极限：

   (1)  $lim_(x->0) (integral_0^x cos t^2 dif t)/x$;
   #answer-process[
    这是 $0/0$ 型，使用洛必达法则或泰勒展开。
     
  用洛必达法则：$lim_(x->0) frac(integral_0^x cos t^2 dif t, x) = lim_(x->0) frac(d/(d x) [integral_0^x cos t^2 dif t], d/(d x)[x])$
     
    $= lim_(x->0) frac(cos x^2, 1) = cos 0 = 1$
   ]

   (2)  $lim_(x->0) ((integral_0^x e^(t^2) dif t)^2)/(integral_0^x t e^(2t^2) dif t)$;
   #answer-process[
     分子分母都在 $x -> 0$ 时趋于 $0$，使用洛必达法则。
     
    分子导数：$2 integral_0^x e^(t^2) dif t · e^(x^2)$
    分母导数：$x e^(2x^2)$
     
    $lim_(x->0) frac(2 integral_0^x e^(t^2) dif t · e^(x^2), x e^(2x^2))$
     
     仍是 $0/0$ 型。用泰勒展开：$integral_0^x e^(t^2) dif t approx x - (x^3)/3 + ...$
     
     分子：$2(x + O(x^3)) · 1 = 2x + O(x^3)$
     分母：$x · 1 = x$
     
    $lim_(x->0) frac(2x, x) = 2$
   ]

   (3)  $lim_(x-> +infinity) (integral_0^x arctan^2 t dif t)/(sqrt(x^2 + 1))$.
   #answer-process[
     当 $x -> +infinity$ 时，$arctan t -> pi/2$，所以 $integral_0^x arctan^2 t dif t approx x · (pi/2)^2 = pi^2 x/4$。
     
     分母：$sqrt(x^2 + 1) approx x$
     
    $lim_(x->+infinity) frac(pi^2 x / 4, x) = (pi^2)/4$
   ]

3. 计算下列定积分：

   (1)  $integral_0^(sqrt(3) a) (dif x)/(a^2 + x^2)$;
   #answer-process[
    使用不定积分结果：$integral frac(dif x, a^2 + x^2) = frac(1, a) arctan(x/a) + C$
     
    $integral_0^(sqrt(3) a) frac(dif x, a^2 + x^2) = [frac(1, a) arctan(x/a)]_0^(sqrt(3) a)$
     
    $= frac(1, a)[arctan(sqrt(3)) - arctan(0)] = frac(1, a) · frac(pi, 3)$
   ]

   (2)  $integral_(-1)^0 (3x^4 + 3x^2 + 1)/(x^2 + 1) dif x$;
   #answer-process[
    长除法：$frac(3x^4 + 3x^2 + 1, x^2 + 1) = 3x^2 + frac(1, x^2 + 1)$
     
    $integral_(-1)^0 (3x^2 + frac(1, x^2 + 1)) dif x = [x^3 + arctan x]_(-1)^0$
     
     $= (0 + 0) - ((-1)^3 + arctan(-1)) = 0 - (-1 - pi/4) = 1 + pi/4$
   ]

   (3)  $integral_0^(2pi) |sin x| dif x$;
   #answer-process[
     由于 $|sin x|$ 的周期性，在 $[0, 2pi]$ 上有四个周期的半波。
     
     $integral_0^(2pi) |sin x| dif x = 4 integral_0^(pi) sin x dif x$ （因为在 $[0, pi]$ 上 $sin x > 0$）
     
     $= 4[-cos x]_0^(pi) = 4[(-cos pi) - (-cos 0)] = 4[1 + 1] = 8$
   ]

  (4)  $integral_0^2 f(x) dif x$ ，其中  $f(x) = cases(x + 1 &"if" x <= 1, frac(1, 2) x^2 &"if" x > 1)$
   #answer-process[
    分段积分：
    $integral_0^2 f(x) dif x = integral_0^1 (x + 1) dif x + integral_1^2 frac(x^2, 2) dif x$
     
    第一部分：$integral_0^1 (x + 1) dif x = [x^2/2 + x]_0^1 = 1/2 + 1 = 3/2$
     
    第二部分：$integral_1^2 frac(x^2, 2) dif x = [x^3/6]_1^2 = 8/6 - 1/6 = 7/6$
     
    总和：$3/2 + 7/6 = 9/6 + 7/6 = 16/6 = 8/3$
   ]

  (5)  $integral_0^2 max{x^2, x^3} dif x$.
   #answer-process[
     先找出 $x^2$ 和 $x^3$ 的大小关系：
  $x^2 >= x^3$ 当且仅当 $x^2(1 - x) >= 0$，又当且仅当 $0 <= x <= 1$
     
  所以：$max{x^2, x^3} = cases(x^2 &"if" 0 <= x <= 1, x^3 &"if" 1 < x <= 2)$
     
     $integral_0^2 max{x^2, x^3} dif x = integral_0^1 x^2 dif x + integral_1^2 x^3 dif x$
     
     $= [x^3/3]_0^1 + [x^4/4]_1^2 = 1/3 + (16/4 - 1/4) = 1/3 + 15/4 = 4/12 + 45/12 = 49/12$
   ]

4. 设函数  $y = f(x)$  具有三阶连续导数，其部分图形如图5-1所示，试确定下列定积分的符号：
   #figure(
     image("images/5-1.jpg", width: 80%),
     caption: [图5-1]
   )

   (1)  $integral_(-3)^2 f(x) dif x$ ;
   #answer-process[
     定积分 $integral_(-3)^2 f(x) dif x$ 表示曲线 $y = f(x)$ 与 $x$ 轴围成的面积的代数和。
     
     从图形可以看出，在 $[-3, 2]$ 区间上，$f(x)$ 在某些部分为正，某些部分为负。
     需要根据具体的图形判断正负面积的相对大小。
     一般地，若图形在上方部分面积大于下方部分，则积分为正。
   ]

   (2)  $integral_(-3)^2 f'(x) dif x$ ;
   #answer-process[
     使用微积分基本定理：
     $integral_(-3)^2 f'(x) dif x = [f(x)]_(-3)^2 = f(2) - f(-3)$
     
     从图形可得 $f$ 在两端点的值，计算差值即可得到积分值的符号。
   ]

   (3)  $integral_(-3)^2 f''(x) dif x$ ;
   #answer-process[
     $integral_(-3)^2 f''(x) dif x = [f'(x)]_(-3)^2 = f'(2) - f'(-3)$
     
     需要从图形判断导数在两端点的大小。$f'(x)$ 表示曲线的斜率，从图形观察各点处的斜率即可。
   ]

   (4)  $integral_(-3)^2 f'''(x) dif x$ .
   #answer-process[
     $integral_(-3)^2 f'''(x) dif x = [f''(x)]_(-3)^2 = f''(2) - f''(-3)$
     
     $f''(x)$ 表示曲线的凹凸性。从图形可以观察各点处曲线的凹凸情况。
   ]
