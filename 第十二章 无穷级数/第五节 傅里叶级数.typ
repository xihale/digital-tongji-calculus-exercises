// 数据层：只放内容。公式一律行内。
// 由下册自动转换（git 完整题量 + HEAD 解析优先）；请抽查选项切分。
#import "../lib/math.typ": *
#import "../lib/render.typ": book-section

#let section-title = [第五节 傅里叶级数]

#let problems = (
  (
    kind: "choice",
    kind-title: [一、选择题],
    stem: [
      设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[-pi, pi)$ 上的表达式为 $f(x) = cases(0 & -pi <= x < 0, x & 0 <= x < pi)$。已知 $f(x)$ 的傅里叶级数，则该级数的和函数为
    ],
    options: (
      [$S(x) = f(x)$，$x in (-pi, pi)$],
      [$S(x) = f(x)$，$x in (-oo, +oo)$],
      [$S(x) = cases(f(x) & x != k pi, (pi)/(2) & x = k pi)$（$k$ 为整数）],
      [$S(x) = cases(f(x) & x != (2k-1) pi, (pi)/(2) & x = (2k-1) pi)$（$k$ 为整数）],
    ),
    answer: [D],
    solution: [
      狄利克雷收敛定理指出，在间断点 $x$ 处，和函数 $S(x) =(f(x^-) + f(x^+))/(2)$。函数在 $x = pi$ (即 $x = (2k-1)pi$) 处间断，$f(pi^-) = pi, f(pi^+) = f(-pi^+) = 0$，故 $S(pi) =(pi)/(2)$。在连续点处 $S(x) = f(x)$。处选 D。
    ],
  ),
  (
    kind: "choice",
    stem: [
      设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[-pi, pi)$ 上的表达式为 $f(x) = cases(x & -pi <= x < 0, 0 & 0 <= x < pi)$。$f(x)$ 的傅里叶级数的和函数为 $S(x)$，则 $S(pi) =$
    ],
    options: (
      [$-(pi)/(2)$],
      [$-pi$],
      [0],
      [其他值],
    ),
    answer: [A],
    solution: [
      在 $x = pi$ 处，$f(pi^-) = 0, f(pi^+) = f(-pi^+) = -pi$。故 $S(pi) =(0 + (-pi))/(2)= -(pi)/(2)$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      函数 $f(x) = |sin x|$ ($-pi <= x <= pi$) 的傅里叶系数 $a_n, b_n$ 满足
    ],
    options: (
      [$a_n = 0$ ($n = 0, 1, 2, dots$)，$b_n != 0$ ($n = 1, 2, dots$)],
      [$b_n = 0$ ($n = 1, 2, dots$)，$a_(2k+1) = 0$ ($k = 0, 1, 2, dots$)],
      [$a_n != 0$ ($n = 0, 1, 2, dots$)，$b_n = 0$ ($n = 1, 2, dots$)],
      [以上结论都不对],
    ),
    answer: [B],
    solution: [
      因为 $f(x) = |sin x|$ 是偶函数，故 $b_n = 0$。此外，$f(x)$ 是以 $pi$ 为周期的函数，其傅里叶级数只含 $cos 2k x$ 项，故奇数项系数 $a_(2k+1) = 0$。
    ],
  ),
  (
    kind: "choice",
    stem: [
      利用函数 $f(x) = x^2$ 在区间 $[-pi, pi]$ 上的傅里叶级数展开式可得 $(sum_(n=1)^oo 1)/(n^2)=$    ],
    options: (
      [$(pi^2)/(3)$],
      [$(pi^2)/(6)$],
      [$(pi^2)/(9)$],
      [$(pi^2)/(12)$],
    ),
    answer: [B],
    solution: [
      $f(x) = x^2$ 的傅里叶级数为 $(pi^2)/(3)+(4 sum_(n=1)^oo (-1)^n)/(n^2 cos n x)$。令 $x = pi$，得 $pi^2 =(pi^2)/(3)+(4 sum_(n=1)^oo 1)/(n^2)$，整理得 $(sum_(n=1)^oo 1)/(n^2)=(pi^2)/(6)$。
    ],
  ),
  (
    kind: "blank",
    kind-title: [二、填空题],
    stem: [
      设 $f(x)$ 是周期为 $2 pi$ 的周期函数，在 $[-pi, pi)$ 上的表达式为 $f(x) = cases(1 & -pi <= x < 0, x & 0 <= x < pi)$。则 $f(x)$ 的傅里叶级数在点 $x = pi$ 处收敛于
    ],
    answer: [$(pi+1)/(2)$],
    solution: [
      傅里叶级数在跳跃点收敛到左右极限平均值。 \
      在 $x=pi$ 处： \
      左极限 $f(pi-0)=pi$； \
      右极限由周期延拓得 $f(pi+0)=f(-pi+0)=1$。 \
      故 \
      $S(pi)=(pi+1)/(2)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $f(x) = pi x + x^2$ ($-pi <= x <= pi$)，且其傅里叶级数为 $(a_0)/(2)+ sum_(n=1)^oo (a_n cos n x + b_n sin n x)$，则 $b_3 =$
    ],
    answer: [$(2)/(3)$],
    solution: [
      按公式 \
      $b_n=(1)/(pi int_(-pi)^pi f(x) sin n x dif x)$。 \
      其中 $x^2 sin n x$ 为奇函数，积分为 0，故只需算 \
      $(1)/(pi int_(-pi)^pi pi x sin n x dif x)$。 \
      代入 $n=3$ 计算后得 \
      $b_3=(2)/(3)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      已知函数 $f(x)$ 满足狄利克雷收敛条件，其傅里叶级数的和函数为 $S(x)$，且 $f(x)$ 在点 $x = 0$ 处左连续，$f(0^-) = -1$，$S(0) = 3$，则 $lim_(x arrow 0^+) f(x) =$
    ],
    answer: [$7$],
    solution: [
      狄利克雷定理给出 \
      $S(0)=(1)/(2(f(0^-)+f(0^+)))$。 \
      已知 $S(0)=3, f(0^-)=-1$，故 \
      $3=(1)/(2(-1+f(0^+)))$， \
      解得 \
      $f(0^+)=7$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设函数 $f(x) = 1 -(x)/(pi)$ ($0 <= x <= pi$) 的余弦级数的和函数为 $S(x)$，则 $S(-3) =$
    ],
    answer: [$1 -(3)/(pi)$],
    solution: [
      余弦级数对应偶延拓并作 $2pi$ 周期延拓。 \
      因而 \
      $S(-3)=S(3)$。 \
      又 $3 in (0,pi)$，在连续点处级数和等于函数值， \
      所以 \
      $S(-3)=f(3)=1-(3)/(pi)$。
    ],
  ),
  (
    kind: "blank",
    stem: [
      设 $f(x)$ 是周期为 $2 pi$ 的周期函数，其傅里叶系数为 $a_n, b_n$。若函数 $g(x) = f(-x)$，则 $g(x)$ 的傅里叶系数 $a_n^*, b_n^*$ 与 $a_n, b_n$ 的关系为
    ],
    answer: [$a_n^* = a_n$，$b_n^* = -b_n$],
    solution: [
      由定义 \
      $a_n^*=(1)/(pi int_(-pi)^pi g(x) cos n x dif x)$ \
      $=(1)/(pi int_(-pi)^pi f(-x) cos n x dif x)$。 \
      令 $t=-x$ 后利用 $cos$ 偶性，可得 $a_n^*=a_n$。 \
      同理 \
      $b_n^*=(1)/(pi int_(-pi)^pi f(-x) sin n x dif x)$， \
      令 $t=-x$ 后利用 $sin$ 奇性，得 \
      $b_n^*=-b_n$。
    ],
  ),
  (
    kind: "compute",
    kind-title: [三、计算题],
    stem: [
      将函数 $f(x) = pi -(x)/(2)$ ($0 <= x <= pi$) 展开成正弦级数
    ],
    solution: [
      正弦级数系数 \
      $b_n=(2)/(pi int_0^pi (pi-(x)/(2)) sin n x dif x)$。 \
      分部积分并化简可得 \
      $b_n=(2)/(n)+((-1)^n)/(n)$。 \
      因而 \
      $f(x)=sum_(n=1)^oo ((2)/(n)+((-1)^n)/(n)) sin n x, x in (0,pi)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设 $f(x)$ 是周期为 $2 pi$ 的周期函数，它在区间 $[-pi, pi)$ 上的表达式为 $f(x) = 3x^2 + 1$，试将 $f(x)$ 展开成傅里叶级数
    ],
    solution: [
      函数为偶函数，故 $b_n=0$。 \
      计算 \
      $a_0=(1)/(pi int_(-pi)^pi (3x^2+1) dif x)=2(pi^2+1)$， \
      故常数项为 $(a_0)/(2)=pi^2+1$。 \
      再由 \
      $a_n=(1)/(pi int_(-pi)^pi (3x^2+1) cos n x dif x)$ \
      得 \
      $a_n=(12(-1)^n)/(n^2)$。 \
      因而 \
      $f(x)=pi^2+1+(12 sum_(n=1)^oo (-1)^n)/(n^2 cos n x)$。
    ],
  ),
  (
    kind: "compute",
    stem: [
      设 $f(x) = x ee^x$，$x in [-pi, pi]$。求该函数的傅里叶级数在 $x = pi$ 处收敛于何值？
    ],
    solution: [
      在端点 $x=pi$ 处，傅里叶级数收敛到左右极限平均值： \
      $S(pi)=(1)/(2(f(pi-0)+f(-pi+0)))$。 \
      其中 \
      $f(pi)=pi ee^pi, f(-pi)=-pi ee^(-pi)$。 \
      故 \
      $S(pi)=(1)/(2[pi ee^pi-pi ee^(-pi)])=pi sinh pi$。
    ],
  ),
)

#book-section(section-title, problems)
