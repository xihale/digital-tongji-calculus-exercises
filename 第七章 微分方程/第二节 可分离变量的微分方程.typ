#import "../template.typ": *

#section[第二节 可分离变量的微分方程]
#subsection[一、选择题]
1. 关于微分方程  $(d^2 y)/(d x^2 + 2(d y)/(d x) + y = e^x)$  的下列结论：① 该方程是齐次微分方程，② 该方程是线性微分方程，③ 该方程是常系数微分方程，④ 该方程为二阶微分方程，其中正确的是#answer-choice[D].
   #choices(
   [①②③],
   [①②④],
   [①③④],
   [②③④]
   )
   #answer-process[
     方程写作 $y'' + 2 y' + y = e^x$，最高阶导数为二阶，故 (④) 正确；
     右端不为零，因而不是齐次方程，(①) 错误；
     由于它满足线性形式且系数常数，(②)(③) 均正确。
   ]
2.下列方程中#answer-choice[C]是一阶微分方程
   #choices(
   [$(y - x y')^2 = x^2 y''$],
   [$(y'' )^2 + 5(y')^4 - y^5 + x^7 = 0$],
   [$(x^2 - y^2) dif x + (x^2 + y^2) dif y = 0$],
   [$x y'' + y' + y = 0$]
   )
    #answer-process[
       选项 C 的方程 $(x^2 - y^2) dif x + (x^2 + y^2) dif y = 0$ 仅含一阶微分；
       其余三个都出现了二阶导数 $y''$，因此只有 C 为一阶微分方程。
    ]
#subsection[二、填空题]
3.  $x y'' + 2x^2(y')^2 + x^3y = x^4 + 1$  是 #blank[2] 阶微分方程

4. 微分方程  $y' = 2y/x$  的通解为 #blank[$y = C x^2$]
#subsection[三、计算题]
5. 确定函数  $y = (C_1 + C_2 x) e^(2x)$  中所含的参数，使得该函数满足初值条件  $cases(y&|_(x=0) = 0 ,y'&|_(x=0) = 1)$
   #answer-process[
     由 $y(0) = C_1 = 0$ 得 $C_1 = 0$。
     计算 $y' = (C_2 + 2(C_1 + C_2 x)) e^{2x}$，代入 $x = 0$ 得 $y'(0) = C_2 = 1$。
     故所求特解为 $y = x e^{2x}$。
   ]
6. 写出在点  $(x, y)$  处的切线的斜率等于该点横坐标平方的曲线所满足的微分方程
    #answer-process[
       由题设得切线斜率 $y' = x^2$，故微分方程为 $(dif y)/(dif x) = x^2$。
    ]
7. 求下列微分方程的通解：

    (1)  $x y' - y ln y = 0$ ;
    #answer-process[
   设 $y > 0$，分离变量得 $(dif y)/(y ln y) = (dif x)/x$。
   积分可得 $ln|ln y| = ln|x| + C$，吸收绝对值常数，整理为 $ln y = C_1 x$。
   因而通解为 $y = e^{C_1 x}$。
    ]
    (2)  $(e^(x + y) - e^x) dif x + (e^(x + y) + e^y) dif y = 0$.
    #answer-process[
       记 $M = e^{x+y} - e^x,$ $N = e^{x+y} + e^y$，有 $M_y = N_x = e^{x+y}$，故方程恰当。
       取势函数 $F(x,y) = e^{x+y} - e^x + e^y = C$ 即为通解。
    ]
8. 求下列微分方程满足所给初值条件的特解：

    (1)  $cos x sin y dif y = cos y sin x dif x, y|_(x = 0) = pi/4$
    #answer-process[
   化为 $(dif y)/(dif x) = (sin x cos y)/(cos x sin y) = tan x / tan y$，分离变量得 $tan y times dif y = tan x times dif x$。
   积分得 $-ln|cos y| = -ln|cos x| + C$，即 $cos y = C_1 cos x$。
   代入 $y(0) = pi/4$，得 $C_1 = sqrt(2)/2$，故特解为 $cos y = (sqrt(2)/2) cos x$。
    ]
    (2)  $y' sin x = y ln y, y|_(x = pi/2) = e$
    #answer-process[
   分离变量得 $(dif y)/(y ln y) = (dif x)/sin x$。
   积分得到 $ln|ln y| = ln|tan (x/2)| + C$，可化为 $ln y = C_1 tan (x/2)$。
   利用 $y(pi/2) = e$（此时 $tan(pi/4) = 1$）求得 $C_1 = 1$，故 $y = exp[tan(x/2)]$。
    ]
9. 一曲线通过点  $(2,3)$，且它在两坐标轴间的任一切线均被切点所平分，求该曲线方程
   #answer-process[
     设切线斜率为 $m = y'(x)$，切线在坐标轴上的截距为 $(x - y/m, 0)$ 与 $(0, y - m x)$。
     中点坐标条件给出 $x = (x - y/m)/2$ 与 $y = (y - m x)/2$，解得 $m = -y/x$。
   方程 $(dif y)/(dif x) = -y/x$ 分离变量得 $ln y = -ln x + C$，即 $x y = C_1$。
   代入点 $(2,3)$ 得 $C_1 = 6$，故曲线方程为 $x y = 6$。
   ]
#subsection[四、应用题]
10. 一个半球体形状的雪堆, 其体积融化率与半球体面积  $A$  成正比, 比例系数  $k > 0$ . 假设在融化过程中雪堆始终保持半球体形状, 已知半径为  $r_0$  的雪堆在开始融化的  $3  h$  内, 融化了其体积的  $7/8$ , 问: 雪堆全部融化需要多少时间?
      #answer-process[
         对半球体有 $V = (2/3) pi r^3$、$A = 2 pi r^2$，因此 $(dif V)/(dif t) = 2 pi r^2 times (dif r)/(dif t)$。
         由题设 $(dif V)/(dif t) = -k A = -2k pi r^2$，可得 $(dif r)/(dif t) = -k$，从而 $r(t) = r_0 - k t$。
         3 小时后体积剩 $1/8$，半径缩为 $r_0/2$，故 $r_0 - 3k = r_0/2$，解得 $k = r_0/6$。
         当 $r(t) = 0$ 时雪堆融尽，此时 $t = r_0/k = 6$ h。
      ]
#subsection[五、证明题]
11. 验证:  $x^2 - x y + y^2 = C$  所确定的函数为微分方程  $(x - 2y) y' = 2x - y$  的解.
#answer-process[
   对 $x^2 - x y + y^2 = C$ 两边求导得 $2x - y - x y' + 2y y' = 0$。
   移项得 $(x - 2y) y' = 2x - y$，与题给微分方程一致，故所给函数族均为其解。
]
