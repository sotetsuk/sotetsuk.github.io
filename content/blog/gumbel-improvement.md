+++
date = '2024-10-29T12:14:08+09:00'
draft = true
title = 'Gumbel MuZeroにおける方策改善について検証'
+++

* Danihelka et al., 2022. [Policy improvement by planning with Gumbel](https://openreview.net/forum?id=bERaNdoegnO) (ICLR)

## Preliminary

## Policy Improvement by Planning with Gumbel


* $\sigma(x)$: 任意の単調増加関数。簡単のため、$\sigma(x)=x$ だけ考える
* $n$: 先読みする回数
* $q$: 真の価値関数 (TODO: optimial?)

\[
\begin{aligned}
\mathbb{E}_{A_{n+1}}[q(A_{n+1})] &= q\bigl(\text{argmax}_{a\in \mathcal{A}_{\text{top}(n)} } \{g(a) + \text{logits}(a) + q(a) \}\bigr) \\
&\geq q \bigl( \text{argmax}_{a\in \mathcal{A}_{\text{top}(n)}} \{g(a) + \text{logits}(a)\}\bigr) \\
& = \mathbb{E}_{A \sim \pi} [ q(A)  ]
\end{aligned}
\]


