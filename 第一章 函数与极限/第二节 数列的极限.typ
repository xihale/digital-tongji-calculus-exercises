#import [../template.typ]: section, subsection, choices, answer-space

#section[第二节 数列的极限]
#subsection[一、选择题]
1.下列数列  ${x_n}$  中，收敛的是( )
			 #v(0.5em)
			 #choices(
				$x_n = (-1)^n (n - 1)/n$,
				$x_n = n/(n + 1)$,
				$x_n = sin (n pi/2)$,
				$x_n = n - (-1)^n$
			 )
			 #answer-space
2.下列数列  ${x_n}$  中，发散的是( ).
			 #v(0.5em)
			 #choices(
				$x_n = 1/(2^n)$,
				$x_n = 5 + (-1)^n/n^2$,
				$x_n = (2n - 1)/(3n + 2)$,
				$x_n = (1 + (-1)^n)/2$
			 )
			 #answer-space
#subsection[二、填空题]
3. 设数列  ${u_n}$  的一般项是  $u_n = (3n + 1)/(2n + 1)$ ，当  $n$  #box(width: 4em, stroke: (bottom: 0.5pt)) 时，不等式  $|u_n - 3/2| < 0.01$  成立。
   #answer-space
#subsection[三、计算题]
4. 下列数列是否收敛？对于收敛数列，通过观察  ${x_n}$  的变化趋势，写出它们的极限：
   (1)  ${n(-1)^n}$
   #answer-space
   (2)  ${[(-1)^n + 1] (n + 1)/n}$.
   #answer-space
#subsection[四、证明题]
5. 根据数列极限的定义，证明：
   (1)  $lim_(n -> infinity) 1/n^2 = 0$;
   #answer-space
   (2)  $lim_(n -> infinity) (3n + 1)/(2n + 1) = 3/2$;
   #answer-space
   (3)  $lim_(n -> infinity) (n^2 - n - 3)/(3n^2 + 2n - 4) = 1/3$;
   #answer-space
   (4) 若  $lim_(n -> infinity) x_n = a$  ，则  $lim_(n -> infinity) |x_n| = |a|$ . 反过来成立吗？成立给出证明，不成立举出反例.
   #answer-space
