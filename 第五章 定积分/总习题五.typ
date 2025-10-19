#import "../template.typ": *

#section[总习题五]
#subsection[一、选择题]
1. 设  $I = integral_(a)^(b) f(x) dif x$ ，根据定积分的几何意义可知(#answer-choice[C]) 
   #choices(
   [ $I$  是由曲线  $y = f(x)$  及直线  $x = a, x = b$  与  $x$  轴所围成图形的面积，所以  $I > 0$ ],
   [若  $I = 0$ , 则上述图形面积为零, 从而图形的"高"  $f(x) = 0$ ],
   [ $I$  是曲线  $y = f(x)$  及直线  $x = a, x = b$  与  $x$  轴之间各部分面积的代数和],
   [ $I$  是由曲线  $y = |f(x)|$  及直线  $x = a, x = b$  与  $x$  轴所围成图形的面积]
   )
   #answer-process[
     根据定积分的几何意义：
     - 当 $f(x) >= 0$ 时，$integral_a^b f(x) dif x$ 表示曲线 $y = f(x)$ 与 $x$ 轴之间的面积。
     - 当 $f(x) <= 0$ 时，$integral_a^b f(x) dif x$ 表示曲线 $y = f(x)$ 与 $x$ 轴之间的面积的相反数。
     - 当 $f(x)$ 在区间上有正有负时，$integral_a^b f(x) dif x$ 表示各部分面积的代数和（即 $x$ 轴上方面积为正，下方面积为负）。
     
     分析各选项：
     A：错误。因为当 $f(x)$ 在 $x$ 轴下方时，积分值为负，不一定 $I > 0$。
     B：错误。$I = 0$ 只说明正负面积相互抵消，不一定图形面积为零。
     C：正确。这正是定积分的几何意义。
     D：错误。这是 $integral_a^b |f(x)| dif x$ 的几何意义，不是 $I$ 的几何意义。
   ]

2. 函数  $f(x)$  在区间  $[a, b]$  上连续是  $f(x)$  在  $[a, b]$  上可积的(#answer-choice[B])
   #choices(
   [必要条件],
   [充分条件],
   [充要条件],
   [无关条件]
   )
   #answer-process[
     根据定积分的可积性理论：
     
     - 充分条件：如果函数 $f(x)$ 在闭区间 $[a, b]$ 上连续，则 $f(x)$ 在 $[a, b]$ 上可积。
     - 必要条件：如果函数 $f(x)$ 在闭区间 $[a, b]$ 上可积，则 $f(x)$ 在 $[a, b]$ 上不一定连续。
     
     也就是说，连续性是可积性的充分条件，但不是必要条件。
     
     反例：函数 $f(x) = cases(1 &"if" x = 0, 0 &"if" x != 0)$ 在 $[0, 1]$ 上不连续（在 $x = 0$ 处间断），但它是可积的，因为只有有限个间断点。
     
     因此，函数 $f(x)$ 在区间 $[a, b]$ 上连续是 $f(x)$ 在 $[a, b]$ 上可积的充分条件。
   ]

3. 若函数  $f(x) = cases( x &"if" x >= 0, e^x &"if" x < 0 )$  则  $integral_(-1)^(2) f(x) dif x =$ (#answer-choice[A])
   #choices(
   $3 - e^(-1)$,
   $3 + e^(-1)$,
   $3 - e$,
   $3 + e$
   )
   #answer-process[
     函数 $f(x)$ 是分段函数，需要分段积分：
     $integral_(-1)^(2) f(x) dif x = integral_(-1)^(0) f(x) dif x + integral_(0)^(2) f(x) dif x$
     
     在区间 $[-1, 0]$ 上，$f(x) = e^x$，所以：
     $integral_(-1)^(0) e^x dif x = [e^x]_(-1)^(0) = e^0 - e^(-1) = 1 - e^(-1)$
     
     在区间 $[0, 2]$ 上，$f(x) = x$，所以：
     $integral_(0)^(2) x dif x = [x^2/2]_(0)^(2) = 2^2/2 - 0^2/2 = 2$
     
     因此：
     $integral_(-1)^(2) f(x) dif x = (1 - e^(-1)) + 2 = 3 - e^(-1)$
     
     所以正确答案是 A：$3 - e^(-1)$。
   ]

4. 设函数  $f(x)$  连续， $x > 0$ ，且  $integral_(1)^(x^2) f(t) dif t = x^2 (x - 1)$ ，则  $f(2) = $ (#answer-choice[C])
   #choices(
   $(3 sqrt(2))/2 - 1$,
   $2 sqrt(2) - 12$,
   $12 - 2 sqrt(2)$,
   $1 - (3 sqrt(2))/2$
   )

5. 若函数  $f(x) = cases( (integral_0^x (e^(t^2) - 1) dif t)/x^2 &"if" x != 0, a &"if" x = 0 )$  且已知  $f(x)$  在点  $x = 0$  处连续，则必有(#answer-choice[C])
   #choices(
   $a = 1$,
   $a = 2$,
   $a = 0$,
   $a = -1$
   )
   #answer-process[
     函数 $f(x)$ 在 $x = 0$ 处连续，需要满足：
     $lim_(x->0) f(x) = f(0) = a$
     
     计算 $lim_(x->0) f(x) = lim_(x->0) (integral_0^x (e^(t^2) - 1) dif t)/(x^2)$
     
     这是 $0/0$ 型未定式，使用洛必达法则：
     $lim_(x->0) (integral_0^x (e^(t^2) - 1) dif t)/(x^2) = lim_(x->0) (e^(x^2) - 1)/(2x)$
     
     仍然是 $0/0$ 型，继续使用洛必达法则：
     $= lim_(x->0) (2x e^(x^2))/2 = lim_(x->0) x e^(x^2) = 0$
     
     因此 $lim_(x->0) f(x) = 0$，由连续性条件得 $a = 0$。
     
     所以正确答案是 C：$a = 0$。
   ]

#subsection[二、填空题]
6.  $frac(d, "dx") integral_(a)^(b) arctan x dif x = #blank(0)$  
   #answer-process[
     根据定积分的性质，$integral_(a)^(b) arctan x dif x$ 是一个常数（与 $x$ 无关）。
     
     因为积分变量是 $x$，而积分限 $a$ 和 $b$ 都是常数，所以整个积分的结果是一个常数。
     
     常数的导数为 $0$，因此：
     $frac(d, "dx") integral_(a)^(b) arctan x dif x = 0$
   ]

7.  $integral_(-pi/2)^(pi/2) sqrt(1 - cos^2 x) dif x = #blank(2)$
   #answer-process[
     被积函数化简为 $sqrt(1 - cos^2 x) = |sin x|$。
     
     在区间 $[-pi/2, pi/2]$ 上，$|sin x|$ 关于原点为偶函数，且在 $[0, pi/2]$ 上为 $sin x$。
     
     因此积分为：
     $integral_(-pi/2)^(pi/2) |sin x| dif x = 2 integral_(0)^(pi/2) sin x dif x$
     
     $= 2[ -cos x ]_(0)^(pi/2) = 2[ -cos(pi/2) + cos(0) ] = 2[ 0 + 1 ] = 2$
   ]

8. 由区间  $[a, b]$  上连续曲线  $y = f(x)$ , 直线  $x = a, x = b (a < b)$  和  $x$  轴所围成图形的面积为  $S = #blank($integral_(a)^(b) abs(f(x)) dif x$)$ .
   #answer-process[
     根据定积分的几何意义，曲线 $y = f(x)$ 与 $x$ 轴之间的面积应取绝对值，以确保面积为正。
     
     因此，区间 $[a, b]$ 上由曲线 $y = f(x)$、直线 $x = a$、$x = b$ 和 $x$ 轴所围成的图形面积为：
     $S = integral_(a)^(b) |f(x)| dif x$
   ]

9.  $integral_(-1)^0 |3x + 1| dif x = $ #blank([5/6])
   #answer-process[
     令 $3x + 1 = 0$，得 $x = -1/3$，这是绝对值函数的变号点。
     
     将积分区间 $[-1, 0]$ 分成两部分：
     $integral_(-1)^0 |3x + 1| dif x = integral_(-1)^(-1/3) |3x + 1| dif x + integral_(-1/3)^(0) |3x + 1| dif x$
     
     在区间 $[-1, -1/3]$ 上，$3x + 1 <= 0$，所以 $|3x + 1| = -(3x + 1) = -3x - 1$。
     在区间 $[-1/3, 0]$ 上，$3x + 1 >= 0$，所以 $|3x + 1| = 3x + 1$。
     
     因此：
     $integral_(-1)^0 |3x + 1| dif x = integral_(-1)^(-1/3) (-3x - 1) dif x + integral_(-1/3)^(0) (3x + 1) dif x$
     
     计算第一个积分：
     $integral_(-1)^(-1/3) (-3x - 1) dif x = [-3x^2/2 - x]_(-1)^(-1/3)$
     $= [-3/2 · (1/9) - (-1/3)] - [-3/2 · 1 - (-1)]$
     $= [-1/6 + 1/3] - [-3/2 + 1]$
     $= [1/6] - [-1/2] = 1/6 + 1/2 = 2/3$
     
     计算第二个积分：
     $integral_(-1/3)^(0) (3x + 1) dif x = [3x^2/2 + x]_(-1/3)^(0)$
     $= [0] - [3/2 · (1/9) + (-1/3)]$
     $= 0 - [1/6 - 1/3] = 0 - [-1/6] = 1/6$
     
     因此：
     $integral_(-1)^0 |3x + 1| dif x = 2/3 + 1/6 = 5/6$
   ]

10. 已知  $x e^x$  为函数  $f(x)$  的一个原函数, 则  $integral_(0)^(1) x f'(x) dif x = #blank($e$)$
   #answer-process[
     由于 $x e^x$ 是 $f(x)$ 的一个原函数，所以：
     $f(x) = frac(d, "dx") (x e^x) = e^x + x e^x = e^x (1 + x)$
     
     计算 $integral_(0)^(1) x f'(x) dif x$：
     
     方法一：使用分部积分法
     设 $u = x$，$d v = f'(x) "dx"$，则 $d u = "dx"$，$v = f(x)$
     
     $integral_(0)^(1) x f'(x) dif x = [x f(x)]_(0)^(1) - integral_(0)^(1) f(x) dif x$
     
     计算第一项：
     $[x f(x)]_(0)^(1) = 1 · f(1) - 0 · f(0) = f(1) = e^1 (1 + 1) = 2e$
     
     计算第二项：
     $integral_(0)^(1) f(x) dif x = integral_(0)^(1) e^x (1 + x) dif x$
     
     使用分部积分法，设 $u = 1 + x$，$d v = e^x "dx"$，则 $d u = "dx"$，$v = e^x$
     
     $integral_(0)^(1) e^x (1 + x) dif x = [(1 + x) e^x]_(0)^(1) - integral_(0)^(1) e^x dif x$
     $= [(1 + 1) e^1 - (1 + 0) e^0] - [e^x]_(0)^(1)$
     $= [2e - 1] - [e - 1] = 2e - 1 - e + 1 = e$
     
     因此：
     $integral_(0)^(1) x f'(x) dif x = 2e - e = e$
     
     方法二：直接计算
     由于 $f(x) = e^x (1 + x)$，那么：
     $f'(x) = frac(d, "dx") [e^x (1 + x)] = e^x (1 + x) + e^x = e^x (2 + x)$
     
     所以：
     $integral_(0)^(1) x f'(x) dif x = integral_(0)^(1) x e^x (2 + x) dif x$
     $= integral_(0)^(1) (2x e^x + x^2 e^x) dif x$
     $= 2 integral_(0)^(1) x e^x dif x + integral_(0)^(1) x^2 e^x dif x$
     
     计算 $integral x e^x dif x$：
     使用分部积分，设 $u = x$，$d v = e^x "dx"$，则 $d u = "dx"$，$v = e^x$
     $integral x e^x dif x = x e^x - integral e^x dif x = x e^x - e^x + C = e^x (x - 1) + C$
     
     计算 $integral x^2 e^x dif x$：
     使用分部积分，设 $u = x^2$，$d v = e^x "dx"$，则 $d u = 2x "dx"$，$v = e^x$
     $integral x^2 e^x dif x = x^2 e^x - 2 integral x e^x dif x = x^2 e^x - 2 e^x (x - 1) + C = e^x (x^2 - 2x + 2) + C$
     
     因此：
     $integral_(0)^(1) x f'(x) dif x = 2 [e^x (x - 1)]_(0)^(1) + [e^x (x^2 - 2x + 2)]_(0)^(1)$
     $= 2 [e^1 (1 - 1) - e^0 (0 - 1)] + [e^1 (1 - 2 + 2) - e^0 (0 - 0 + 2)]$
     $= 2 [0 - (-1)] + [e - 2]$
     $= 2 + e - 2 = e$
     
     两种方法都得到相同的结果：$integral_(0)^(1) x f'(x) dif x = e$
   ]

#subsection[三、计算题]
11. 计算下列定积分：\
    (1)  $integral_(1)^(e) (ln x)/x dif x$;
    #answer-process[
      令 $u = ln x$，$dif u = dif x / x$。当 $x = 1$ 时 $u = 0$；当 $x = e$ 时 $u = 1$。
      $integral_1^e frac(ln x, x) dif x = integral_0^1 u dif u = [u^2/2]_0^1 = 1/2$
    ]

    (2)  $lim_(x->0) (integral_0^x 2t cos t dif t)/(1 - cos x)$;
      #answer-process[
         分子分母都在 $x -> 0$ 时趋于 $0$，用洛必达法则。
         $lim_(x -> 0) frac(integral_(0)^(x) 2 t cos t dif t, 1 - cos x) = lim_(x -> 0) frac(2 x cos x, sin x)$
      
         再用洛必达：$= lim_(x -> 0) frac(2 cos x - 2 x sin x, cos x) = frac(2, 1) = 2$
      ]

    (3)  $integral_(-1)^(1) (x)/(sqrt(5 - 4x)) dif x$;
      #answer-process[
         令 $u = 5 - 4 x$，$dif u = -4 dif x$，因此 $x = (5 - u)/4$，$dif x = -frac(dif u, 4)$。
         当 $x = -1$ 时 $u = 9$；当 $x = 1$ 时 $u = 1$。
      
         $integral_(-1)^(1) frac(x, sqrt(5 - 4 x)) dif x = integral_(9)^(1) frac((5 - u)/4, sqrt(u)) · frac(-dif u, 4)$
      
         $= integral_(1)^(9) frac(5 - u, 16 sqrt(u)) dif u$
      
         $= frac(1, 16) integral_(1)^(9) (5 u^(-1/2) - u^(1/2)) dif u$
      
         $= frac(1, 16) [10 sqrt(u) - frac(2, 3) u^(3/2)]_1^9 = frac(1, 6)$
      ]

    (4)  $integral_(1)^(2) x log_(2) x  dif x$ ;
      #answer-process[
         分部积分：令 $u = log_2 x$，$dif v = x dif x$，则 $v = (x^2)/2$。
         $integral_(1)^(2) x log_2 x dif x = [frac(x^2, 2) log_2 x]_1^2 - integral_(1)^(2) frac(x^2, 2) · frac(1, x ln 2) dif x$
      
         $= 2 - frac(1, 2 ln 2) integral_(1)^(2) x dif x = 2 - frac(1, 2 ln 2) [frac(x^2, 2)]_1^2$
      
         $= 2 - frac(3, 4 ln 2)$
      ]

    (5)  $integral_(1)^(e) sin ln x dif x$.
    #answer-process[
      分部积分：令 $u = sin ln x$，$dif v = dif x$，则 $v = x$。
         $integral_(1)^(e) sin ln x dif x = [x sin ln x]_1^e - integral_(1)^(e) x · cos ln x · frac(1, x) dif x$
      
         $= e sin 1 - integral_(1)^(e) cos ln x dif x$
      
         对 $integral cos ln x dif x$ 也分部积分（如第四章第三节中的做法）...最终结果：
         $= frac(e, 2) (sin 1 + cos 1) - frac(1, 2) (sin 0 + cos 0) = frac(e, 2) (sin 1 + cos 1) - frac(1, 2)$
    ]

#subsection[四、证明题]
12. 设  $f''(x)$  在区间  $[a, b]$  上连续，证明：
$ integral_a^b x f''(x) dif x = [b f'(b) - f(b)] - [a f'(a) - f(a)] $
   #answer-process[
     使用分部积分。令 $u = x$，$dif v = f''(x) dif x$，则 $dif u = dif x$，$v = f'(x)$。
     
     $integral_a^b x f''(x) dif x = [x f'(x)]_a^b - integral_a^b f'(x) dif x$
     
     $= [b f'(b) - a f'(a)] - [f(b) - f(a)]$
     
     $= b f'(b) - a f'(a) - f(b) + f(a)$
     
     $= [b f'(b) - f(b)] - [a f'(a) - f(a)]$ ✓
   ]
