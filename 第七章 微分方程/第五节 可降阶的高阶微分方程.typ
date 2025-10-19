#import "../template.typ": *

#section[第五节 可降阶的高阶微分方程]
#subsection[一、填空题]
1. 微分方程  $y'' = sin 2x - cos x$  的通解是  #blank[$y = -(1/4) sin 2x + cos x + C_1 x + C_2$]
2. 微分方程  $y'' = e^(2x)$  的通解是 #blank[$y = (1/4) e^(2x) + C_1 x + C_2$]
#subsection[二、计算题]
3. 求下列微分方程的通解：

    (1)  $y'' = 1/(1 + x^2)$
    #answer-process[
       积分得 $y' = arctan x + C_1$，再次积分得到
       $y = x arctan x - (1/2) ln(1 + x^2) + C_1 x + C_2$。
    ]
    (2)  $y y'' + 2(y')^2 = 0$。
    #answer-process[
       记 $p = y'$，由 $y$ 未显含 $x$，有 $y'' = p (dif p)/(dif y)$。
       方程化为 $y p (dif p)/(dif y) + 2 p^2 = 0$，即 $(dif p)/(dif y) + (2/y) p = 0$。
      积分得 $p = C_1 y^(-2)$，于是 $(dif y)/(dif x) = C_1 y^(-2)$，积分得 $(1/3) y^3 = C_1 x + C_2$。
    ]
4. 求下列微分方程满足所给初值条件的特解：

    (1)  $y'' = e^(2y), y|_(x = 0) = y'|_(x = 0) = 0$;
    #answer-process[
       设 $p = y'$，得 $p (dif p)/(dif y) = e^(2y)$，积分有 $(1/2) p^2 = (1/2) e^(2y) + C$。
       利用初值 $p(0) = 0$，$y(0) = 0$ 得 $C = -1/2$，故 $(y')^2 = e^(2y) - 1$。
      取 $e^(-y) = cos x$，则 $(dif y)/(sqrt(e^(2y)) - 1) = dif x$，从而解得 $y = -ln cos x$。
    ]
    (2)  $y'' + (y')^2 = 1, y|_(x=0) = 0, y'|_(x=0) = 0$。
    #answer-process[
      令 $p = y'$，方程化为 $(dif p)/(dif x) = 1 - p^2$，解得 $p = tanh x$。
       积分得到 $y = ln cosh x + C$，利用 $y(0) = 0$ 得 $C = 0$，故 $y = ln cosh x$。
    ]
#subsection[三、应用题]
5. 设有一质量为  $m$  的物体在空中由静止开始下落。如果空气阻力  $R = c v$ ( $c$  为常数， $v$  为物体运动的速度)，试求物体下落的距离  $s$  与时间  $t$  的函数关系。
   #answer-process[
     建立运动方程 $m (dif v)/(dif t) = m g - c v$，解得 $v(t) = (m g/c) (1 - e^(-(c/m) t))$。
   位移 $s(t) = ∫_0^t v(τ) dif τ = (m g/c) t + (m^2 g/(c^2)) (e^(-(c/m) t) - 1)$。
   ]
