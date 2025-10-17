#import "../template.typ": *

#section[第二节 洛必达法则]
#subsection[一、选择题]
1.下列式子中运用洛必达法则正确的是(#h(2em))
   #choices(
   [$lim_(n->infinity)root(n,n) = e^(lim_(n->infinity)(ln n)/n) = e^(lim_(n->infinity)(1/n)) = 1$],
   [$lim_(x->0)(x + sin x)/(x - sin x) = lim_(x->0)(1 + cos x)/(1 - cos x) = infinity$],
   [$lim_(x->0)(x^2 sin(1/x))/(sin x) = lim_(x->0)(2x sin(1/x) - cos(1/x))/(cos x)$  不存在],
   [$lim_(x->0)x/e^x = lim_(x->0)1/e^x = 1$]
   )
2.下列式子中，极限存在但不能用洛必达法则计算的是(#h(2em))
   #choices(
   [$lim_(x->0)x^2(sin x)$],
   [$lim_(x->0^+)(1/x)^(tan x)$],
   [$lim_(x->infinity)(x + sin x)/x$],
   [$lim_(x-> +infinity)x^n/e^x$]
   )
#subsection[二、填空题]
3.  $lim_(x->pi/2)(cos 5x)/(cos 3x) = #blank()$

4.  $lim_(x-> +infinity)ln(1 + 1/x)/(arctan x) = #blank()$
#subsection[三、计算题]
5. 用洛必达法则计算下列极限：\
   (1)  $lim_(x->0)(e^x - e^(-x))(sin x)$;
   #answer-space
   (2)  $lim_(x->0^+)ln(tan 7x)/ln(tan 2x)$;
   #answer-space
   (3)  $lim_(x->0)ln(1 + x^2)/(sec x - cos x)$;
   #answer-space
   (4)  $lim_(x->0)x^2 e^(1/x^2)$;
   #answer-space
   (5)  $lim_(x->1)(2/(x^2 - 1) - 1/(x - 1))$ ;
   #answer-space
   (6)  $lim_(x->0^+)x^(sin x)$
   #answer-space
   (7)  $lim_(x->1^-)(1 - x) tan (pi x/2)$;
   #answer-space
   (8)  $lim_(x->0^+)(1/x)^(tan x)$.
   #answer-space
