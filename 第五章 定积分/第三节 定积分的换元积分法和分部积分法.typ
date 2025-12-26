#import "../template.typ": *

#section[第三节 定积分的换元积分法和分部积分法]
#subsection[一、判断题(如果错误，请加以改正)]
1.  $integral_(1)^(2)(d x)/((11 + 5x)^3) =^[u = 11 + 5 x] 1/5 integral_(1)^(2) (d u)/(u^3) = 1/5 dot (-1/2 u^(-2) |_(1)^(2)) = 3/40$ (#answer-choice[错误])
   #answer-process[
     错误在于：换元时积分上下限应该改变。
     
     令 $u = 11 + 5x$，则 $d u = 5 d x$。
     当 $x = 1$ 时，$u = 16$；当 $x = 2$ 时，$u = 21$。
     
  正确的计算应为：
  $integral_1^2 d x/(11 + 5x^3) = 1/5 integral_16^21 d u/u^3 = 1/5 [-1/2 u^2]_16^21$
     
  $= 1/5 · [-1/2 · 441 + 1/2 · 256] = 1/5 · 1/2 · [1/256 - 1/441]$
   ]

2.  $integral_(-pi/2)^(pi/2) x^2 sqrt(1 - cos^2 x) d x = integral_(-pi/2)^(pi/2) x^2 sin x d x$  ，由于  $x^2 sin x$  是奇函数，因此有 $ integral_ (- pi/2) ^ (pi/2) x ^ 2 sqrt(1 - cos ^ 2 x) d x = integral_ (- pi/2) ^ (pi/2) x ^ 2 sin x d x = 0 quad (#answer-choice[错误]) $
   #answer-process[
     错误在于：$sqrt(1 - cos^2 x) = |sin x|$，而不是 $sin x$。
     
     在 $[-pi/2, pi/2]$ 上，$sin x$ 可能为负。具体地：
  - 在 $[-pi/2, 0]$ 上，$sin x <= 0$，所以 $|sin x| = -sin x$
  - 在 $[0, pi/2]$ 上，$sin x >= 0$，所以 $|sin x| = sin x$
     
     因此 $integral_(-pi/2)^(pi/2) x^2 |sin x| d x ≠ 0$（实际上 $x^2 |sin x|$ 是偶函数）。
   ] 
#subsection[二、计算题]
3. 计算下列定积分：
   (1)  $integral_(-sqrt(2))^(sqrt(2)) sqrt(2 - x^2) d x$;  
   #answer-process[
     令 $x = sqrt(2) sin t$，则 $d x = sqrt(2) cos t d t$。
     当 $x = -sqrt(2)$ 时，$t = -pi/2$；当 $x = sqrt(2)$ 时，$t = pi/2$。
     
  $sqrt(2 - x^2) = sqrt(2 - 2 sin^2 t) = sqrt(2) cos t$（在 $[-pi/2, pi/2]$ 上 $cos t >= 0$）
     
     $integral_(-sqrt(2))^(sqrt(2)) sqrt(2-x^2) d x = integral_(-pi/2)^(pi/2) sqrt(2) cos t · sqrt(2) cos t d t$
     
  $= 2 integral_(-pi/2)^(pi/2) cos^2 t d t = 2 integral_(-pi/2)^(pi/2) 1 + cos 2t/2 d t$
     
  $= integral_(-pi/2)^(pi/2) (1 + cos 2t) d t = [t + sin 2t/2]_(-pi/2)^(pi/2)$
     
     $= [pi/2 + 0] - [-pi/2 + 0] = pi$
   ]

   (2)  $integral_(-pi/2)^(pi/2) cos x cos 2x d x$;
   #answer-process[
     使用积化和差：$cos x cos 2x = 1/2[cos(x+2x) + cos(x-2x)] = 1/2[cos 3x + cos(-x)]$
     
     $= 1/2[cos 3x + cos x]$
     
  $integral_(-pi/2)^(pi/2) 1/2[cos 3x + cos x] d x = 1/2[sin 3x/3 + sin x]_(-pi/2)^(pi/2)$
     
  在 $x = pi/2$：$sin(3pi/2) = -1$，$sin(pi/2) = 1$，值为 $1/2[-1/3 + 1] = 1/3$
  在 $x = -pi/2$：$sin(-3pi/2) = 1$，$sin(-pi/2) = -1$，值为 $1/2[1/3 - 1] = -1/3$
     
     结果：$1/3 - (-1/3) = 2/3$
   ]

   (3)  $integral_1^(sqrt(3)) (d x)/(x^2 sqrt(1 + x^2))$;  
   #answer-process[
     令 $x = tan t$，则 $d x = sec^2 t d t$，$sqrt(1 + x^2) = sec t$。
     当 $x = 1$ 时，$t = pi/4$；当 $x = sqrt(3)$ 时，$t = pi/3$。
     
     $integral_1^(sqrt(3)) d x/x^2 sqrt(1 + x^2) = integral_(pi/4)^(pi/3) sec^2 t/tan^2 t · sec t d t$
     
     $= integral_(pi/4)^(pi/3) sec t/tan^2 t d t = integral_(pi/4)^(pi/3) cos t/sin^2 t d t$
     
     令 $u = sin t$，$d u = cos t d t$，则
     
     $= integral_(sqrt(2)/2)^(sqrt(3)/2) d u/u^2 = [-1/u]_(sqrt(2)/2)^(sqrt(3)/2)$
     
     $= -2/sqrt(3) + 2/sqrt(2) = sqrt(2) - (2 sqrt(3)/3)$
   ]

   (4)  $integral_1^4 (d x)/(1 + sqrt(x))$ ;  
   #answer-process[
     令 $u = sqrt(x)$，则 $x = u^2$，$d x = 2u d u$。
     当 $x = 1$ 时，$u = 1$；当 $x = 4$ 时，$u = 2$。
     
     $integral_1^4 d x/1 + sqrt(x) = integral_1^2 2u/1 + u d u = 2 integral_1^2 u/1 + u d u$
     
  $= 2 integral_1^2 ((u + 1) - 1/1 + u) d u = 2 integral_1^2 (1 - 1/1 + u) d u$
     
     $= 2[u - ln(1 + u)]_1^2 = 2[(2 - ln 3) - (1 - ln 2)]$
     
     $= 2[1 + ln(2/3)]$
   ]

   (5)  $integral_1^(e^2) (d x)/(x sqrt(1 + ln x))$;
   #answer-process[
     令 $t = ln x$，则 $d t = d x / x$。
     当 $x = 1$ 时，$t = 0$；当 $x = e^2$ 时，$t = 2$。
     
     $integral_1^(e^2) d x/x sqrt(1 + ln x) = integral_0^2 d t/sqrt(1 + t)$
     
     令 $u = 1 + t$，$d u = d t$：
     
     $= integral_1^3 d u/sqrt(u) = [2 sqrt(u)]_1^3 = 2 sqrt(3) - 2$
   ]

   (6)  $integral_(pi/4)^(pi/3) x/(sin^2 x) d x$;
   #answer-process[
     分部积分：令 $u = x$，$d v = csc^2 x d x$，则 $d u = d x$，$v = -cot x$。
     
     $integral_(pi/4)^(pi/3) x/sin^2 x d x = [-x cot x]_(pi/4)^(pi/3) + integral_(pi/4)^(pi/3) cot x d x$
     
     $= [-x cot x + ln|sin x|]_(pi/4)^(pi/3)$
     
     在 $x = pi/3$：$-pi/3 · cot(pi/3) + ln sin(pi/3) = -pi/3 · 1/sqrt(3) + ln (sqrt(3)/2)$
     
     在 $x = pi/4$：$-pi/4 · 1 + ln (sqrt(2)/2) = -pi/4 + ln(sqrt(2)/2)$
     
     最终结果为两者差的代数值。
   ]

   (7)  $integral_0^1 x arctan x d x$;  
   #answer-process[
     分部积分：令 $u = arctan x$，$d v = x d x$，则 $d u = d x/1 + x^2$，$v = x^2/2$。
     
     $integral_0^1 x arctan x d x = [x^2/2 arctan x]_0^1 - integral_0^1 x^2/2 · d x/1 + x^2$
     
     $= 1/2 arctan 1 - 1/2 integral_0^1 x^2/1 + x^2 d x$
     
     $= pi/8 - 1/2 integral_0^1 1 + x^2 - 1/1 + x^2 d x$
     
     $= pi/8 - 1/2 [integral_0^1 d x - integral_0^1 d x/1 + x^2]$
     
     $= pi/8 - 1/2 [1 - arctan 1] = pi/8 - 1/2 + pi/8$
     
     $= pi/4 - 1/2$
   ]

   (8)  $integral_1^4 (ln x)/(sqrt(x)) d x$.
   #answer-process[
     令 $u = sqrt(x)$，则 $x = u^2$，$ln x = 2 ln u$，$d x = 2u d u$。
     当 $x = 1$ 时，$u = 1$；当 $x = 4$ 时，$u = 2$。
     
     $integral_1^4 ln x/sqrt(x) d x = integral_1^2 2 ln u/u · 2u d u = 4 integral_1^2 ln u d u$
     
     分部积分 $integral ln u d u$：令 $v = ln u$，$d w = d u$，则 $d v = d u/u$，$w = u$。
     
     $integral ln u d u = u ln u - integral d u = u ln u - u + C$
     
     $4[u ln u - u]_1^2 = 4[(2 ln 2 - 2) - (0 - 1)] = 4[2 ln 2 - 2 + 1] = 4[2 ln 2 - 1] = 8 ln 2 - 4$
   ]

4. 设函数  $f(x) = x - integral_0^pi f(x) cos x d x$ ，求  $f(x)$ .
   #answer-process[
     设 $c = integral_0^pi f(x) cos x d x$，则 $f(x) = x - c$。
     
     代入定义式：
     $c = integral_0^pi (x - c) cos x d x = integral_0^pi x cos x d x - c integral_0^pi cos x d x$
     
     计算 $integral_0^pi cos x d x = [sin x]_0^pi = 0$。
     
     计算 $integral_0^pi x cos x d x$：分部积分，令 $u = x$，$d v = cos x d x$，则 $v = sin x$。
     $integral_0^pi x cos x d x = [x sin x]_0^pi - integral_0^pi sin x d x = 0 - [-cos x]_0^pi = [cos x]_0^pi = -1 - 1 = -2$
     
     所以 $c = -2 - 0 = -2$。
     
     因此 $f(x) = x - (-2) = x + 2$。
     
     验证：$integral_0^pi (x+2) cos x d x = -2 + 0 = -2$ ✓
   ]

5.(附加题)设函数  $f(x) = integral_(1)^(x^2) (sin t)/t d t$  ，求  $integral_0^1 x f(x) d x$.
   #answer-process[
     先求 $f'(x)$：由变限积分求导，
     $f'(x) = (sin(x^2)/x^2) · 2x = (2 sin(x^2)/x)$
     
     用分部积分求 $integral_0^1 x f(x) d x$：令 $u = f(x)$，$d v = x d x$，则 $d u = f'(x) d x$，$v = (x^2)/2$。
     
     $integral_0^1 x f(x) d x = [x^2/2 f(x)]_0^1 - integral_0^1 x^2/2 f'(x) d x$
     
     $= 1/2 f(1) - 1/2 integral_0^1 x^2 · (2 sin(x^2)/x) d x$
     
     $= 1/2 f(1) - integral_0^1 x sin(x^2) d x$
     
     其中 $f(1) = integral_1^1 sin t/t d t = 0$。
     
     $integral_0^1 x sin(x^2) d x$：令 $w = x^2$，$d w = 2x d x$：
     $= 1/2 integral_0^1 sin w d w = 1/2 [-cos w]_0^1 = 1/2[-cos 1 + 1] = 1 - cos 1/2$
     
     因此 $integral_0^1 x f(x) d x = 0 - 1 - cos 1/2 = cos 1 - 1/2$
   ]
