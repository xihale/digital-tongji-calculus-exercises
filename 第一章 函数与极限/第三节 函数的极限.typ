#import [../template.typ]: section, subsection, choices, answer-space, blank

#section[第三节 函数的极限]
#subsection[一、选择题]
1.  $lim_(x->1)|x - 1|/(x - 1) = ()$
   #v(0.5em)
   #choices(
   [-1],
   [0],
   [1],
   [不存在]
   )
2.  $lim_(x->x_0^+)f(x)$  和  $lim_(x->x_0^-)f(x)$  存在且相等是  $lim_(x->x_0)f(x)$  存在的( ).
   #v(0.5em)
   #choices(
   [充分条件],
   [必要条件],
   [充要条件],
   [无关条件]
   )
3. 设函数  $f(x) = (2x + |x|)/(4x - 3|x|)$ ，则  $lim_(x->0)f(x) = (quad)$ .
   #v(0.5em)
   #choices(
   $1/2$,
   $1/3$,
   $1/4$,
   [不存在]
   )
#subsection[二、填空题]
4. 当 $0 < |x - 3| < delta$ 时，取 $delta$ = #blank，
$
  |(x^2 - 9)/(x - 3) -6| < epsilon [成立].
$
#subsection[三、计算题]
5. 对于图 1-1 所示的函数  $f(x)$ ，求下列极限，若极限不存在，说明理由：
   (1)  $lim_(x->2)f(x)$

![](https://cdn-mineru.openxlab.org.cn/result/2025-10-06/d40b3283-10ab-4cb6-8bea-4bab4dd11b16/8ab1678044911e415282f0178cf74dd2afa2a022a66bdd91b5915b2026231ef2.jpg)  
图1-1
   #answer-space
   (2)  $lim_(x->-1)f(x)$
   #answer-space
   (3)  $lim_(x->0)f(x)$
   #answer-space
6. 求函数  $f(x) = x/x$ ,  $phi(x) = abs(x)/x$  当  $x -> 0$  时的左、右极限，并说明它们当  $x -> 0$  时的极限是否存在.
   #answer-space
#subsection[四、证明题]
7. 根据函数极限的定义，证明：
   (1)  $lim_(x->2)(5x + 2) = 12$;
   #answer-space
   (2)  $lim_(x->infinity)(1 + x^3)/(2x^3) = 1/2$ .
   #answer-space
