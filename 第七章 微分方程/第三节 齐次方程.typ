#import "../template.typ": section, subsection, choices, answer-space

#section[第三节 齐次方程]
#subsection[一、选择题]
1. 微分方程  $d y/d x = y/x + tan(y/x)$  的通解为( ).
   #v(0.5em)
   #choices(
   [$sin(y/x) = C x$],
   [$sin(y/x) = 1/(C x)$],
   [$sin(x/y) = C x$],
   [$sin(x/y) = 1/(C x)$]
   )
#subsection[二、计算题]
2. 求下列齐次方程的通解：
   (1)  $x d y/d x = y ln(y/x)$ ;
   #answer-space
   (2)  $(x^{3} + y^{3}) diff x - 3x y^{2} diff y = 0$.
   #answer-space
3. 求下列齐次方程满足所给初值条件的特解：
   (1)  $(y^{2} - 3x^{2}) diff y + 2x y diff x = 0, y|_(x = 0) = 1$;
   #answer-space
   (2)  $(x^{2} + 2x y - y^{2}) diff x + (y^{2} + 2x y - x^{2}) diff y = 0, y|_(x = 1) = 1$.
   #answer-space
