#import [../template.typ]: section, subsection, choices, answer-space

#section[第二节 可分离变量的微分方程]
#subsection[一、选择题]
1. 关于微分方程  $d^2 y/d x^2 + 2 d y/d x + y = e^x$  的下列结论：① 该方程是齐次微分方程，② 该方程是线性微分方程，③ 该方程是常系数微分方程，④ 该方程为二阶微分方程，其中正确的是().
   #v(0.5em)
   #choices(
   [①②③],
   [①②④],
   [①③④],
   [②③④]
   )
2.下列方程中( )是一阶微分方程
   #v(0.5em)
   #choices(
   (y - xy')^2 = x^2 yy''$",
   (y'' )^2 + 5(y')^4 - y^5 + x^7 = 0$",
   (x^{2} - y^{2}) dif x + (x^{2} + y^{2}) diff y = 0$",
   x y'' + y' + y = 0$"
   )
#subsection[二、填空题]
3.  $x y'' + 2x^{2}(y')^{2} + x^{3}y = x^{4} + 1$  是 阶微分方程
4. 微分方程  $y' = 2y/x$  的通解为
#subsection[三、计算题]
5. 确定函数  $y = (C_1 + C_2 x) e^(2x)$  中所含的参数，使得该函数满足初值条件  $y|_(x=0) = 0$ ， $y'|_(x=0) = 1$ .
   #answer-space
6. 写出在点  $(x, y)$  处的切线的斜率等于该点横坐标平方的曲线所满足的微分方程
   #answer-space
7. 求下列微分方程的通解：
   (1)  $x y' - y ln y = 0$ ;
   #answer-space
   (2)  $(e^(x + y) - e^x) dif x + (e^(x + y) + e^y) diff y = 0$.
   #answer-space
8. 求下列微分方程满足所给初值条件的特解：
   (1)  $cos x sin y dif y = cos y sin x diff x, y|_(x = 0) = pi/4$;  (2)  $y' sin x = y ln y, y|_(x = pi/2) = e$.
   #answer-space
9. 一曲线通过点(2,3)，且它在两坐标轴间的任一切线均被切点所平分，求该曲线方程
   #answer-space
#subsection[四、应用题]
10. 一个半球体形状的雪堆, 其体积融化率与半球体面积  $A$  成正比, 比例系数  $k > 0$ . 假设在融化过程中雪堆始终保持半球体形状, 已知半径为  $r_0$  的雪堆在开始融化的  $3  h$  内, 融化了其体积的  $7/8$ , 问: 雪堆全部融化需要多少时间?
    #answer-space
#subsection[五、证明题]
11. 验证:  $x^{2} - xy + y^{2} = C$  所确定的函数为微分方程  $(x - 2y) y' = 2x - y$  的解.
