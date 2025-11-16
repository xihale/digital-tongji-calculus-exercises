#import "template.typ": *

= Test of blank function

== Case 1: Inline blank
This is a test #blank[] inline with some text before and after.

== Case 2: Blank on its own line in numbered list

1. First item

   (1)  #blank[可以把整体划分为数量众多、彼此同类且足够小的微元；]

   (2)  #blank[每个微元的量能够写成某个自变量的函数与对应微小量（如 $d x$、$d y$ 等）的乘积；]

   (3)  #blank[当分割无限细时，所有微元量的求和极限存在，并等于所求的总量。]

== Case 3: Inline blank in equation context

3. 将合适的函数填入下列空格中：\
  (1)  #blank[$1/a$] dif x = dif(a x + b) ;
   
  (2)  dif #blank[$x^2/2$] = x dif x;
   
  (3)  dif #blank[$ln |x|$] = (1/x) dif x;

