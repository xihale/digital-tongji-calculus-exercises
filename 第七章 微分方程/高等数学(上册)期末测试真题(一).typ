#import "../template.typ": *

#section[高等数学(上册)期末测试真题(一)]
#subsection[一、选择题(每小题3分，共30分)]
1. 若  $lim_(x->infinity)(1 + k/(2x))^x = e^3$  ，则  $k = (#answer-choice[B])$
   #choices(
   [$2/3$],
   [$6$],
   [$3/2$],
   [不存在]
   )
2. 当  $x->0$  时,  $sin x + x^2 cos(1/x)$  是  $(1 + cos x) ln (1 + x)$  的(#answer-choice[C]).
   #choices(
   [高阶无穷小],
   [等价无穷小],
   [同阶无穷小, 但不是等价无穷小],
   [低阶无穷小]
   )
3. 设函数  $f(x) = cases( (2/pi) arctan(1/x) &"if" x < 0, (1 + x)^x &"if" x >= 0 )$  则  $x = 0$  是  $f(x)$  的(#answer-choice[A]).
   #choices(
   [跳跃间断点],
   [可去间断点],
   [连续点],
   [第二类间断点]
   )
4.方程  $x^4 -4x = 1$  在区间(0,1)内(#answer-choice[A]).
   #choices(
   [无实根],
   [有唯一实根],
   [有两个实根],
   [有三个实根]
   )
5. 设  $f'(x) = g(x)$ ，则  $(d)/(d x) f(sin^2 x) = (#answer-choice[D])$ .
   #choices(
   [$2g(x) sin x$],
   [$g(x) sin 2x$],
   [$g(sin^2 x)$],
   [$g(sin^2 x) sin 2x$]
   )
6. 设函数  $f(x)$  具有二阶连续导数，且  $f'(0) = 0, lim_(x -> 0) (f''(x))/(cos x) = 1$ ，则(#answer-choice[A]).
   #choices(
   [$f(0)$  是  $f(x)$  的极大值],
   [$f(0)$  是  $f(x)$  的极小值],
   [$(0, f(0))$  是曲线  $y = f(x)$  的拐点],
   [$f(0)$  不是  $f(x)$  的极值，  $(0,f(0))$  也不是曲线  $y = f(x)$  的拐点]
   )
7. 设函数  $f(x)$  具有二阶连续导数，其部分图形如图1所示，试确定下列定积分的符号：
   (1)  $integral_(-3)^(2) f(x) dif x$ ;
   (2)  $integral_(-3)^(2) f'(x) dif x$ ;
   #figure(
     image([images/1.jpg], width: 80%),
     caption: [图1],
     alt: "函数 f(x) 在区间 [-3, 2] 上的图形，用于分析定积分的符号"
   )
   (3)  $integral_(-3)^(2) f''(x) dif x$ ;
   (4)  $integral_(-3)^(2) f'''(x) dif x$ .
8. 设线性无关的函数  $y_1, y_2, y_3$  都是二阶非齐次微分方程  $y'' + p(x) y' + q(x) y = f(x)$  的特解，  $C_1, C_2$  是任意常数，则该非齐次微分方程的通解是(#answer-choice[D]).
   #choices(
   [$C_1 y_1 + C_2 y_2 + y_3$],
   [$C_1 y_1 + C_2 y_2 - (C_1 + C_2) y_3$],
   [$C_1 y_1 + C_2 y_2 - (1 - C_1 - C_2) y_3$],
   [$C_1 y_1 + C_2 y_2 + (1 - C_1 - C_2) y_3$]
   )
9. 由曲线  $y = ln x$  与直线  $y = ln a, y = ln b (b > a > 0)$  及  $y$  轴所围成图形的面积为(#answer-choice[C]).
   #choices(
   [$1/b - 1/a$],
   [$1/a - 1/b$],
   [$b - a$],
   [$a - b$]
   )
10.下列反常积分收敛的是(#answer-choice[B])
    #choices(
    [$integral_(-infinity)^(+infinity) cos x dif x$],
    [$integral_(0)^(+infinity) e^(-2x) dif x$],
    [$integral_(-1)^(1) (dif x)/(x^2)$],
    [$integral_(1)^(3) (dif x)/(ln x)$]
    )
#subsection[二、填空题(每小题3分，共18分)]
11. 已知  $lim_(x -> 1) f(x)$  存在，且函数  $f(x) = x^2 + 2x lim_(x -> 1) f(x)$ ，则  $lim_(x -> 1) f(x) =$ #blank[$-1$]
   #answer-process[
   设 $L = lim_(x -> 1) f(x)$，则由题意：$f(x) = x^2 + 2x L$
   
   对 $f(x)$ 两边取 $x -> 1$ 的极限：
   $L = lim_(x -> 1) (x^2 + 2x L) = 1 + 2 L$
   
   解方程：$L = 1 + 2L$，得 $-L = 1$，因此 $L = -1$
   ]
   
12. 曲线 $cases( x = ln (1 + t^2), y = t - arctan t - 2 )$ 在点 $t = 2$ 处的切线方程为 $y = #blank[$x - ln 5 - arctan 2$ 或 $x - y - ln 5 - arctan 2 = 0$]$  
   #answer-process[
   在 $t = 2$ 时：
   - $x = ln(1 + 4) = ln 5$
   - $y = 2 - arctan 2 - 2 = -arctan 2$
   - 点为 $(ln 5, -arctan 2)$
   
   求导：
   - $d x/d t = (2t)/(1 + t^2)$，在 $t = 2$：$d x/d t = 4/5$
   - $d y/d t = 1 - 1/(1 + t^2)$，在 $t = 2$：$d y/d t = 1 - 1/5 = 4/5$
   
   斜率：$d y/d x = (4"/"5)/(4"/"5) = 1$
   
   切线方程：$y - (-arctan 2) = 1(x - ln 5)$，即 $y = x - ln 5 - arctan 2$
   ]
   
13. 设函数  $f(x) = k tan 2x$  的一个原函数为  $-ln cos 2x$ ，则  $k =$  #blank[$2$].  
   #answer-process[
   若 $F(x) = -ln cos 2x$ 是 $f(x) = k tan 2x$ 的原函数，则 $F'(x) = f(x)$。
   
   $F'(x) = -(1/(cos 2x)) dot (-sin 2x) dot 2 = (2 sin 2x)/(cos 2x) = 2 tan 2x$
   
   因此 $k tan 2x = 2 tan 2x$，所以 $k = 2$。
   ]
   
14.  $integral_(-infinity)^(+infinity)(dif x)/(x^2 + 2x + 2) = #blank[$pi$]$  
   #answer-process[
   $integral_(-infinity)^(+infinity) (d x)/(x^2 + 2x + 2) = integral_(-infinity)^(+infinity) (d x)/((x + 1)^2 + 1)$
   
   令 $u = x + 1$，则 $d u = d x$：
   $= integral_(-infinity)^(+infinity) (d u)/(u^2 + 1) = [arctan u]_(-infinity)^(+infinity) = pi/2 - (-pi/2) = pi$
   ]
   
15.  $integral_(-1)^(1)(2x^2 + x sin^2 x)/(1 + sqrt(1 - x^2)) dif x = #blank[$4 - pi$]$  
   #answer-process[
   拆分：$integral_(-1)^(1) (x sin^2 x)/(1 + sqrt(1 - x^2)) d x + integral_(-1)^(1) (2x^2)/(1 + sqrt(1 - x^2)) d x$
   
   第一项是奇函数，积分为 $0$。
   
   第二项，分子分母同乘 $(1 - sqrt(1 - x^2))$：
   $(2x^2)/(1 + sqrt(1 - x^2)) dot (1 - sqrt(1 - x^2))/(1 - sqrt(1 - x^2)) = (2x^2(1 - sqrt(1 - x^2)))/(1 - (1 - x^2)) = (2x^2(1 - sqrt(1 - x^2)))/x^2 = 2(1 - sqrt(1 - x^2))$
   
   所以：$integral_(-1)^(1) 2(1 - sqrt(1 - x^2)) d x = 2[x]_(-1)^(1) - 2 integral_(-1)^(1) sqrt(1 - x^2) d x$
   $= 2 dot 2 - 2 dot pi/2 = 4 - pi$
   ]
   
16. 曲线  $y = x^4 (12 ln x - 7)$  的拐点为 #blank[$(1, -7)$]
   #answer-process[
   $y = x^4(12 ln x - 7)$
   
   求一阶导数：
   $y' = 4x^3(12 ln x - 7) + x^4 dot 12/x = 4x^3(12 ln x - 7) + 12x^3 = 4x^3(12 ln x - 4)$
   
   求二阶导数：
   $y'' = 12x^2(12 ln x - 4) + 4x^3 dot 12/x = 12x^2(12 ln x - 4) + 48x^2 = 12x^2(12 ln x) = 144x^2 ln x$
   
   令 $y'' = 0$：$144x^2 ln x = 0$
   
   因为 $x > 0$（对数定义域），所以 $ln x = 0$，即 $x = 1$。
   
   检验 $y''$ 符号变化：
   - $x < 1$ 时，$ln x < 0$，$y'' < 0$（凹）
   - $x > 1$ 时，$ln x > 0$，$y'' > 0$（凸）
   
   所以 $x = 1$ 是拐点。在 $x = 1$ 时，$y = 1^4(12 dot 0 - 7) = -7$。
   
   拐点为 $(1, -7)$。
   ]
#subsection[三、计算题(每小题7分，共35分)]
17. 已知连续函数  $f(x) = integral_(0)^(3x) f(t/3) dif t + e^(2x)$ ，求  $f(x)$ .  
    
18. 已知  $f(pi) = 1$ ，函数  $f(x)$  二阶连续可微，且  $integral_(0)^(pi)[f(x) + f''(x)] sin x dif x = 3$ ，求  $f(0)$ .  
    
19. 求微分方程  $y'' - y' = 4x e^x$  满足初值条件  $y|_(x=0) = 0, y'|_(x=0) = 1$  的特解.  
    
20. 设函数  $y = y(x)$  由方程  $x^4 - x y - y e^x = 1$  所确定，求  $(d^2 y)/(d x^2 |_(x=0))$ .  
    
21. 求  $integral_(sqrt(2/x))^(1) (sqrt(1 - x^2))/(x^2) dif x$.
    
#subsection[四、应用题(10分)]
22. 如图 2 所示, 由抛物线  $y = 2x^2$  与直线  $x = a, x = 2$  及  $y = 0$  所围成的平面图形为  $D_1$ , 由抛物线  $y = 2x^2$  与直线  $x = a$  及  $y = 0$  所围成的平面图形为  $D_2$ , 其中  $0 < a < 2$ .
#figure(
  image([images/2.jpg], width: 80%),
  caption: [图2],
  alt: "抛物线 y = 2x² 与直线 x = a、x = 2 及 x 轴围成的平面图形 D1 和 D2 的示意图"
)
(1) 试求  $D_1$  绕  $x$  轴旋转一周所得旋转体的体积  $V_1$ ;  
(2) 试求  $D_2$  绕  $y$  轴旋转一周所得旋转体的体积  $V_2$ ;  
(3) 问: 当  $a$  为何值时,  $V = V_1 + V_2$  取得最大值? 并求出该最大值.
#subsection[五、选答题(7分)(考生可从下面2个题中任选1个作答，多做不多得分)]
23. 设函数  $f(x)$  在区间  $[a, b]$  上连续，在  $(a, b)$  内可导，又  $f'(x) > 0$ ，且极限  $lim_(x -> a^+) (f(2x - a))/(x - a)$  存在，证明：在  $(a, b)$  内存在一点  $xi$ ，使得
$$
(frac(b^2 - a^2, integral_a^b f(x) d x) = frac(2*xi, f(xi)))
$$
24. 证明: 当  $x > 0$  时,  $x/(1 + x) < ln (1 + x) < x$ .
#pagebreak()
#align(center)[