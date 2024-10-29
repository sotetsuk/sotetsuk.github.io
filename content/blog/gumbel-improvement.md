+++
date = '2024-10-29T12:14:08+09:00'
draft = true
title = 'Gumbel MuZeroにおける方策改善について検証'
math = true
+++

* Danihelka et al., 2022. [Policy improvement by planning with Gumbel](https://openreview.net/forum?id=bERaNdoegnO) (ICLR)

## Preliminary

## Policy Improvement by Planning with Gumbel


* $\sigma(x)$: 任意の単調増加関数。簡単のため、 $\beta x$ だけ考える。
* $n$: 先読みする回数
* $q$: 真の価値関数 (TODO: optimial?)
* TOOD: math does not work well

$$
q\bigl(
  \text{argmax}_a(g(a) + \text{logits}(a) + \beta \ q(a))
\bigr) \newline
\geq q \bigl( \text{argmax}_a (g(a) + \text{logits}(a)  )\bigr) \newline
$$

