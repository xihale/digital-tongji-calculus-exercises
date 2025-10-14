#import "../template.typ": section, subsection, choices, answer-space, blank

#section[总习题六]
#subsection[一、选择题]
1. 由曲线  $y = e^x$  和直线  $x = 0$  及  $y = 2$  所围成的曲边梯形的面积为( ).
   #v(0.5em)
   #choices(
   [$integral_(1)^(2) ln y , dif y$],
   [$integral_(0)^(e^2) e^x , dif y$],
   [$integral_(1)^(ln 2) ln y , dif y$],
   [$integral_(1)^(2)(2 - e^x) dif x$]
   )
2.如图6-2所示，阴影部分面积为( )
   #v(0.5em)
   #choices(
   [$integral_(a)^(b)[f(x) - g(x)] dif x$],
   [$integral_(a)^(c)[g(x) - f(x)] dif x + integral_(c)^(b)[f(x) - g(x)] diff x$],
   [$integral_(a)^(b)[f(x) + g(x)] dif x$],
   [$integral_(a)^(c)[f(x) - g(x)] dif x + integral_(c)^(b)[g(x) - f(x)] diff x$]
   )
#figure(
  image("images/6-2.jpg", width: 80%),
  caption: [图6-2]
)
#subsection[二、填空题]
3.由抛物线  $y = x^2 + 2x$  ，直线  $x = 1$  和  $x$  轴所围成图形的面积为  
4. 曲线  $y = sqrt(x) - 1/3 sqrt(x^3)$  相应于区间[1,3]上的一段弧的长度为  
5. 由曲线  $y = sin x$  和它在  $x = pi/2$  处的切线以及直线  $x = pi$  所围成图形绕  $x$  轴旋转一周所得旋转体的体积为  
6. 水下有一个宽  $2  m$ , 高  $3  m$  的矩形闸门铅直地浸没在水中, 水面超过门顶  $2  m$ , 则闸门上所受的水压力为  
7. 连续函数  $y = f(x, m)$  对于任意常数  $m$  恒大于零，则由曲线  $y = f(x, m)$  及直线  $x = a$ ， $x = b$ ， $y = 0$  所围成图形的面积为 #blank().
#subsection[三、计算题]
8. 求  $C$  的值  $(0 < C <= 1)$ , 使得由两曲线  $y = x^2$  与  $y = C x^3$  所围成图形的面积为  $2/3$ .
   #answer-space
9. 求  $a$  的值，使得由曲线  $y = a(1 - x^2)(a > 0)$  与它在点  $(-1,0)$  和  $(1,0)$  处的法线所围成图形的面积最小.
   #answer-space
10. 有一立体以由抛物线  $y^2 = 2x$  与直线  $x = 2$  所围成的图形为底，而垂直于抛物线轴的截面都是等边三角形，求其体积。
    #answer-space
#pagebreak()
#align(center)[
]