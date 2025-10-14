#import [../template.typ]: section, subsection, choices, answer-space

#section[第二节 微积分基本公式]
#subsection[一、计算题]
1.计算下列导数：
   (1)  $d/d x integral_0^(x^2) sqrt(1 + t^2) dif t$;
   #answer-space
   (2)  $d/d x integral_(x^2)^(x^3) (dif t)/(sqrt(1 + t^4))$;
   #answer-space
   (3)  $d/d x integral_(sin x)^(cos x) cos (pi t^2) dif t$.
   #answer-space
2. 求下列极限：
   (1)  $lim_(x->0) (integral_0^x cos t^2 dif t)/x$;
   #answer-space
   (2)  $lim_(x->0) ((integral_0^x e^(t^2) dif t)^2)/(integral_0^x t e^(2t^2) diff t)$;
   #answer-space
   (3)  $lim_(x-> +infinity) (integral_0^x arctan^2 t dif t)/(sqrt(x^2 + 1))$.
   #answer-space
3. 计算下列定积分：
   (1)  $integral_0^(sqrt(3) a) (dif x)/(a^2 + x^2)$;
   #answer-space
   (2)  $integral_(-1)^0 (3x^4 + 3x^2 + 1)/(x^2 + 1) d x$;
   #answer-space
   (3)  $integral_0^(2pi) |sin x| dif x$;
   #answer-space
   (4)  $integral_0^(2) f(x) , dif x$ ，其中  $f(x) = cases(x + 1 [if] x <= 1, 1/2 x^2 [if] x > 1)$
   #answer-space
   (5)  $integral_0^2 max {x^2,x^3} dif x$.
   #answer-space
4. 设函数  $y = f(x)$  具有三阶连续导数，其部分图形如图5-1所示，试确定下列定积分的符号：
   (1)  $integral_(-3)^2 f(x) , dif x$ ;
   #answer-space
   (2)  $integral_(-3)^2 f'(x) , dif x$ ;
   #figure(
     image([images/5-1.jpg], width: 80%),
     caption: [图5-1]
   )
   (3)  $integral_(-3)^2 f''(x) , dif x$ ;
   #answer-space
   (4)  $integral_(-3)^2 f'''(x) , dif x$ .
   #answer-space
