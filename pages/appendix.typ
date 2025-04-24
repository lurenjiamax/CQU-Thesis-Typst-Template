// 重庆大学论文附录页

#import "../variable/cqu-variable.typ": *
#import "@preview/mitex:0.2.5": *
#import "@preview/cuti:0.3.0": show-cn-fakebold

#let appendix-content = {
  
  show: show-cn-fakebold

  // 如果你不想公式等单独单独计数的话, 在这里把这两行注释掉
  counter(heading).update(1)
  counter(math.equation).update(0)
  // 根据你的需要调整这里的公式编号样式
  set math.equation(numbering: num =>
    "(" + (str.from-unicode(counter(heading).get().at(0)+64) + "." + str(num)) + ")"
  )
  // 附录内容从这里开始
  heading(
    level: 1,
    outlined: true,
    numbering: none,
    [附录A：麦克斯韦方程组的推导其一]
  )
  [
    麦克斯韦方程组是描述电磁场的基本方程组，由四个方程构成。下面给出这些方程的推导过程：

    首先，高斯电场定律描述了电场与电荷的关系，其微分形式为：
    $
    nabla dot E = rho / epsilon_0
    $ <gauss_electric>

    其中，$E$是电场强度，$rho$是电荷密度，$epsilon_0$是真空介电常数。

    高斯磁场定律表明磁场是无源场，即不存在磁单极子：

    $
    nabla dot B = 0
    $ <gauss_magnetic>

    其中，$B$是磁感应强度。

    法拉第电磁感应定律描述了变化的磁场如何产生电场：

    $
    nabla times E = -diff(B, t)
    $ <faraday>
    ]

    heading(
      level: 1,
      outlined: true,
      numbering: none,
      [附录A：麦克斯韦方程组的推导其二]
    )
    [
    安培-麦克斯韦定律描述了电流和变化的电场如何产生磁场：

    $
    nabla times B = mu_0 J + mu_0 epsilon_0 diff(E, t)
    $ <ampere_maxwell>

    其中，$J$是电流密度，$mu_0$是真空磁导率。

    这四个方程共同构成了麦克斯韦方程组，它们统一了电磁理论，预言了电磁波的存在。在真空中，这些方程可以推导出电磁波的波动方程：

    $
    nabla^2 E - (1/c^2) (diff^2(E, t)) = 0
    $ <wave_equation>
    其中，$c = 1/sqrt(mu_0 epsilon_0)$是光速。

    通过矢量分析，我们可以从麦克斯韦方程组推导出波动方程。首先，对法拉第定律 @faraday 两边取旋度：

  $
  nabla times (nabla times E) = -nabla times diff(B, t)
  $

    利用矢量恒等式$nabla times (nabla times A) = nabla(nabla dot A) - nabla^2 A$，并结合高斯电场定律 @gauss_electric，我们得到：
  

  $
  nabla(nabla dot E) - nabla^2 E = -diff(nabla times B, t)
  $

  
    代入安培-麦克斯韦定律 @ampere_maxwell（假设真空中无电流，即$J = 0$）：
  

  $
  nabla(rho/epsilon_0) - nabla^2 E = -diff(mu_0 epsilon_0 diff(E, t), t)
  $

  
    在真空中，$rho = 0$，因此：
  

  $
  nabla^2 E = mu_0 epsilon_0 diff^2(E, t)
  $  
    由于$1/c^2 = mu_0 epsilon_0$，我们得到波动方程 @wave_equation。
  ]

  pagebreak()
  counter(heading).update(2) // 手动更新
  // 附录B：程序代码示例
  heading(
    outlined: true,
    numbering: none,
    [附录B：程序代码示例]
  )

  [
    以下是一些程序代码示例，用于展示不同编程语言的代码格式。
  ```python
  import numpy as np
  import matplotlib.pyplot as plt
  from scipy import signal
  def convolve2d(image, kernel):
      i_height, i_width = image.shape
      k_height, k_width = kernel.shape
      o_height = i_height - k_height + 1
      o_width = i_width - k_width + 1
      output = np.zeros((o_height, o_width))
      for i in range(o_height):
          for j in range(o_width):
              output[i, j] = np.sum(image[i:i+k_height, j:j+k_width] * kernel)
      return output
  ```
  ]


  pagebreak()
}
