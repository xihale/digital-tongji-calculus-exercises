#import "../template.typ": *

#section[高等数学(上册)期末测试模拟卷(一)]
#subsection[一、选择题(每小题3分，共15分)]
1. 当  $x -> 0$  时，下列(#h(2em))是  $x$  的同阶(不等价)无穷小。
   #choices(
   [$sin x - x$],
   [$ln (1 - x)$],
   [$x^2 sin x$],
   [$e^x - 1$]
   )
   
   #answer-process[
     答案：B
     
     检验各选项与 $x$ 的阶数关系：
     
     A. $sin x - x = x - x^3/6 + o(x^3) - x = -x^3/6 + o(x^3)$，为 $x$ 的高阶无穷小
     
     B. $ln(1-x) = -x - x^2/2 - x^3/3 - dots$，$lim_(x->0) (ln(1-x))/x = lim_(x->0) (-1 - x/2 - x^2/3 - dots) = -1$
        极限为非零常数，故为同阶但不等价无穷小
     
     C. $x^2 sin x tilde x^2 dot x = x^3$，为 $x$ 的高阶无穷小
     
     D. $e^x - 1 = x + x^2/2 + dots$，$lim_(x->0) (e^x - 1)/x = 1$，为等价无穷小
   ]
2.下列命题中不正确的是(#h(2em))
   #choices(
   [若函数  $f(x)$  在点  $x_0$  处不连续，则  $f(x)$  在点  $x_0$  处必不可导],
   [若  $lim_(x -> x_0) f(x)$  不存在, 则函数  $f(x)$  在点  $x_0$  处不连续],
   [若函数  $f(x)$  在点  $x_0$  处可导，则  $f(x)$  在点  $x_0$  处必可微],
   [若函数  $f(x)$  在区间  $[a, b]$  上可积，则  $f(x)$  在  $[a, b]$  上必连续]
   )
   
   #answer-process[
     答案：D
     
     A. 正确。可导必连续，不连续必不可导
     
     B. 正确。函数在 $x_0$ 处连续的定义是 $lim_(x->x_0) f(x) = f(x_0)$，若极限不存在则不连续
     
     C. 正确。可导与可微是等价的
     
     D. 不正确。可积不一定连续，例如有有限个间断点的函数仍然可积
   ]
3. 设函数  $f(x) = (1 + e^(1/x))/(3 + 2 e^(1/x))$ ，则  $x = 0$  是  $f(x)$  的(#h(2em)).
   #choices(
   [跳跃间断点],
   [可去间断点],
   [无穷间断点],
   [振荡间断点]
   )
   
   #answer-process[
     答案：A
     
     计算左右极限：
     
     $lim_(x->0^+) f(x) = lim_(x->0^+) (1 + e^(1/x))/(3 + 2e^(1/x))$
     
     当 $x->0^+$ 时，$1/x -> +infinity$，$e^(1/x) -> +infinity$
     
     $lim_(x->0^+) f(x) = lim_(x->0^+) (1 + e^(1/x))/(3 + 2e^(1/x)) = lim_(x->0^+) (1/(e^(1/x)) + 1)/(3/(e^(1/x)) + 2) = (0+1)/(0+2) = 1/2$
     
     $lim_(x->0^-) f(x) = lim_(x->0^-) (1 + e^(1/x))/(3 + 2e^(1/x))$
     
     当 $x->0^-$ 时，$1/x -> -infinity$，$e^(1/x) -> 0$
     
     $lim_(x->0^-) f(x) = (1+0)/(3+0) = 1/3$
     
     左右极限存在但不相等，故为跳跃间断点
   ]
4.下列不定积分的计算不正确的是(#h(2em))
   #choices(
   [$integral (dif x)/(sqrt(4 - x^2)) = arcsin(x/2) + C$],
   [$integral (dif x)/(x^2 - 2x + 2) = arctan(x - 1) + C$],
   [$integral 2^x dot 3^x dif x = (2^x dot 3^x)/(ln 2 + ln 3) + C$],
   [$integral (x)/(1 + x^2) dif x = arctan x + C$]
   )
   
   #answer-process[
     答案：D
     
     A. 正确。$integral (dif x)/(sqrt(4-x^2)) = arcsin(x/2) + C$
     
     B. 正确。$x^2 - 2x + 2 = (x-1)^2 + 1$，$integral (dif x)/((x-1)^2+1) = arctan(x-1) + C$
     
     C. 正确。$integral 2^x dot 3^x dif x = integral 6^x dif x = 6^x/(ln 6) + C = 6^x/(ln 2 + ln 3) + C$
     
     D. 不正确。$integral (x dif x)/(1+x^2) = 1/2 integral (dif(1+x^2))/(1+x^2) = 1/2 ln(1+x^2) + C$
        而 $arctan x$ 的导数是 $1/(1+x^2)$，不是 $x/(1+x^2)$
   ]
5.下列反常积分收敛的是(#h(2em))
   #choices(
   [$integral_(1)^(+infinity)(dif x)/(sqrt x)$],
   [$integral_(-infinity)^(+infinity) (dif x)/(x^2 + 4x + 5)$],
   [$integral_(0)^(1) (dif x)/(x^2)$],
   [$integral_(-1)^(1) (dif x)/x$]
   )
   
   #answer-process[
     答案：B
     
     A. $integral_(1)^(+infinity) (dif x)/(sqrt(x)) = integral_1^(+infinity) x^(-1/2) dif x = [2sqrt(x)]_1^(+infinity) = +infinity$，发散
     
     B. $x^2 + 4x + 5 = (x+2)^2 + 1$
        $integral_(-infinity)^(+infinity) (dif x)/((x+2)^2+1) = [arctan(x+2)]_(-infinity)^(+infinity) = pi/2 - (-pi/2) = pi$，收敛
     
     C. $integral_0^1 (dif x)/(x^2) = [-1/x]_0^1 = -1 - (-infinity) = +infinity$，发散
     
     D. $integral_(-1)^1 (dif x)/x$ 在 $x=0$ 处被积函数无界，且 $lim_(epsilon->0) integral_(-epsilon)^epsilon (dif x)/x$ 不存在，发散
   ]
#subsection[二、填空题(每小题3分，共18分)]
6. 设函数  $f(x) = cases( (sin 3x)/(ln(1 + x)) &"if" -1 < x < 0, a sec x + 1 &"if" x >= 0 )$  在点  $x = 0$  处连续，则  $a =$  #blank().
   
   #answer-process[
     答案：$a = 2$
     
     函数在 $x=0$ 处连续，需要 $lim_(x->0^-) f(x) = lim_(x->0^+) f(x) = f(0)$
     
     左极限：$lim_(x->0^-) (sin 3x)/(ln(1+x))$
     
     利用等价无穷小：$sin 3x tilde 3x$，$ln(1+x) tilde x$
     
     $lim_(x->0^-) (sin 3x)/(ln(1+x)) = lim_(x->0^-) (3x)/x = 3$
     
     右极限：$lim_(x->0^+) (a sec x + 1) = a sec 0 + 1 = a + 1$
     
     由连续性：$3 = a + 1$，故 $a = 2$
   ]
7. 已知参数方程  $cases( x = ln (1 + t^2), y = t - arctan t, )$  则  $(d y)/(d x) =$  
   
   #answer-process[
     答案：$(d y)/(d x) = t/2$
     
     由参数方程求导公式：$(d y)/(d x) = ((d y)/(d t))/((d x)/(d t))$
     
     $(d x)/(d t) = dif/(dif t) ln(1+t^2) = (2t)/(1+t^2)$
     
     $(d y)/(d t) = dif/(dif t) (t - arctan t) = 1 - 1/(1+t^2) = t^2/(1+t^2)$
     
     $(d y)/(d x) = (t^2/(1+t^2))/(2t/(1+t^2)) = t^2/(1+t^2) dot (1+t^2)/(2t) = t/2$
   ]
8. 函数  $f(x) = x e^x$  的带有拉格朗日余项的三阶麦克劳林公式为  
   
   #answer-process[
     答案：$f(x) = x + x^2 + x^3/2 + (e^xi (3+xi))/(4!) x^4$，其中 $xi$ 在 $0$ 与 $x$ 之间
     
     计算各阶导数：
     
     $f(x) = x e^x$，$f(0) = 0$
     
     $f'(x) = e^x + x e^x = (1+x)e^x$，$f'(0) = 1$
     
     $f''(x) = e^x + (1+x)e^x = (2+x)e^x$，$f''(0) = 2$
     
     $f'''(x) = e^x + (2+x)e^x = (3+x)e^x$，$f'''(0) = 3$
     
     $f^((4))(x) = e^x + (3+x)e^x = (4+x)e^x$
     
     麦克劳林公式：
     $f(x) = f(0) + f'(0)x + (f''(0))/(2!)x^2 + (f'''(0))/(3!)x^3 + (f^((4))(xi))/(4!)x^4$
     
     $= 0 + x + (2)/(2)x^2 + (3)/(6)x^3 + ((4+xi)e^xi)/(24)x^4$
     
     $= x + x^2 + x^3/2 + ((4+xi)e^xi)/(24)x^4$
   ]
9. 曲线  $y = 4x - x^2$  在其顶点处的曲率  $k =$  
   
   #answer-process[
     答案：$k = 2$
     
     首先求顶点坐标：$y' = 4 - 2x = 0$，得 $x = 2$，$y = 4$
     
     顶点为 $(2, 4)$
     
     曲率公式：$k = (|y''|)/((1+(y')^2)^(3/2))$
     
     $y' = 4 - 2x$，$y'' = -2$
     
     在顶点 $(2,4)$ 处，$y' = 0$，$y'' = -2$
     
     $k = (|-2|)/((1+0^2)^(3/2)) = 2/1 = 2$
   ]
10.  $integral_(-2)^(2)(x|sin x| + 4 - x^2)/(sqrt(4 - x^2)) dif x = (#h(2em))$
   
   #answer-process[
     答案：$2pi$
     
     分解积分：
     $integral_(-2)^2 (x|sin x| + 4 - x^2)/(sqrt(4-x^2)) dif x = integral_(-2)^2 (x|sin x|)/(sqrt(4-x^2)) dif x + integral_(-2)^2 (4-x^2)/(sqrt(4-x^2)) dif x$
     
     第一项：$f(x) = (x|sin x|)/(sqrt(4-x^2))$
     
     检验奇偶性：$f(-x) = (-x|sin(-x)|)/(sqrt(4-x^2)) = (-x|sin x|)/(sqrt(4-x^2)) = -f(x)$
     
     故第一项为奇函数在对称区间上的积分，结果为 $0$
     
     第二项：$integral_(-2)^2 (4-x^2)/(sqrt(4-x^2)) dif x = integral_(-2)^2 sqrt(4-x^2) dif x$
     
     令 $x = 2 sin theta$，$dif x = 2 cos theta dif theta$
     
     $integral_(-2)^2 sqrt(4-x^2) dif x = integral_(-pi/2)^(pi/2) 2 cos theta dot 2 cos theta dif theta$
     
     $= 4 integral_(-pi/2)^(pi/2) cos^2 theta dif theta = 4 integral_(-pi/2)^(pi/2) (1+cos 2theta)/2 dif theta$
     
     $= 2[theta + (sin 2theta)/2]_(-pi/2)^(pi/2) = 2[(pi/2 + 0) - (-pi/2 + 0)] = 2pi$
   ]
11. 微分方程  $(d y)/(d x) = (1 + y^2) e^x$  的通解为
   
   #answer-process[
     答案：$y = tan(e^x + C)$
     
     这是可分离变量的微分方程。
     
     分离变量：$(dif y)/(1+y^2) = e^x dif x$
     
     两边积分：$integral (dif y)/(1+y^2) = integral e^x dif x$
     
     $arctan y = e^x + C$
     
     $y = tan(e^x + C)$
   ]
#subsection[三、计算题(12～15题每小题7分，16～17题每小题8分，共44分)]
12. 求  $lim_(x -> +infinity) (integral_0^x arctan^2 t dif t)/(sqrt(x^2 + 1))$ .  
   
   #answer-process[
     这是 $infinity/infinity$ 型极限，使用洛必达法则。
     
     $lim_(x->+infinity) (integral_0^x arctan^2 t dif t)/(sqrt(x^2+1))$
     
     分子求导：$(dif)/(dif x) integral_0^x arctan^2 t dif t = arctan^2 x$
     
     分母求导：$(dif)/(dif x) sqrt(x^2+1) = x/(sqrt(x^2+1))$
     
     $= lim_(x->+infinity) (arctan^2 x)/(x/(sqrt(x^2+1))) = lim_(x->+infinity) (arctan^2 x dot sqrt(x^2+1))/x$
     
     $= lim_(x->+infinity) arctan^2 x dot (sqrt(x^2+1))/x = lim_(x->+infinity) arctan^2 x dot sqrt(1+1/(x^2))$
     
     $= (pi/2)^2 dot 1 = pi^2/4$
   ]
13. 已知函数  $y(x)$  由方程  $x^3 + y^3 - 3x + 3y - 2 = 0$  所确定，求  $y''(1)$ .  
   
   #answer-process[
     首先求 $y(1)$：将 $x=1$ 代入方程
     
     $1 + y^3 - 3 + 3y - 2 = 0$，即 $y^3 + 3y - 4 = 0$
     
     $(y-1)(y^2+y+4) = 0$，得 $y = 1$
     
     对方程两边求导：
     
     $3x^2 + 3y^2 y' - 3 + 3y' = 0$
     
     $y' = (3 - 3x^2)/(3y^2 + 3) = (1-x^2)/(y^2+1)$
     
     在 $(1,1)$ 处：$y'(1) = (1-1)/(1+1) = 0$
     
     再对 $y'$ 求导：
     
     $y'' = (((-2x)(y^2+1) - (1-x^2)(2y y'))/((y^2+1)^2))$
     
     在 $(1,1)$ 处，$y'(1) = 0$：
     
     $y''(1) = ((-2 dot 1)(1+1) - 0)/(2^2) = (-4)/4 = -1$
   ]
14. 求  $integral arctan sqrt(x) dif x$ .
   
   #answer-process[
     使用分部积分法，令 $u = arctan sqrt(x)$，$dif v = dif x$
     
     $dif u = 1/(1+x) dot 1/(2sqrt(x)) dif x = (dif x)/(2sqrt(x)(1+x))$，$v = x$
     
     $integral arctan sqrt(x) dif x = x arctan sqrt(x) - integral x/(2sqrt(x)(1+x)) dif x$
     
     $= x arctan sqrt(x) - 1/2 integral (sqrt(x))/(1+x) dif x$
     
     令 $sqrt(x) = t$，则 $x = t^2$，$dif x = 2t dif t$
     
     $integral (sqrt(x))/(1+x) dif x = integral t/(1+t^2) dot 2t dif t = 2 integral t^2/(1+t^2) dif t$
     
     $= 2 integral (1 - 1/(1+t^2)) dif t = 2(t - arctan t) + C$
     
     $= 2(sqrt(x) - arctan sqrt(x)) + C$
     
     因此：$integral arctan sqrt(x) dif x = x arctan sqrt(x) - sqrt(x) + arctan sqrt(x) + C$
     
     $= (x+1) arctan sqrt(x) - sqrt(x) + C$
   ]
15. 求  $integral_(0)^(pi) x^2 |cos x| dif x$ .
   
   #answer-process[
     在 $[0, pi]$ 上，$cos x$ 在 $[0, pi/2]$ 上为正，在 $[pi/2, pi]$ 上为负
     
     $integral_0^pi x^2 |cos x| dif x = integral_0^(pi/2) x^2 cos x dif x + integral_(pi/2)^pi x^2 (-cos x) dif x$
     
     对于 $integral x^2 cos x dif x$，使用两次分部积分：
     
     $integral x^2 cos x dif x = x^2 sin x - integral 2x sin x dif x$
     
     $= x^2 sin x - 2(-x cos x + integral cos x dif x)$
     
     $= x^2 sin x + 2x cos x - 2 sin x + C$
     
     $integral_0^(pi/2) x^2 cos x dif x = [(pi/2)^2 dot 1 + 0 - 2] - [0] = pi^2/4 - 2$
     
     $integral_(pi/2)^pi x^2 (-cos x) dif x = -[x^2 sin x + 2x cos x - 2sin x]_(pi/2)^pi$
     
     $= -[(0 - 2pi - 0) - (pi^2/4 + 0 - 2)] = -(-2pi - pi^2/4 + 2)$
     
     $= 2pi + pi^2/4 - 2$
     
     总和：$(pi^2/4 - 2) + (2pi + pi^2/4 - 2) = pi^2/2 + 2pi - 4$
   ]
16. 设函数  $f(x) = cases( 1 + x^2 &"if" x < 0, e^(-x) &"if" x >= 0 )$  求  $integral_(1)^(3) f(x - 2) dif x$.
   
   #answer-process[
     令 $u = x - 2$，则 $x = u + 2$，$dif x = dif u$
     
     当 $x = 1$ 时，$u = -1$；当 $x = 3$ 时，$u = 1$
     
     $integral_1^3 f(x-2) dif x = integral_(-1)^1 f(u) dif u$
     
     $= integral_(-1)^0 (1+u^2) dif u + integral_0^1 e^(-u) dif u$
     
     $= [u + u^3/3]_(-1)^0 + [-e^(-u)]_0^1$
     
     $= [0 - (-1 - 1/3)] + [-e^(-1) - (-1)]$
     
     $= 1 + 1/3 + 1 - e^(-1)$
     
     $= 7/3 - 1/e$
   ]
17. 求曲线  $y = x^4 (12 ln x - 7)$  的凹凸区间及拐点
   
   #answer-process[
     定义域：$x > 0$
     
     $y' = 4x^3(12 ln x - 7) + x^4 dot 12/x = 4x^3(12 ln x - 7) + 12x^3$
     
     $= 4x^3(12 ln x - 7 + 3) = 4x^3(12 ln x - 4) = 48x^3(ln x - 1/3)$
     
     $y'' = 48[3x^2(ln x - 1/3) + x^3 dot 1/x]$
     
     $= 48[3x^2 ln x - x^2 + x^2]$
     
     $= 48 dot 3x^2 ln x = 144x^2 ln x$
     
     令 $y'' = 0$：$144x^2 ln x = 0$，得 $x = 1$ ($x > 0$)
     
     当 $0 < x < 1$ 时，$ln x < 0$，$y'' < 0$，曲线凹
     
     当 $x > 1$ 时，$ln x > 0$，$y'' > 0$，曲线凸
     
     拐点：$x = 1$，$y = 1 dot (0 - 7) = -7$
     
     凹区间：$(0, 1)$；凸区间：$(1, +infinity)$；拐点：$(1, -7)$
   ]
#subsection[四、应用题(每小题9分，共18分)]
18. 要做一个容积为  $2 pi$  的密闭圆柱形罐头筒，问：半径和高分别为多少时能使所用材料最省？
   
   #answer-process[
     设圆柱半径为 $r$，高为 $h$，则体积 $V = pi r^2 h = 2pi$
     
     从而 $h = 2/(r^2)$
     
     表面积 $S = 2pi r^2 + 2pi r h = 2pi r^2 + 2pi r dot 2/(r^2) = 2pi r^2 + 4pi/r$
     
     求 $S$ 的最小值：
     
     $S' = 4pi r - 4pi/(r^2) = (4pi(r^3 - 1))/(r^2)$
     
     令 $S' = 0$：$r^3 = 1$，得 $r = 1$
     
     $S'' = 4pi + 8pi/(r^3)$，在 $r = 1$ 处 $S'' = 12pi > 0$，为极小值
     
     当 $r = 1$ 时，$h = 2/(1^2) = 2$
     
     答：半径为 $1$，高为 $2$ 时材料最省
   ]
19. 求由抛物线  $y^2 = 2x$  与直线  $y = x - 4$  所围成图形的面积，并求此图形绕  $y$  轴旋转一周所得旋转体的体积.
   
   #answer-process[
     求交点：$y^2 = 2x$ 与 $y = x - 4$
     
     从第二个方程得 $x = y + 4$，代入第一个：$y^2 = 2(y+4) = 2y + 8$
     
     $y^2 - 2y - 8 = 0$，$(y-4)(y+2) = 0$，得 $y = 4$ 或 $y = -2$
     
     对应 $x = 8$ 或 $x = 2$，交点为 $(2, -2)$ 和 $(8, 4)$
     
     面积（用 $y$ 作积分变量）：
     
     $S = integral_(-2)^4 [(y+4) - y^2/2] dif y = integral_(-2)^4 (y + 4 - y^2/2) dif y$
     
     $= [y^2/2 + 4y - y^3/6]_(-2)^4$
     
     $= [8 + 16 - 64/6] - [2 - 8 + 8/6]$
     
     $= [24 - 32/3] - [-6 + 4/3] = 24 - 32/3 + 6 - 4/3 = 30 - 36/3 = 30 - 12 = 18$
     
     体积（绕 $y$ 轴旋转）：
     
     $V = pi integral_(-2)^4 [(y+4)^2 - (y^2/2)^2] dif y$
     
     $= pi integral_(-2)^4 [y^2 + 8y + 16 - y^4/4] dif y$
     
     $= pi [y^3/3 + 4y^2 + 16y - y^5/20]_(-2)^4$
     
     $= pi [(64/3 + 64 + 64 - 1024/20) - (-8/3 + 16 - 32 + 32/20)]$
     
     $= pi [(64/3 + 128 - 256/5) - (-8/3 - 16 + 8/5)]$
     
     $= pi [64/3 + 128 - 256/5 + 8/3 + 16 - 8/5]$
     
     $= pi [72/3 + 144 - 264/5] = pi [24 + 144 - 264/5] = pi [168 - 264/5] = pi dot 576/5 = (576pi)/5$
   ]
#subsection[五、证明题(5分)]
20. 若函数  $f(x)$  在区间  $(a, b)$  内具有二阶导数且  $f(x_1) = f(x_2) = f(x_3)$ ，其中  $a < x_1 < x_2 < x_3 < b$ ，证明：在  $(a, b)$  内至少存在一点  $xi$ ，使得  $f''(xi) = 0$ .
   
   #answer-process[
     证明：
     
     由罗尔定理，因为 $f(x_1) = f(x_2)$，且 $f(x)$ 在 $[x_1, x_2]$ 上连续，在 $(x_1, x_2)$ 内可导，
     
     所以存在 $xi_1 in (x_1, x_2)$ 使得 $f'(xi_1) = 0$
     
     同理，因为 $f(x_2) = f(x_3)$，且 $f(x)$ 在 $[x_2, x_3]$ 上连续，在 $(x_2, x_3)$ 内可导，
     
     所以存在 $xi_2 in (x_2, x_3)$ 使得 $f'(xi_2) = 0$
     
     现在 $f'(xi_1) = f'(xi_2) = 0$，其中 $xi_1 < xi_2$
     
     再次应用罗尔定理，$f'(x)$ 在 $[xi_1, xi_2]$ 上连续，在 $(xi_1, xi_2)$ 内可导（即 $f''(x)$ 存在），
     
     所以存在 $xi in (xi_1, xi_2) subset (a, b)$ 使得 $f''(xi) = 0$
     
     证毕。
   ]
#pagebreak()