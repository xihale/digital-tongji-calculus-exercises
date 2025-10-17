#import "../template.typ": *

#section[第三节 泰勒公式]
#subsection[一、选择题]
1. 已知  $cos x = 1 - x^2/2 + R_3(x)$ , 则  $R_3(x) = (#h(2em))$ .
   #choices(
   [$(sin xi)/3! x^3$],
   [$-(sin xi)/3! x^3$],
   [$(cos xi)/4! x^4$],
   [$-(cos xi)/4! x^4$]
   )
2. 函数  $f(x)$  的泰勒展开式  $f(x) = sum_(k=0)^n a_k (x - x_0)^k + R_n(x)$  中拉格朗日余项  $R_n(x) =$  (#h(2em)).
   #choices(
   [$f^(n + 1)(theta x)/((n + 1)!) (x - x_0)^(n + 1)$  $(0 <   theta <  1)$],
   [$f^(n + 1)(x_0 + theta x)/((n + 1)!) (x - x_0)^(n + 1)$ $(0 <   theta <  1)$],
   [$f^(n + 1)(x_0 + theta(x - x_0))/((n + 1)!) (x - x_0)^n$  $(0 <   theta <  1)$],
   [$f^(n + 1)(x_0 + theta(x - x_0))/((n + 1)!) (x - x_0)^(n + 1)$ $(0 <   theta <  1)$]
   )
#subsection[二、计算题]
3. 求函数  $f(x) = sqrt(x)$  按  $(x - 4)$  的幂展开的带有拉格朗日余项的三阶泰勒公式
   #answer-space
4. 求函数  $f(x) = 1/x$  按  $(x + 1)$  的幂展开的带有拉格朗日余项的  $n$  阶泰勒公式
   #answer-space
5. 求函数  $f(x) = x e^x$  带有佩亚诺余项的  $n$  阶麦克劳林公式
   #answer-space
6. 应用三阶泰勒公式求  $root(3,30)$  的近似值，并估计误差
   #answer-space
7.(附加题)利用泰勒公式求下列极限：\
   (1)  $lim_(x->0)(cos x - e^(-x^2/2))/(x^2[x + ln(1 - x)])$;
   #answer-space
   (2)  $lim_(x->infinity)[x - x^2 ln (1 + 1/x)]$.
   #answer-space
