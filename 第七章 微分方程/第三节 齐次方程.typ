#import [../template.typ]: section, subsection, choices, answer-space

#section[第三节 齐次方程]
#subsection[一、选择题]
1. 微分方程  $dy/dx = y/x + tan(y/x)$  的通解为( ).
   #v(0.5em)
   #choices(
   [$sin(y/x) = Cx$],
   [$sin(y/x) = 1/(Cx)$],
   [$sin(x/y) = Cx$],
   [$sin(x/y) = 1/(Cx)$]
   )
#subsection[二、计算题]
2. 求下列齐次方程的通解：
   (1)  $x dy/dx = y ln(y/x)$ ;
   #answer-space
   (2)  $(x^{3} + y^{3}) diff x - 3xy^{2} diff y = 0$.
   #answer-space
3. 求下列齐次方程满足所给初值条件的特解：
   (1)  $(y^{2} - 3x^{2}) diff y + 2xy diff x = 0, y|_(x = 0) = 1$;
   #answer-space
   (2)  $(x^{2} + 2xy - y^{2}) diff x + (y^{2} + 2xy - x^{2}) diff y = 0, y|_(x = 1) = 1$.
   #answer-space
