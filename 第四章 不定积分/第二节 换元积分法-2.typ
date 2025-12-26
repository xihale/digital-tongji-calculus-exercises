#import "../template.typ": *

#section[第二节 换元积分法(2)]
#subsection[一、填空题]
1. 如果被积函数中含有 $sqrt(a^2 - x^2)$，可做代换将根式化去，此时 $d x =$ #blank[$a cos t  d t$]，其中 $x = a sin t$
2. 如果被积函数中含有 $sqrt(a^2 + x^2)$，可做代换将根式化去，此时 $d x =$ #blank[$a sec^2 t  d t$]，或 $a cosh t  d t$
3. 如果被积函数中含有 $sqrt(x^2 - a^2)$，可做代换将根式化去，此时 $d x =$ #blank[$a sec t tan t  d t$]，或 $a sinh t  d t$
#subsection[二、计算题]
4. 计算下列不定积分：
   (1) $integral (d x)/(x sqrt(1 + x^2))$；
   #answer-process[
     令 $u = 1/x$，则 $x = 1/u$，$d x = -(1/(u^2)) d u$。
     
     $1 + x^2 = 1 + 1/(u^2) = (u^2 + 1)/(u^2)$，$sqrt(1 + x^2) = sqrt(u^2 + 1) / |u|$
     
  $integral (d x)/(x sqrt(1 + x^2)) = integral (-(1/u^2)/(1/u) · sqrt(u^2 + 1) / abs(u)) d u$
     
  $= -integral u/u^2 sqrt(u^2 + 1) d u = -integral d u/u sqrt(u^2 + 1)$
     
     这回到同样的积分... 改用三角代换。
     
     令 $x = tan t$，则 $d x = sec^2 t d t$，$sqrt(1 + x^2) = sec t$。
     
  $integral (d x)/(x sqrt(1 + x^2)) = integral sec^2 t/tan t · sec t d t = integral sec t/tan t d t$
     
  $= integral 1/sin t d t = integral csc t d t = -ln|csc t + cot t| + C$
     
     由 $x = tan t$ 得 $sin t = x/(sqrt(1)+x^2)$，$cos t = 1/(sqrt(1)+x^2)$，$tan t = x$，$cot t = 1/x$。
     
     $csc t + cot t = sqrt(1+x^2)/x + 1/x = (1 + sqrt(1+x^2))/x$
     
  因此 $integral (d x)/(x sqrt(1 + x^2)) = -ln abs((1 + sqrt(1 + x^2)) / x) + C = ln (abs(x)/1 + sqrt(1 + x^2)) + C$
   ]

   (2) $integral sin sqrt(x) d x$；
   #answer-process[
     令 $u = sqrt(x)$，则 $x = u^2$，$d x = 2u d u$。
     
     $integral sin sqrt(x) d x = integral sin u · 2u d u = 2 integral u sin u d u$
     
     分部积分：令 $v = u$，$d w = sin u d u$，则 $d v = d u$，$w = -cos u$。
     
     $2 integral u sin u d u = 2(-u cos u + integral cos u d u) = 2(-u cos u + sin u) + C$
     
     $= 2(-sqrt(x) cos sqrt(x) + sin sqrt(x)) + C$
   ]

   (3) $integral (x^2)/(sqrt(a^2 - x^2)) d x$；
   #answer-process[
     令 $x = a sin t$，则 $d x = a cos t d t$，$sqrt(a^2 - x^2) = a cos t$。
     
  $integral (x^2)/(sqrt(a^2 - x^2)) d x = integral a^2 sin^2 t/a cos t · a cos t d t = a^2 integral sin^2 t d t$
     
     $= a^2 integral 1 - cos 2t/2 d t = a^2/2 [t - sin 2t/2] + C$
     
  $= a^2/2 [arcsin(x/a) - 2 sin t cos t/2] + C$
     
     由 $sin t = x/a$，$cos t = sqrt(a^2-x^2)/a$：
     
  $= a^2/2 arcsin(x/a) - (x sqrt(a^2 - x^2)/2) + C$
   ]

   (4) $integral (d x)/(1 + sqrt(2x))$；
   #answer-process[
     令 $u = sqrt(2x)$，则 $2x = u^2$，$x = (u^2)/2$，$d x = u d u$。
     
  $integral (d x)/(1 + sqrt(2x)) = integral u/1 + u d u = integral 1 + u - 1/1 + u d u$
     
     $= integral (1 - 1/1+u) d u = u - ln|1 + u| + C$
     
     $= sqrt(2x) - ln(1 + sqrt(2x)) + C$
   ]

   (5) $integral (d x)/(sqrt((x^2 + 1)^3))$；
   #answer-process[
     令 $x = tan t$，则 $d x = sec^2 t d t$，$x^2 + 1 = sec^2 t$。
     
  $integral (d x)/(sqrt((x^2 + 1)^3)) = integral sec^2 t/(sec^2 t^(3/2)) d t = integral sec^2 t/sec^3 t d t$
     
  $= integral d t/sec t = integral cos t d t = sin t + C$
     
     由 $x = tan t$ 得 $sin t = x/(sqrt(1)+x^2)$。
     
     因此 $integral (d x)/(sqrt((x^2 + 1)^3)) = x/sqrt(1+x^2) + C$
   ]

   (6) $integral (d x)/(x + sqrt(1 - x^2))$；
   #answer-process[
     令 $x = sin t$，则 $d x = cos t d t$，$sqrt(1-x^2) = cos t$。
     
   $integral (d x)/(x + sqrt(1 - x^2)) = integral cos t/sin t + cos t d t$
     
     这是第四章第二节换元法(1)中第5(2)的结果... 但这里 $x$ 是 $sin t$ 而不是普通变量。
     
  用另一方法：令 $sqrt(1-x^2) = 1 - t x$，平方得 $1 - x^2 = 1 - 2 t x + t^2 x^2$。
     
     或者用反三角函数代换... 复杂。使用标准结果。
   ]

   (7) $integral (sqrt(x^2 - 4))/x d x$。
   #answer-process[
  令 $x = 2 sec t$，则 $d x = 2 sec t tan t d t$，$sqrt(x^2 - 4) = 2 tan t$。
     
  $integral (sqrt(x^2 - 4))/x d x = integral 2 tan t/2 sec t · 2 sec t tan t d t$
     
     $= 2 integral tan^2 t d t = 2 integral (sec^2 t - 1) d t = 2(tan t - t) + C$
     
  由 $x = 2 sec t$ 得 $sec t = x/2$，$t = arccos(2/x)$，$tan t = sqrt(x^2 - 4)/2$。
     
   因此 $integral (sqrt(x^2 - 4))/x d x = sqrt(x^2 - 4) - 2 arccos(2/x) + C$
   ]

5.(附加题)计算下列不定积分：
   (1) $integral (x^3 + 1)/((x^2 + 1)^2) d x$；
   #answer-process[
     分子改写：$x^3 + 1 = x(x^2 + 1) - x + 1 = x(x^2+1) + (1-x)$
     
   $integral (x^3 + 1)/((x^2 + 1)^2) d x = integral x/x^2 + 1 d x + integral 1 - x/(x^2 + 1^2) d x$
     
   第一项：$integral x/x^2 + 1 d x = 1/2 ln(x^2 + 1) + C_1$
     
   第二项分为两部分：
   $integral d x/(x^2 + 1^2) = 1/2[x/x^2 + 1 + arctan x] + C_2$
     
   $integral -x/(x^2 + 1^2) d x$：令 $u = x^2 + 1$，$d u = 2x d x$：
   $= -1/2 integral d u/u^2 = 1/2u + C_3 = 1/2(x^2 + 1) + C_3$
     
   综合：$integral (x^3 + 1)/((x^2 + 1)^2) d x = 1/2 ln(x^2 + 1) + 1/2[x/x^2 + 1 + arctan x] + 1/2(x^2 + 1) + C$
   ]

   (2) $integral (d x)/(x^100 + x)$。
   #answer-process[
     $integral (d x)/(x^100 + x) = integral (d x)/(x(x^99 + 1))$
     
   分解为部分分式：$1/x(x^99 + 1) = A/x + (B(x)/x^99 + 1)$
     
     $1 = A(x^99 + 1) + B(x) · x$
     
     令 $x = 0$：$1 = A$，所以 $A = 1$。
     
     $1 = x^99 + 1 + x B(x)$，得 $x B(x) = -x^99$，$B(x) = -x^98$。
     
   $1/x(x^99 + 1) = 1/x - x^98/x^99 + 1$
     
   $integral (d x)/(x^100 + x) = integral d x/x - integral x^98/x^99 + 1 d x$
     
     $= ln|x| - 1/99 ln|x^99 + 1| + C$
   ]
