#import "../template.typ": *

#section[第三节 齐次方程]
#subsection[一、选择题]
1. 微分方程  $(d y)/(d x) = y/x + tan(y/x)$  的通解为(#answer-choice[A]).
   #choices(
   [$sin(y/x) = C x$],
   [$sin(y/x) = 1/(C x)$],
   [$sin(x/y) = C x$],
   [$sin(x/y) = 1/(C x)$]
   )
   #answer-process[
     令 $v = y/x$，则 $y = v x$，有 $(dif y)/(dif x) = v + x (dif v)/(dif x)$。
     代回方程得 $v + x (dif v)/(dif x) = v + tan v$，从而 $tan v times (dif x)/x = (dif v)$。
     积分得 $ln|sin v| = ln|x| + C$，即 $sin(y/x) = C_1 x$。
   ]
#subsection[二、计算题]
2. 求下列齐次方程的通解：

    (1)  $x (d y)/(d x) = y ln(y/x)$ ;
    #answer-process[
       设 $v = y/x$，则 $(dif y)/(dif x) = v + x (dif v)/(dif x)$，方程化为
       $v + x (dif v)/(dif x) = v ln v$，进而 $(dif v)/(v(ln v - 1)) = (dif x)/x$。
       令 $u = ln v - 1$，则 $(dif u)/u = (dif x)/x$，积分得 $ln|ln(y/x) - 1| = ln|x| + C$。
       吸收常数，可写为 $ln(y/x) = C_1 x + 1$。
    ]
    (2)  $(x^3 + y^3) dif x - 3x y^2 dif y = 0$。
    #answer-process[
       令 $v = y/x$，得到 $(dif y)/(dif x) = v + x (dif v)/(dif x)$，原式化成
       $v + x (dif v)/(dif x) = (1 + v^3)/(3 v^2)$。
       分离变量得 $3 (v^2)/(1 - 2 v^3) (dif v) = (dif x)/x$，积分得到 $ln|1 - 2 v^3| = -2 ln|x| + C$。
       整理为 $1 - 2 (y/x)^3 = (C_1)/(x^2)$，即 $x^3 - 2 y^3 = C_2 x$。
    ]
3. 求下列齐次方程满足所给初值条件的特解：

    (1)  $(y^2 - 3x^2) dif y + 2x y dif x = 0, y|_(x = 0) = 1$;
    #answer-process[
       取 $v = y/x$ 得 $(dif y)/(dif x) = v + x (dif v)/(dif x)$，方程化为
       $v + x (dif v)/(dif x) = (-2 v)/(v^2 - 3)$。
       分离变量可得 $(3/v) - 1/(v - 1) - 1/(v + 1)$ 的积分等于 $- ln|x| + C$，从而
       $(v^3)/(v^2 - 1) = (C_1)/x$。
       化回原变量有 $y^3 = C_1 (y^2 - x^2)$，代入初值 $(0,1)$ 得 $C_1 = 1$，故 $y^3 = y^2 - x^2$。
    ]
    (2)  $(x^2 + 2x y - y^2) dif x + (y^2 + 2x y - x^2) dif y = 0, y|_(x = 1) = 1$。
    #answer-process[
       同样令 $v = y/x$，得 $v + x (dif v)/(dif x) = -(1 + 2v - v^2)/(v^2 + 2v - 1)$。
       化简得到 $(dif v)[-1/(1+v) + (2v)/(1+v^2)] = -(dif x)/x$。
       积分后有 $ln[(1+v^2)/(1+v)] = -ln|x| + C$。
       因此 $(1 + (y/x)^2) x = C_1 (1 + y/x)$，即 $x^2 + y^2 = C_1 (x + y)$。
       由初值 $(1,1)$ 得 $C_1 = 1$，故 $x^2 + y^2 = x + y$。
    ]
