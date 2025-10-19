#import "../template.typ": *

#section[第四节 一阶线性微分方程]
#subsection[一、判断题]
1.  $y' = sin y$  是一阶线性微分方程 #answer-choice[×]
    #answer-process[
       一阶线性方程需具备形式 $y' + P(x) y = Q(x)$，此处右侧依赖于 $y$ 的非线性函数 $sin y$，故命题错误。
    ]
2.  $y' = x^3 y^3 + x y$  不是一阶线性微分方程 #answer-choice[√]
    #answer-process[
       方程含有 $y^3$ 项，无法写成 $y' + P(x) y = Q(x)$ 的线性结构，判断正确。
    ]
#subsection[二、选择题]
3. 以下#answer-choice[D]是一阶线性微分方程
   #choices(
   [$y' = sec y$],
   [$y y' = 1$],
   [$x^2 y'' + 3x y' + y = 0$],
   [$(d y)/(d x) = -(x^2 + x^3 + y)/(1 + x)$]
   )
   #answer-process[
     D 选项可化为 $y' + (1/(1+x)) y = -(x^2 + x^3)/(1+x)$，符合线性形式；其余选项不是一阶线性方程。
   ]
#subsection[三、计算题]
4. 求下列微分方程的通解：

    (1)  $x y' + y = x^2 + 3x + 2$ ;
    #answer-process[
      化为 $y' + (1/x) y = x + 3 + 2/x$，积分因子为 $x$。
      于是 $(x y)' = x^2 + 3x + 2$，积分得 $x y = (1/3) x^3 + (3/2) x^2 + 2x + C$。
       因而 $y = (1/3) x^2 + (3/2) x + 2 + C/x$。
    ]
    (2)  $(y^2 - 6x) (d y)/(d x) + 2y = 0$。
    #answer-process[
      视作 $x$ 关于 $y$ 的方程：$(dif x)/(dif y) - (3/y) x = -y/2$。
      积分因子为 $y^(-3)$，得到 $(dif(x y^(-3)))/(dif y) = -(1/2) y^(-2)$。
       积分得 $x y^(-3) = (1/2) y^(-1) + C$，故 $x = (1/2) y^2 + C y^3$。
    ]
5. 求下列微分方程满足所给初值条件的特解：

    (1)  $(d y)/(d x) + y/x = sin x/x, y|_(x = pi) = 1$
    #answer-process[
      积分因子为 $x$，可化为 $(x y)' = sin x$。
       积分得 $x y = -cos x + C$，代入 $x = pi$，$y = 1$ 求得 $C = pi - 1$。
       故特解为 $y = (-cos x + pi - 1)/x$。
    ]
    (2)  $(d y)/(d x) + 3y = 8, y|_(x=0) = 2$
    #answer-process[
      积分因子为 $e^(3x)$，得到 $(e^(3x) y)' = 8 e^(3x)$。
       积分并代入初值得 $y = 8/3 - (2/3) e^(-3x)$。
    ]
6. 求一曲线方程，该曲线通过坐标原点，且它在点  $(x, y)$  处的切线的斜率等于  $2x + y$
   #answer-process[
     方程为 $y' - y = 2x$，积分因子为 $e^(-x)$。
   由 $(e^(-x) y)' = 2x e^(-x)$，积分得 $e^(-x) y = -2x e^(-x) - 2 e^(-x) + C$。
     代入过原点条件得 $C = 2$，故 $y = -2x - 2 + 2 e^(x)$。
   ]
7. 用适当的变量代换将下列微分方程化为可分离变量的微分方程，然后求其通解：

    (1)  $x y' + y = y(ln x + ln y)$ ;
    #answer-process[
       假设 $y > 0$，令 $u = ln y$，则 $x (dif u)/(dif x) = ln x + u - 1$。
      写成 $(u/x)' = (ln x - 1)/(x^2)$，积分得 $u/x = -(ln x)/x + C$。
       故 $ln y = C x - ln x$，即 $y = e^(C x)/x$。
    ]
    (2)  $y(x y + 1) dif x + x(1 + x y + x^2 y^2) dif y = 0$。
    #answer-process[
      令 $u = x y$，则 $dif y = (x (dif u) - u (dif x))/(x^2)$。
       代入可得 $(1 + u + u^2) x (dif u) = u^3 (dif x)$。
       分离变量并积分得到 $ln|u| - 1/u - 1/(2u^2) = ln|x| + C$。
       还原即 $ln|y| - 1/(x y) - 1/(2 x^2 y^2) = C$。
    ]
