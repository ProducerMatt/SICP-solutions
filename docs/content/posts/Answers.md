+++
title = "A Journey Through SICP"
author = ["ProducerMatt"]
draft = false
+++

<div class="ox-hugo-toc toc has-section-numbers">

<div class="heading">Table of Contents</div>

- <span class="section-num">1</span> [Introduction Notes](#introduction-notes)
    - <span class="section-num">1.1</span> [Text Foreword](#text-foreword)
    - <span class="section-num">1.2</span> [Preface, 1e](#preface-1e)
- <span class="section-num">2</span> [Chapter 1: Building Abstractions with Procedures](#chapter-1-building-abstractions-with-procedures)
    - <span class="section-num">2.1</span> [1.1: The Elements of Programming](#1-dot-1-the-elements-of-programming)
    - <span class="section-num">2.2</span> [1.1.1: Expressions](#1-dot-1-dot-1-expressions)
    - <span class="section-num">2.3</span> [1.1.3: Evaluating Combinations](#1-dot-1-dot-3-evaluating-combinations)
    - <span class="section-num">2.4</span> [1.1.4: Compound Procedures](#1-dot-1-dot-4-compound-procedures)
    - <span class="section-num">2.5</span> [1.1.5: The Substitution Model for Procedure Application](#1-dot-1-dot-5-the-substitution-model-for-procedure-application)
    - <span class="section-num">2.6</span> [1.1.6: Conditional Expressions and Predicates](#1-dot-1-dot-6-conditional-expressions-and-predicates)
    - <span class="section-num">2.7</span> [Exercise 1.1: Trying expressions](#exercise-1-dot-1-trying-expressions)
        - <span class="section-num">2.7.1</span> [Question](#question)
        - <span class="section-num">2.7.2</span> [Answer](#answer)
    - <span class="section-num">2.8</span> [Exercise 1.2: Prefix form](#exercise-1-dot-2-prefix-form)
        - <span class="section-num">2.8.1</span> [Question](#question)
        - <span class="section-num">2.8.2</span> [Answer](#answer)
    - <span class="section-num">2.9</span> [Exercise 1.3: Conditionals](#exercise-1-dot-3-conditionals)
        - <span class="section-num">2.9.1</span> [Question](#question)
        - <span class="section-num">2.9.2</span> [Answer](#answer)
    - <span class="section-num">2.10</span> [Exercise 1.4: Compound expressions](#exercise-1-dot-4-compound-expressions)
        - <span class="section-num">2.10.1</span> [Question](#question)
        - <span class="section-num">2.10.2</span> [Answer](#answer)
    - <span class="section-num">2.11</span> [Exercise 1.5: Applicative vs normal-order evaluation](#exercise-1-dot-5-applicative-vs-normal-order-evaluation)
        - <span class="section-num">2.11.1</span> [Question](#question)
        - <span class="section-num">2.11.2</span> [Answer](#answer)
    - <span class="section-num">2.12</span> [1.1.7: Example: Square Roots by Newton's Method](#1-dot-1-dot-7-example-square-roots-by-newton-s-method)
    - <span class="section-num">2.13</span> [1.1.8: Procedures as Black-Box Abstractions](#1-dot-1-dot-8-procedures-as-black-box-abstractions)
    - <span class="section-num">2.14</span> [Exercise 1.6: Special form evaluation](#exercise-1-dot-6-special-form-evaluation)
        - <span class="section-num">2.14.1</span> [Text code](#text-code)
        - <span class="section-num">2.14.2</span> [Question](#question)
        - <span class="section-num">2.14.3</span> [Answer](#answer)
    - <span class="section-num">2.15</span> [Exercise 1.7: `sqrt` with small and large numbers](#exercise-1-dot-7-sqrt-with-small-and-large-numbers)
        - <span class="section-num">2.15.1</span> [Text](#text)
        - <span class="section-num">2.15.2</span> [Question](#question)
        - <span class="section-num">2.15.3</span> [Diary](#diary)
        - <span class="section-num">2.15.4</span> [Answer](#answer)
    - <span class="section-num">2.16</span> [Exercise 1.8: Cube roots](#exercise-1-dot-8-cube-roots)
        - <span class="section-num">2.16.1</span> [Question](#question)
        - <span class="section-num">2.16.2</span> [Diary](#diary)
        - <span class="section-num">2.16.3</span> [Answer](#answer)
    - <span class="section-num">2.17</span> [1.2: Procedures and the Processes They Generate](#1-dot-2-procedures-and-the-processes-they-generate)
    - <span class="section-num">2.18</span> [1.2.1: Linear Recursion and Iteration](#1-dot-2-dot-1-linear-recursion-and-iteration)
    - <span class="section-num">2.19</span> [Exercise 1.9: Peano counting and recursion](#exercise-1-dot-9-peano-counting-and-recursion)
        - <span class="section-num">2.19.1</span> [Question](#question)
        - <span class="section-num">2.19.2</span> [Answer](#answer)
    - <span class="section-num">2.20</span> [Exercise 1.10: Ackermann's Function](#exercise-1-dot-10-ackermann-s-function)
        - <span class="section-num">2.20.1</span> [Question](#question)
        - <span class="section-num">2.20.2</span> [Answer](#answer)
    - <span class="section-num">2.21</span> [1.2.2: Tree Recursion](#1-dot-2-dot-2-tree-recursion)
        - <span class="section-num">2.21.1</span> [Example: Counting change](#example-counting-change)
    - <span class="section-num">2.22</span> [Exercise 1.11: More recursion vs iteration](#exercise-1-dot-11-more-recursion-vs-iteration)
        - <span class="section-num">2.22.1</span> [Question](#question)
        - <span class="section-num">2.22.2</span> [Answer](#answer)
    - <span class="section-num">2.23</span> [Exercise 1.12: Pascal's Triangle](#exercise-1-dot-12-pascal-s-triangle)
        - <span class="section-num">2.23.1</span> [Question](#question)
        - <span class="section-num">2.23.2</span> [Answer](#answer)
    - <span class="section-num">2.24</span> [Exercise 1.13: Proving Fibonacci approximation](#exercise-1-dot-13-proving-fibonacci-approximation):optional:
        - <span class="section-num">2.24.1</span> [Question](#question)
        - <span class="section-num">2.24.2</span> [Answer](#answer)
    - <span class="section-num">2.25</span> [1.2.3: Orders of Growth](#1-dot-2-dot-3-orders-of-growth)
    - <span class="section-num">2.26</span> [Exercise 1.14: `count-change`](#exercise-1-dot-14-count-change)
        - <span class="section-num">2.26.1</span> [Text](#text)
        - <span class="section-num">2.26.2</span> [Question A: Draw the tree](#question-a-draw-the-tree)
        - <span class="section-num">2.26.3</span> [Answer](#answer)
        - <span class="section-num">2.26.4</span> [Question B: Analyzing process growth](#question-b-analyzing-process-growth)
        - <span class="section-num">2.26.5</span> [Answer B](#answer-b)
    - <span class="section-num">2.27</span> [Exercise 1.15: Sine approximation](#exercise-1-dot-15-sine-approximation)
        - <span class="section-num">2.27.1</span> [Question A](#question-a)
        - <span class="section-num">2.27.2</span> [Answer A](#answer-a)
        - <span class="section-num">2.27.3</span> [Question B](#question-b)
        - <span class="section-num">2.27.4</span> [Answer B](#answer-b)
    - <span class="section-num">2.28</span> [Exercise 1.16: Making `fast-expt` iterative](#exercise-1-dot-16-making-fast-expt-iterative)
        - <span class="section-num">2.28.1</span> [Text](#text)
        - <span class="section-num">2.28.2</span> [Question](#question)
        - <span class="section-num">2.28.3</span> [Diary](#diary)
        - <span class="section-num">2.28.4</span> [Answer](#answer)
    - <span class="section-num">2.29</span> [Exercise 1.17: Logarithmic multiplication (recursive)](#exercise-1-dot-17-logarithmic-multiplication--recursive)
        - <span class="section-num">2.29.1</span> [Question](#question)
        - <span class="section-num">2.29.2</span> [Answer](#answer)
    - <span class="section-num">2.30</span> [Exercise 1.18: Logarithmic multiplication (iterative)](#exercise-1-dot-18-logarithmic-multiplication--iterative)
        - <span class="section-num">2.30.1</span> [Question](#question)
        - <span class="section-num">2.30.2</span> [Diary](#diary)
        - <span class="section-num">2.30.3</span> [Answer](#answer)
    - <span class="section-num">2.31</span> [Exercise 1.19: Logarithmic fibonacci computing with \\(T\\)](#exercise-1-dot-19-logarithmic-fibonacci-computing-with-t)
        - <span class="section-num">2.31.1</span> [Question](#question)
        - <span class="section-num">2.31.2</span> [Diary](#diary)
        - <span class="section-num">2.31.3</span> [Answer](#answer)
    - <span class="section-num">2.32</span> [1.2.5: Greatest Common Divisor](#1-dot-2-dot-5-greatest-common-divisor)
    - <span class="section-num">2.33</span> [Exercise 1.20: Inefficiency of normal-order evaluation](#exercise-1-dot-20-inefficiency-of-normal-order-evaluation)
        - <span class="section-num">2.33.1</span> [Text](#text)
        - <span class="section-num">2.33.2</span> [Question](#question)
        - <span class="section-num">2.33.3</span> [Answer](#answer)
    - <span class="section-num">2.34</span> [1.2.6: Example: Testing for Primality](#1-dot-2-dot-6-example-testing-for-primality)
    - <span class="section-num">2.35</span> [Exercise 1.21](#exercise-1-dot-21)
        - <span class="section-num">2.35.1</span> [Text](#text)
        - <span class="section-num">2.35.2</span> [Question](#question)
        - <span class="section-num">2.35.3</span> [Answer](#answer)
    - <span class="section-num">2.36</span> [Exercise 1.22](#exercise-1-dot-22)
        - <span class="section-num">2.36.1</span> [Question](#question)
        - <span class="section-num">2.36.2</span> [Answer](#answer)
    - <span class="section-num">2.37</span> [Exercise 1.23](#exercise-1-dot-23)
        - <span class="section-num">2.37.1</span> [Question](#question)
        - <span class="section-num">2.37.2</span> [A Comedy of Error (just the one)](#a-comedy-of-error--just-the-one)
        - <span class="section-num">2.37.3</span> [Answer](#answer)
    - <span class="section-num">2.38</span> [Exercise 1.24](#exercise-1-dot-24)
        - <span class="section-num">2.38.1</span> [Text](#text)
        - <span class="section-num">2.38.2</span> [Question](#question)
        - <span class="section-num">2.38.3</span> [Answer](#answer)
    - <span class="section-num">2.39</span> [Exercise 1.25](#exercise-1-dot-25)
        - <span class="section-num">2.39.1</span> [Question](#question)
        - <span class="section-num">2.39.2</span> [Answer](#answer)
    - <span class="section-num">2.40</span> [Exercise 1.26](#exercise-1-dot-26)
        - <span class="section-num">2.40.1</span> [Question](#question)
        - <span class="section-num">2.40.2</span> [Answer](#answer)
    - <span class="section-num">2.41</span> [Exercise 1.27](#exercise-1-dot-27)
        - <span class="section-num">2.41.1</span> [Question](#question)
        - <span class="section-num">2.41.2</span> [Answer](#answer)
    - <span class="section-num">2.42</span> [Exercise 1.28](#exercise-1-dot-28)
        - <span class="section-num">2.42.1</span> [Question](#question)
        - <span class="section-num">2.42.2</span> [Analysis](#analysis)
        - <span class="section-num">2.42.3</span> [Answer](#answer)
    - <span class="section-num">2.43</span> [1.3: Formulating Abstractions with Higher-Order Procedures](#1-dot-3-formulating-abstractions-with-higher-order-procedures)
    - <span class="section-num">2.44</span> [1.3.1: Procedures as Arguments](#1-dot-3-dot-1-procedures-as-arguments)
    - <span class="section-num">2.45</span> [Exercise 1.29](#exercise-1-dot-29)
        - <span class="section-num">2.45.1</span> [Text](#text)
        - <span class="section-num">2.45.2</span> [Question](#question)
        - <span class="section-num">2.45.3</span> [Answer](#answer)
    - <span class="section-num">2.46</span> [Exercise 1.30](#exercise-1-dot-30)
        - <span class="section-num">2.46.1</span> [Question](#question)
        - <span class="section-num">2.46.2</span> [Answer](#answer)
    - <span class="section-num">2.47</span> [Exercise 1.31](#exercise-1-dot-31)
        - <span class="section-num">2.47.1</span> [Question A.1](#question-a-dot-1)
        - <span class="section-num">2.47.2</span> [Answer A.1](#answer-a-dot-1)
        - <span class="section-num">2.47.3</span> [Question A.2](#question-a-dot-2)
        - <span class="section-num">2.47.4</span> [Answer A.2](#answer-a-dot-2)
        - <span class="section-num">2.47.5</span> [Question A.3](#question-a-dot-3)
        - <span class="section-num">2.47.6</span> [Answer A.3](#answer-a-dot-3)
        - <span class="section-num">2.47.7</span> [Question B](#question-b)
        - <span class="section-num">2.47.8</span> [Answer B](#answer-b)
    - <span class="section-num">2.48</span> [Exercise 1.32](#exercise-1-dot-32)
        - <span class="section-num">2.48.1</span> [Question A](#question-a)
        - <span class="section-num">2.48.2</span> [Answer A](#answer-a)
        - <span class="section-num">2.48.3</span> [Question B](#question-b)
        - <span class="section-num">2.48.4</span> [Answer B](#answer-b)
    - <span class="section-num">2.49</span> [Exercise 1.33](#exercise-1-dot-33)
        - <span class="section-num">2.49.1</span> [Question A](#question-a)
        - <span class="section-num">2.49.2</span> [Answer A](#answer-a)
        - <span class="section-num">2.49.3</span> [Question B](#question-b)
    - <span class="section-num">2.50</span> [1.3.2: Constructing Procedures Using lambda](#1-dot-3-dot-2-constructing-procedures-using-lambda)
    - <span class="section-num">2.51</span> [Exercise 1.34](#exercise-1-dot-34)
        - <span class="section-num">2.51.1</span> [Question](#question)
        - <span class="section-num">2.51.2</span> [Answer](#answer)
    - <span class="section-num">2.52</span> [1.3.3 Procedures as General Methods](#1-dot-3-dot-3-procedures-as-general-methods)
    - <span class="section-num">2.53</span> [Exercise 1.35](#exercise-1-dot-35)
        - <span class="section-num">2.53.1</span> [Text](#text)
        - <span class="section-num">2.53.2</span> [Question](#question)
        - <span class="section-num">2.53.3</span> [Answer](#answer)
    - <span class="section-num">2.54</span> [Exercise 1.36](#exercise-1-dot-36)
        - <span class="section-num">2.54.1</span> [Question](#question)
        - <span class="section-num">2.54.2</span> [Answer](#answer)
    - <span class="section-num">2.55</span> [Exercise 1.37](#exercise-1-dot-37)
        - <span class="section-num">2.55.1</span> [Question A](#question-a)
        - <span class="section-num">2.55.2</span> [Answer A](#answer-a)
        - <span class="section-num">2.55.3</span> [Question B](#question-b)
        - <span class="section-num">2.55.4</span> [Answer B](#answer-b)
        - <span class="section-num">2.55.5</span> [Question C](#question-c)
        - <span class="section-num">2.55.6</span> [Answer C](#answer-c)
    - <span class="section-num">2.56</span> [Exercise 1.38](#exercise-1-dot-38)
        - <span class="section-num">2.56.1</span> [Question](#question)
        - <span class="section-num">2.56.2</span> [Answer](#answer)
    - <span class="section-num">2.57</span> [Exercise 1.39](#exercise-1-dot-39)
        - <span class="section-num">2.57.1</span> [Question](#question)
        - <span class="section-num">2.57.2</span> [Answer](#answer)
    - <span class="section-num">2.58</span> [1.3.4 Procedures as Returned Values](#1-dot-3-dot-4-procedures-as-returned-values)
    - <span class="section-num">2.59</span> [Exercise 1.40](#exercise-1-dot-40)
        - <span class="section-num">2.59.1</span> [Text](#text)
        - <span class="section-num">2.59.2</span> [Question](#question)
        - <span class="section-num">2.59.3</span> [Answer](#answer)
    - <span class="section-num">2.60</span> [Exercise 1.41](#exercise-1-dot-41)
        - <span class="section-num">2.60.1</span> [Question](#question)
        - <span class="section-num">2.60.2</span> [Answer](#answer)
    - <span class="section-num">2.61</span> [Exercise 1.42](#exercise-1-dot-42)
        - <span class="section-num">2.61.1</span> [Question](#question)
        - <span class="section-num">2.61.2</span> [Answer](#answer)
    - <span class="section-num">2.62</span> [Exercise 1.43](#exercise-1-dot-43)
        - <span class="section-num">2.62.1</span> [Question](#question)
        - <span class="section-num">2.62.2</span> [Answer](#answer)
    - <span class="section-num">2.63</span> [Exercise 1.44](#exercise-1-dot-44)
        - <span class="section-num">2.63.1</span> [Question](#question)
        - <span class="section-num">2.63.2</span> [Answer](#answer)
    - <span class="section-num">2.64</span> [Exercise 1.45](#exercise-1-dot-45)
        - <span class="section-num">2.64.1</span> [Question](#question)
        - <span class="section-num">2.64.2</span> [Answer](#answer)
    - <span class="section-num">2.65</span> [Exercise 1.46](#exercise-1-dot-46)
        - <span class="section-num">2.65.1</span> [Question](#question)
        - <span class="section-num">2.65.2</span> [Answer](#answer)
- <span class="section-num">3</span> [Chapter 2: Building Abstractions with Data](#chapter-2-building-abstractions-with-data)
    - <span class="section-num">3.1</span> [2.1.1: Example: Arithmetic Operations for Rational Numbers](#2-dot-1-dot-1-example-arithmetic-operations-for-rational-numbers)
    - <span class="section-num">3.2</span> [Exercise 2.1](#exercise-2-dot-1)
        - <span class="section-num">3.2.1</span> [Text](#text)
        - <span class="section-num">3.2.2</span> [Question](#question)
        - <span class="section-num">3.2.3</span> [Answer](#answer)
    - <span class="section-num">3.3</span> [Exercise 2.2](#exercise-2-dot-2)
        - <span class="section-num">3.3.1</span> [Question](#question)
        - <span class="section-num">3.3.2</span> [Answer](#answer)
    - <span class="section-num">3.4</span> [Exercise 2.3](#exercise-2-dot-3)
        - <span class="section-num">3.4.1</span> [Question](#question)
        - <span class="section-num">3.4.2</span> [Answer 1](#answer-1)
        - <span class="section-num">3.4.3</span> [Answer 2](#answer-2)
    - <span class="section-num">3.5</span> [2.1.3: What Is Meant by Data?](#2-dot-1-dot-3-what-is-meant-by-data)
    - <span class="section-num">3.6</span> [Exercise 2.4](#exercise-2-dot-4)
        - <span class="section-num">3.6.1</span> [Question](#question)
        - <span class="section-num">3.6.2</span> [Answer](#answer)
    - <span class="section-num">3.7</span> [Exercise 2.5](#exercise-2-dot-5):optional:
        - <span class="section-num">3.7.1</span> [Question](#question)
        - <span class="section-num">3.7.2</span> [Answer](#answer)
    - <span class="section-num">3.8</span> [Exercise 2.6](#exercise-2-dot-6):optional:
        - <span class="section-num">3.8.1</span> [Question](#question)
        - <span class="section-num">3.8.2</span> [Answer](#answer)
    - <span class="section-num">3.9</span> [Exercise 2.7](#exercise-2-dot-7)
        - <span class="section-num">3.9.1</span> [Text](#text)
        - <span class="section-num">3.9.2</span> [Question](#question)
        - <span class="section-num">3.9.3</span> [Answer](#answer)
    - <span class="section-num">3.10</span> [Exercise 2.8](#exercise-2-dot-8)
        - <span class="section-num">3.10.1</span> [Question](#question)
        - <span class="section-num">3.10.2</span> [Answer](#answer)
    - <span class="section-num">3.11</span> [Exercise 2.9](#exercise-2-dot-9)
        - <span class="section-num">3.11.1</span> [Question](#question)
        - <span class="section-num">3.11.2</span> [Answer](#answer)
    - <span class="section-num">3.12</span> [Exercise 2.10](#exercise-2-dot-10)
        - <span class="section-num">3.12.1</span> [Question](#question)
        - <span class="section-num">3.12.2</span> [Answer](#answer)
    - <span class="section-num">3.13</span> [Exercise 2.11](#exercise-2-dot-11)
        - <span class="section-num">3.13.1</span> [Question](#question)
        - <span class="section-num">3.13.2</span> [Answer](#answer)
    - <span class="section-num">3.14</span> [Exercise 2.12](#exercise-2-dot-12)
        - <span class="section-num">3.14.1</span> [Question](#question)
        - <span class="section-num">3.14.2</span> [Answer](#answer)
    - <span class="section-num">3.15</span> [Exercise 2.13](#exercise-2-dot-13):optional:
        - <span class="section-num">3.15.1</span> [Question](#question)
        - <span class="section-num">3.15.2</span> [Answer](#answer)
    - <span class="section-num">3.16</span> [Exercise 2.14](#exercise-2-dot-14)
        - <span class="section-num">3.16.1</span> [Question](#question)
        - <span class="section-num">3.16.2</span> [Answer](#answer)
    - <span class="section-num">3.17</span> [Exercise 2.15](#exercise-2-dot-15)
        - <span class="section-num">3.17.1</span> [Question](#question)
        - <span class="section-num">3.17.2</span> [Answer](#answer)
    - <span class="section-num">3.18</span> [Exercise 2.16](#exercise-2-dot-16):optional:
        - <span class="section-num">3.18.1</span> [Question](#question)
        - <span class="section-num">3.18.2</span> [Answer](#answer)
    - <span class="section-num">3.19</span> [2.2: Hierarchical Data and the Closure Property](#2-dot-2-hierarchical-data-and-the-closure-property)
    - <span class="section-num">3.20</span> [2.2.1: Representing Sequences](#2-dot-2-dot-1-representing-sequences)
    - <span class="section-num">3.21</span> [Exercise 2.17](#exercise-2-dot-17)
        - <span class="section-num">3.21.1</span> [Question](#question)
        - <span class="section-num">3.21.2</span> [Answer](#answer)
    - <span class="section-num">3.22</span> [Exercise 2.18](#exercise-2-dot-18)
        - <span class="section-num">3.22.1</span> [Question](#question)
        - <span class="section-num">3.22.2</span> [Answer](#answer)
    - <span class="section-num">3.23</span> [Exercise 2.19](#exercise-2-dot-19)
        - <span class="section-num">3.23.1</span> [Question](#question)
        - <span class="section-num">3.23.2</span> [Answer](#answer)
    - <span class="section-num">3.24</span> [Exercise 2.20](#exercise-2-dot-20)
        - <span class="section-num">3.24.1</span> [Question](#question)
        - <span class="section-num">3.24.2</span> [Answer](#answer)
    - <span class="section-num">3.25</span> [Exercise 2.21](#exercise-2-dot-21)
        - <span class="section-num">3.25.1</span> [Question](#question)
        - <span class="section-num">3.25.2</span> [Answer](#answer)
    - <span class="section-num">3.26</span> [Exercise 2.22](#exercise-2-dot-22)
        - <span class="section-num">3.26.1</span> [Questions](#questions)
        - <span class="section-num">3.26.2</span> [Answer](#answer)
    - <span class="section-num">3.27</span> [Exercise 2.23](#exercise-2-dot-23)
        - <span class="section-num">3.27.1</span> [Question](#question)
        - <span class="section-num">3.27.2</span> [Answer](#answer)
    - <span class="section-num">3.28</span> [Exercise 2.24](#exercise-2-dot-24)
        - <span class="section-num">3.28.1</span> [Text Definitions](#text-definitions)
        - <span class="section-num">3.28.2</span> [Question](#question)
        - <span class="section-num">3.28.3</span> [Answer](#answer)
    - <span class="section-num">3.29</span> [Exercise 2.25](#exercise-2-dot-25)
        - <span class="section-num">3.29.1</span> [Question](#question)
    - <span class="section-num">3.30</span> [Exercise 2.26](#exercise-2-dot-26)
        - <span class="section-num">3.30.1</span> [Question](#question)
        - <span class="section-num">3.30.2</span> [Answer](#answer)
    - <span class="section-num">3.31</span> [Exercise 2.27](#exercise-2-dot-27)
        - <span class="section-num">3.31.1</span> [Question](#question)
        - <span class="section-num">3.31.2</span> [Answer](#answer)
    - <span class="section-num">3.32</span> [Exercise 2.28](#exercise-2-dot-28)
        - <span class="section-num">3.32.1</span> [Question](#question)
        - <span class="section-num">3.32.2</span> [Answer](#answer)
    - <span class="section-num">3.33</span> [Exercise 2.29: Binary Mobiles](#exercise-2-dot-29-binary-mobiles)
        - <span class="section-num">3.33.1</span> [Text Definitions](#text-definitions)
        - <span class="section-num">3.33.2</span> [Question A: Selectors](#question-a-selectors)
        - <span class="section-num">3.33.3</span> [Answer A](#answer-a)
        - <span class="section-num">3.33.4</span> [Question B: total-weight](#question-b-total-weight)
        - <span class="section-num">3.33.5</span> [Answer B](#answer-b)
        - <span class="section-num">3.33.6</span> [Question C: Balancing](#question-c-balancing)
        - <span class="section-num">3.33.7</span> [Answer C](#answer-c)
        - <span class="section-num">3.33.8</span> [Question D: Implementation shakeup](#question-d-implementation-shakeup)
        - <span class="section-num">3.33.9</span> [Answer D](#answer-d)
    - <span class="section-num">3.34</span> [Exercise 2.30](#exercise-2-dot-30)
        - <span class="section-num">3.34.1</span> [Question](#question)
        - <span class="section-num">3.34.2</span> [Answer](#answer)
    - <span class="section-num">3.35</span> [Exercise 2.31](#exercise-2-dot-31)
        - <span class="section-num">3.35.1</span> [Question](#question)
        - <span class="section-num">3.35.2</span> [Answer](#answer)
    - <span class="section-num">3.36</span> [Exercise 2.32](#exercise-2-dot-32)
        - <span class="section-num">3.36.1</span> [Question](#question)
        - <span class="section-num">3.36.2</span> [Answer](#answer)
    - <span class="section-num">3.37</span> [2.2.3: Sequences as Conventional Interfaces](#2-dot-2-dot-3-sequences-as-conventional-interfaces)
    - <span class="section-num">3.38</span> [Exercise 2.33: The flexibility of `accumulate`](#exercise-2-dot-33-the-flexibility-of-accumulate)
        - <span class="section-num">3.38.1</span> [Text Definitions](#text-definitions)
        - <span class="section-num">3.38.2</span> [Question](#question)
        - <span class="section-num">3.38.3</span> [Answer](#answer)
    - <span class="section-num">3.39</span> [Exercise 2.34](#exercise-2-dot-34)
        - <span class="section-num">3.39.1</span> [Question](#question)
        - <span class="section-num">3.39.2</span> [Answer](#answer)
    - <span class="section-num">3.40</span> [Exercise 2.35](#exercise-2-dot-35)
        - <span class="section-num">3.40.1</span> [Question](#question)
        - <span class="section-num">3.40.2</span> [Answer](#answer)
    - <span class="section-num">3.41</span> [Exercise 2.36: Accumulate across multiple lists](#exercise-2-dot-36-accumulate-across-multiple-lists)
        - <span class="section-num">3.41.1</span> [Question](#question)
        - <span class="section-num">3.41.2</span> [Answers](#answers)
    - <span class="section-num">3.42</span> [Exercise 2.37: Enter the matrices](#exercise-2-dot-37-enter-the-matrices)
        - <span class="section-num">3.42.1</span> [Question](#question)
        - <span class="section-num">3.42.2</span> [Answer](#answer)
    - <span class="section-num">3.43</span> [Exercise 2.38: fold-right](#exercise-2-dot-38-fold-right)
        - <span class="section-num">3.43.1</span> [Question A](#question-a)
        - <span class="section-num">3.43.2</span> [Answer A](#answer-a)
        - <span class="section-num">3.43.3</span> [Question B](#question-b)
        - <span class="section-num">3.43.4</span> [Answer B](#answer-b)
    - <span class="section-num">3.44</span> [Exercise 2.39: reverse via fold](#exercise-2-dot-39-reverse-via-fold)
        - <span class="section-num">3.44.1</span> [Question](#question)
        - <span class="section-num">3.44.2</span> [Answer](#answer)
    - <span class="section-num">3.45</span> [Exercise 2.40: `unique-pairs`](#exercise-2-dot-40-unique-pairs)
        - <span class="section-num">3.45.1</span> [Text Definitions](#text-definitions)
        - <span class="section-num">3.45.2</span> [Question](#question)
        - <span class="section-num">3.45.3</span> [Answer](#answer)
    - <span class="section-num">3.46</span> [Exercise 2.41: Ordered triples of positive integers](#exercise-2-dot-41-ordered-triples-of-positive-integers)
        - <span class="section-num">3.46.1</span> [Question](#question)
        - <span class="section-num">3.46.2</span> [Answer](#answer)
    - <span class="section-num">3.47</span> [Exercise 2.42: Eight Queens](#exercise-2-dot-42-eight-queens)
        - <span class="section-num">3.47.1</span> [Question](#question)
        - <span class="section-num">3.47.2</span> [Answer](#answer)
    - <span class="section-num">3.48</span> [Exercise 2.43: Louis' `queens`](#exercise-2-dot-43-louis-queens)
        - <span class="section-num">3.48.1</span> [Question](#question)
        - <span class="section-num">3.48.2</span> [Answer](#answer)
    - <span class="section-num">3.49</span> [2.2.4: Example: A Picture Language](#2-dot-2-dot-4-example-a-picture-language)
    - <span class="section-num">3.50</span> [Exercise 2.44: `up-split`](#exercise-2-dot-44-up-split)
        - <span class="section-num">3.50.1</span> [Text Definitions](#text-definitions)
        - <span class="section-num">3.50.2</span> [Question](#question)
        - <span class="section-num">3.50.3</span> [Answer](#answer)
    - <span class="section-num">3.51</span> [Exercise 2.45: Generalized splitting](#exercise-2-dot-45-generalized-splitting)
        - <span class="section-num">3.51.1</span> [Question](#question)
        - <span class="section-num">3.51.2</span> [Answer](#answer)
    - <span class="section-num">3.52</span> [Exercise 2.46: Defining vectors](#exercise-2-dot-46-defining-vectors)
        - <span class="section-num">3.52.1</span> [Question](#question)
        - <span class="section-num">3.52.2</span> [Answer](#answer)
    - <span class="section-num">3.53</span> [Exercise 2.47: Defining frames](#exercise-2-dot-47-defining-frames)
        - <span class="section-num">3.53.1</span> [Question](#question)
        - <span class="section-num">3.53.2</span> [Answer](#answer)
    - <span class="section-num">3.54</span> [Exercise 2.48: Line segments](#exercise-2-dot-48-line-segments)
        - <span class="section-num">3.54.1</span> [Question](#question)
        - <span class="section-num">3.54.2</span> [Answer](#answer)
    - <span class="section-num">3.55</span> [Exercise 2.49: Primitive painters](#exercise-2-dot-49-primitive-painters)
        - <span class="section-num">3.55.1</span> [Text Definitions](#text-definitions)
        - <span class="section-num">3.55.2</span> [Question](#question)
        - <span class="section-num">3.55.3</span> [Answer](#answer)
    - <span class="section-num">3.56</span> [Exercise 2.50: Transforming painters](#exercise-2-dot-50-transforming-painters)
        - <span class="section-num">3.56.1</span> [Text Definitions](#text-definitions)
        - <span class="section-num">3.56.2</span> [Question](#question)
        - <span class="section-num">3.56.3</span> [Answer](#answer)
    - <span class="section-num">3.57</span> [Exercise 2.51](#exercise-2-dot-51)
        - <span class="section-num">3.57.1</span> [Question](#question)
        - <span class="section-num">3.57.2</span> [Answer](#answer)
    - <span class="section-num">3.58</span> [2.2.4 continued](#2-dot-2-dot-4-continued)
    - <span class="section-num">3.59</span> [Exercise 2.52](#exercise-2-dot-52)
        - <span class="section-num">3.59.1</span> [Question A](#question-a)
        - <span class="section-num">3.59.2</span> [Answer A](#answer-a)
        - <span class="section-num">3.59.3</span> [Question B](#question-b)
        - <span class="section-num">3.59.4</span> [Question C](#question-c)
        - <span class="section-num">3.59.5</span> [Textbook Definitions](#textbook-definitions)
        - <span class="section-num">3.59.6</span> [Answer C](#answer-c)
    - <span class="section-num">3.60</span> [2.3.1: Quotation](#2-dot-3-dot-1-quotation)
    - <span class="section-num">3.61</span> [Exercise 2.53](#exercise-2-dot-53)
        - <span class="section-num">3.61.1</span> [Question](#question)
        - <span class="section-num">3.61.2</span> [Answer](#answer)
    - <span class="section-num">3.62</span> [Exercise 2.54](#exercise-2-dot-54)
        - <span class="section-num">3.62.1</span> [Answer](#answer)
    - <span class="section-num">3.63</span> [Exercise 2.55](#exercise-2-dot-55)
        - <span class="section-num">3.63.1</span> [Question](#question)
        - <span class="section-num">3.63.2</span> [Answer](#answer)
    - <span class="section-num">3.64</span> [2.3.2: Example: Symbolic differentiator](#2-dot-3-dot-2-example-symbolic-differentiator)
    - <span class="section-num">3.65</span> [Exercise 2.56: Differentiating exponentiation](#exercise-2-dot-56-differentiating-exponentiation)
        - <span class="section-num">3.65.1</span> [Text definitions](#text-definitions)
        - <span class="section-num">3.65.2</span> [Question](#question)
        - <span class="section-num">3.65.3</span> [Answer](#answer)
    - <span class="section-num">3.66</span> [Exercise 2.57: Differentiating arbitrary-length expressions](#exercise-2-dot-57-differentiating-arbitrary-length-expressions)
        - <span class="section-num">3.66.1</span> [Question](#question)
        - <span class="section-num">3.66.2</span> [Answer](#answer)
    - <span class="section-num">3.67</span> [Exercise 2.58: Processing expressions with infix notation](#exercise-2-dot-58-processing-expressions-with-infix-notation)
        - <span class="section-num">3.67.1</span> [Question](#question)
        - <span class="section-num">3.67.2</span> [Part 1](#part-1)
        - <span class="section-num">3.67.3</span> [Answer 1](#answer-1)
        - <span class="section-num">3.67.4</span> [Part 2](#part-2)
        - <span class="section-num">3.67.5</span> [Answer 2](#answer-2)
    - <span class="section-num">3.68</span> [Exercise 2.59: Representing sets](#exercise-2-dot-59-representing-sets)
        - <span class="section-num">3.68.1</span> [Text definitions](#text-definitions)
        - <span class="section-num">3.68.2</span> [Question](#question)
        - <span class="section-num">3.68.3</span> [Answer](#answer)
    - <span class="section-num">3.69</span> [Exercise 2.59: Sets with duplicates](#exercise-2-dot-59-sets-with-duplicates)
        - <span class="section-num">3.69.1</span> [Question](#question)
        - <span class="section-num">3.69.2</span> [Answer](#answer)
    - <span class="section-num">3.70</span> [Exercise 2.61: Ordered sets](#exercise-2-dot-61-ordered-sets)
        - <span class="section-num">3.70.1</span> [Question](#question)
        - <span class="section-num">3.70.2</span> [Answer](#answer)
    - <span class="section-num">3.71</span> [Exercise 2.62: `union-set` ordered](#exercise-2-dot-62-union-set-ordered)
        - <span class="section-num">3.71.1</span> [Question](#question)
        - <span class="section-num">3.71.2</span> [Answer](#answer)
    - <span class="section-num">3.72</span> [Exercise 2.63: binary trees](#exercise-2-dot-63-binary-trees)
        - <span class="section-num">3.72.1</span> [Text definitions](#text-definitions)
        - <span class="section-num">3.72.2</span> [Question A](#question-a)
        - <span class="section-num">3.72.3</span> [Answer A](#answer-a)
        - <span class="section-num">3.72.4</span> [Question B](#question-b)
        - <span class="section-num">3.72.5</span> [Answer B](#answer-b)
    - <span class="section-num">3.73</span> [Exercise 2.64: Making a balanced binary tree](#exercise-2-dot-64-making-a-balanced-binary-tree)
        - <span class="section-num">3.73.1</span> [Question A](#question-a)
        - <span class="section-num">3.73.2</span> [Answer A](#answer-a)
        - <span class="section-num">3.73.3</span> [Question B](#question-b)
        - <span class="section-num">3.73.4</span> [Answer B](#answer-b)
    - <span class="section-num">3.74</span> [Exercise 2.65: Sets as binary trees](#exercise-2-dot-65-sets-as-binary-trees)
        - <span class="section-num">3.74.1</span> [Textbook Definitions](#textbook-definitions)
        - <span class="section-num">3.74.2</span> [Question](#question)
        - <span class="section-num">3.74.3</span> [Answer](#answer)
    - <span class="section-num">3.75</span> [Exercise 2.66: binary tree `lookup`](#exercise-2-dot-66-binary-tree-lookup)
        - <span class="section-num">3.75.1</span> [Question](#question)
        - <span class="section-num">3.75.2</span> [Answer](#answer)
    - <span class="section-num">3.76</span> [Exercise 2.67: decoding Huffman tree messages](#exercise-2-dot-67-decoding-huffman-tree-messages)
        - <span class="section-num">3.76.1</span> [Text definitions](#text-definitions)
        - <span class="section-num">3.76.2</span> [Question](#question)
        - <span class="section-num">3.76.3</span> [Answer](#answer)
    - <span class="section-num">3.77</span> [Exercise 2.68: encoding Huffman tree messages](#exercise-2-dot-68-encoding-huffman-tree-messages)
        - <span class="section-num">3.77.1</span> [Question](#question)
        - <span class="section-num">3.77.2</span> [Answer](#answer)
    - <span class="section-num">3.78</span> [Exercise 2.69: Generating Huffman trees](#exercise-2-dot-69-generating-huffman-trees)
        - <span class="section-num">3.78.1</span> [Question](#question)
        - <span class="section-num">3.78.2</span> [Answer](#answer)
    - <span class="section-num">3.79</span> [Exercise 2.70: encoding 1950s rock songs](#exercise-2-dot-70-encoding-1950s-rock-songs)
        - <span class="section-num">3.79.1</span> [Question](#question)
        - <span class="section-num">3.79.2</span> [Answer](#answer)
    - <span class="section-num">3.80</span> [Exercise 2.71](#exercise-2-dot-71)
        - <span class="section-num">3.80.1</span> [Questions](#questions)
        - <span class="section-num">3.80.2</span> [Answers](#answers)
    - <span class="section-num">3.81</span> [Exercise 2.72: order of growth of `encode`](#exercise-2-dot-72-order-of-growth-of-encode)
    - <span class="section-num">3.82</span> [2.4: Multiple Representations for Abstract Data](#2-dot-4-multiple-representations-for-abstract-data)
    - <span class="section-num">3.83</span> [Exercise 2.73: Data-driven symbolic differentiator](#exercise-2-dot-73-data-driven-symbolic-differentiator)
        - <span class="section-num">3.83.1</span> [Question A](#question-a)
        - <span class="section-num">3.83.2</span> [Answer A](#answer-a)
        - <span class="section-num">3.83.3</span> [Questions B and C](#questions-b-and-c)
        - <span class="section-num">3.83.4</span> [Answer B &amp; C version 1](#answer-b-and-c-version-1)
        - <span class="section-num">3.83.5</span> [Answer B &amp; C version 2](#answer-b-and-c-version-2)
        - <span class="section-num">3.83.6</span> [Question D](#question-d)
        - <span class="section-num">3.83.7</span> [Answer D](#answer-d)
    - <span class="section-num">3.84</span> [Exercise 2.74: Multi-division record storage](#exercise-2-dot-74-multi-division-record-storage)
        - <span class="section-num">3.84.1</span> [Questions ABC](#questions-abc)
        - <span class="section-num">3.84.2</span> [Answers ABC](#answers-abc)
        - <span class="section-num">3.84.3</span> [Question D](#question-d)
        - <span class="section-num">3.84.4</span> [Answer D](#answer-d)
    - <span class="section-num">3.85</span> [2.4.3: Data-directed and message-passing programs](#2-dot-4-dot-3-data-directed-and-message-passing-programs)
    - <span class="section-num">3.86</span> [Exercise 2.75: Message-passing styled imaginary numbers](#exercise-2-dot-75-message-passing-styled-imaginary-numbers)
        - <span class="section-num">3.86.1</span> [Question](#question)
        - <span class="section-num">3.86.2</span> [Answer](#answer)
    - <span class="section-num">3.87</span> [Exercise 2.76: comparing generic operation solutions](#exercise-2-dot-76-comparing-generic-operation-solutions)
        - <span class="section-num">3.87.1</span> [Question](#question)
        - <span class="section-num">3.87.2</span> [Answer](#answer)
    - <span class="section-num">3.88</span> [Exercise 2.77: generic arithmetic package](#exercise-2-dot-77-generic-arithmetic-package)
        - <span class="section-num">3.88.1</span> [Question](#question)
        - <span class="section-num">3.88.2</span> [Answer](#answer)
    - <span class="section-num">3.89</span> [Exercise 2.78: native scheme numbers](#exercise-2-dot-78-native-scheme-numbers)
        - <span class="section-num">3.89.1</span> [Question](#question)
        - <span class="section-num">3.89.2</span> [Answer](#answer)
    - <span class="section-num">3.90</span> [Exercise 2.79: generic equality](#exercise-2-dot-79-generic-equality)
        - <span class="section-num">3.90.1</span> [Question](#question)
        - <span class="section-num">3.90.2</span> [Answer](#answer)
    - <span class="section-num">3.91</span> [Exercise 2.80: Generic testing for zero](#exercise-2-dot-80-generic-testing-for-zero)
        - <span class="section-num">3.91.1</span> [Question](#question)
        - <span class="section-num">3.91.2</span> [Answer](#answer)
    - <span class="section-num">3.92</span> [2.4.3: Combining Data of Different Types](#2-dot-4-dot-3-combining-data-of-different-types)
    - <span class="section-num">3.93</span> [Exercise 2.81: Louis' `apply-generic`](#exercise-2-dot-81-louis-apply-generic)
        - <span class="section-num">3.93.1</span> [Question A](#question-a)
        - <span class="section-num">3.93.2</span> [Answer A](#answer-a)
        - <span class="section-num">3.93.3</span> [Question B](#question-b)
        - <span class="section-num">3.93.4</span> [Answer B](#answer-b)
        - <span class="section-num">3.93.5</span> [Question C](#question-c)
        - <span class="section-num">3.93.6</span> [Answer C](#answer-c)
    - <span class="section-num">3.94</span> [Exercise 2.82: `apply-generic` with multiple coerced arguments](#exercise-2-dot-82-apply-generic-with-multiple-coerced-arguments)
        - <span class="section-num">3.94.1</span> [Question](#question)
        - <span class="section-num">3.94.2</span> [Answer](#answer)
        - <span class="section-num">3.94.3</span> [Answer with vararg support](#answer-with-vararg-support)
    - <span class="section-num">3.95</span> [Exercise 2.83: `raise`](#exercise-2-dot-83-raise)
        - <span class="section-num">3.95.1</span> [Question](#question)
        - <span class="section-num">3.95.2</span> [Answer](#answer)
    - <span class="section-num">3.96</span> [Exercise 2.84: `append-generic` with `raise`](#exercise-2-dot-84-append-generic-with-raise)
        - <span class="section-num">3.96.1</span> [Question](#question)
        - <span class="section-num">3.96.2</span> [Answer](#answer)
    - <span class="section-num">3.97</span> [Exercise 2.85: `append-generic` with `drop`](#exercise-2-dot-85-append-generic-with-drop)
        - <span class="section-num">3.97.1</span> [Question](#question)
        - <span class="section-num">3.97.2</span> [Answer](#answer)
    - <span class="section-num">3.98</span> [Exercise 2.86: complex numbers with flexible types](#exercise-2-dot-86-complex-numbers-with-flexible-types)
        - <span class="section-num">3.98.1</span> [Question](#question)
        - <span class="section-num">3.98.2</span> [Answer](#answer)
    - <span class="section-num">3.99</span> [2.5: Symbolic Algebra](#2-dot-5-symbolic-algebra)
    - <span class="section-num">3.100</span> [Exercise 2.87: `=zero?` for polynomials](#exercise-2-dot-87-zero-for-polynomials)
        - <span class="section-num">3.100.1</span> [Question](#question)
        - <span class="section-num">3.100.2</span> [Answer](#answer)
    - <span class="section-num">3.101</span> [Exercise 2.88: negation, subtracting polynomials](#exercise-2-dot-88-negation-subtracting-polynomials)
        - <span class="section-num">3.101.1</span> [Question](#question)
        - <span class="section-num">3.101.2</span> [Answer](#answer)
    - <span class="section-num">3.102</span> [Exercise 2.89: an abstraction for dense polynomials](#exercise-2-dot-89-an-abstraction-for-dense-polynomials)
        - <span class="section-num">3.102.1</span> [Question](#question)
        - <span class="section-num">3.102.2</span> [Answer](#answer)
    - <span class="section-num">3.103</span> [Exercise 2.90: dense polynomials integrated into the system](#exercise-2-dot-90-dense-polynomials-integrated-into-the-system)
        - <span class="section-num">3.103.1</span> [Question](#question)
        - <span class="section-num">3.103.2</span> [Answer](#answer)
    - <span class="section-num">3.104</span> [Exercise 2.91: division of polynomials](#exercise-2-dot-91-division-of-polynomials)
        - <span class="section-num">3.104.1</span> [Question](#question)
        - <span class="section-num">3.104.2</span> [Answer](#answer)
    - <span class="section-num">3.105</span> [Exercise 2.92: operating on polys in different variables](#exercise-2-dot-92-operating-on-polys-in-different-variables)
        - <span class="section-num">3.105.1</span> [Question](#question)
        - <span class="section-num">3.105.2</span> [Answer](#answer)
    - <span class="section-num">3.106</span> [Exercise 2.93: extending `make-rational` for rational functions](#exercise-2-dot-93-extending-make-rational-for-rational-functions)
        - <span class="section-num">3.106.1</span> [Question](#question)
        - <span class="section-num">3.106.2</span> [Answer](#answer)
    - <span class="section-num">3.107</span> [Exercise 2.94: GCD of polynomials](#exercise-2-dot-94-gcd-of-polynomials)
        - <span class="section-num">3.107.1</span> [Question](#question)
        - <span class="section-num">3.107.2</span> [Answer](#answer)
    - <span class="section-num">3.108</span> [Exercise 2.95: a quirk in rational functions](#exercise-2-dot-95-a-quirk-in-rational-functions)
        - <span class="section-num">3.108.1</span> [Question](#question)
        - <span class="section-num">3.108.2</span> [Answer](#answer)
    - <span class="section-num">3.109</span> [Exercise 2.96: pseudodivision of polynomials](#exercise-2-dot-96-pseudodivision-of-polynomials)
        - <span class="section-num">3.109.1</span> [Text formulas](#text-formulas)
        - <span class="section-num">3.109.2</span> [Questions 1 and 2](#questions-1-and-2)
        - <span class="section-num">3.109.3</span> [Answers 1 and 2](#answers-1-and-2)
    - <span class="section-num">3.110</span> [Exercise 2.97: reducing terms of rational functions](#exercise-2-dot-97-reducing-terms-of-rational-functions)
        - <span class="section-num">3.110.1</span> [Questions 1 and 2](#questions-1-and-2)
        - <span class="section-num">3.110.2</span> [Answers 1 and 2](#answers-1-and-2)

</div>
<!--endtoc-->



## <span class="section-num">1</span> Introduction Notes {#introduction-notes}


### <span class="section-num">1.1</span> Text Foreword {#text-foreword}

This book centers on three areas: the human mind, collections of computer
programs, and the computer.

Every program is a model of a real or mental process, and these processes are at
any time only partially understood. We change these programs as our
understandings of these processes evolve.

Ensuring the correctness of programs becomes a Herculean task as complexity
grows. Because of this, it's important to make fundamentals that can be relied
upon to support larger structures.


### <span class="section-num">1.2</span> Preface, 1e {#preface-1e}

"Computer Science" isn't really about computers or science, in the same way that
geometry isn't really about measuring the earth ('geometry' translates to
'measurement of earth').

Programming is a medium for expressing ideas about methodology. For this reason,
programs should be written first for people to read, and second for machines to
execute.

The essential material for introductory programming is how to control complexity
when building programs.

Computer Science is about imperative knowledge, as opposed to declarative. This
can be called _procedural epistemology_.

**Declarative knowledge**
: _what is true_. For example: \\(\sqrt{x}\\) is the
    \\(y\\) such that \\(y^2 = x\\) and \\(y \geq 0\\)


**Imperative knowledge**
: _How to follow a process_. For example: to find an
    approximation to \\(\sqrt{x}\\), make a guess \\(G\\), improve the guess by
    averaging \\(G\\) and \\(x/G\\), keep improving until the guess is good enough.

<!--list-separator-->

1.  Techniques for controlling complexity

    Black-box abstraction
    : Encapsulating an operation so the details of it are
        irrelevant.

        The fixed point of a function \\(f()\\) is a value \\(y\\) such that \\(f(y) = y\\).
        Method for finding a fixed point: start with a guess for \\(y\\) and keep applying
        \\(f(y)\\) over and over until the result doesn't change very much.

        Define a box of the method for finding the fixed point of \\(f()\\).

        One way to find \\(\sqrt{x}\\) is to take our function for approaching a square
        root <span class="inline-src language-scheme" data-lang="scheme">`(lambda(guess target) (average guess (divide target guess)))`</span>, applying
        that to our method for finding a fixed point, and this creates a **procedure** to
        find a square root.

        Black-box abstraction

        1.  Start with primitive objects of procedures and data.
        2.  Combination: combine procedures with _composition_, combine data with
            _construction_ of compound data.
        3.  Abstraction: defining procedures and abstracting data. Capture common
            patterns by making high-order procedures composed of other procedures. Use
            data as procedures.


    Conventional interfaces
    : Agreed-upon ways of connecting things together.
        -   How do you make operations generalized?
        -   How do you make large-scale structure and modularity?
            -   **Object-oriented programming:** thinking of your structure as a society of
                discrete but interacting parts.
            -   **Operations on aggregates:** thinking of your structure as operating on a
                stream, comparable to signal processing. _(Needs clarification.)_


    Metalinguistic abstractions
    : Making new languages. This changes the way you
        interact with the system by letting you emphasize some parts and deemphasize
        other parts.


## <span class="section-num">2</span> Chapter 1: Building Abstractions with Procedures {#chapter-1-building-abstractions-with-procedures}

**Computational processes** are abstract 'beings' that inhabit computers. Their
evolution is directed by a pattern of rules called a **program**, and processes
manipulate other abstract things called **data**.

Master software engineers are able to organize programs so they can be
reasonably sure the resulting process performs the task intended, without
catastrophic consequences, and that any problems can be debugged.

Lisp's users have traditionally resisted attempts to select an "official"
version of the language, which has enabled Lisp to continually evolve.

There are powerful program-design techniques which rely on the ability to blur
the distinction between data and processes. Lisp enables these techniques by
allowing processes to be represented and manipulated as data.


### <span class="section-num">2.1</span> 1.1: The Elements of Programming {#1-dot-1-the-elements-of-programming}

A programming language isn't just a way to instruct a computer -- it's also a
framework for the programmer to organize their ideas. Thus it's important to
consider the means the language provides for combining ideas. Every powerful
language has three mechanisms for this:

**primitive expressions**
: the simplest entities the language is concerned with

**means of combination**
: how compound elements can be built from simpler ones

**means of abstraction**
: how which compound elements can be named and
    manipulated as units

In programming, we deal with **data** which is what we want to manipulate, and
**procedures** which are descriptions of the rules for manipulating the data.

A procedure has **formal parameters**. When the procedure is applied, the formal
parameters are replaced by the **arguments** it is being applied to. For example,
take the following code:

<a id="code-snippet--square"></a>
```scheme { linenos=true, linenostart=1 }
(define (square x)
  (* x x))
```

```scheme
<<square>>
(square 5)
```

<span class="inline-src language-scheme" data-lang="scheme">`x`</span> is the formal parameter and  <span class="inline-src language-scheme" data-lang="scheme">`5`</span> is the argument.


### <span class="section-num">2.2</span> 1.1.1: Expressions {#1-dot-1-dot-1-expressions}

The general form of Lisp is evaluating **combinations**, denoted by parenthesis,
in the form <span class="inline-src language-scheme" data-lang="scheme">`(operator operands)`</span>, where _operator_ is a procedure and
_operands_ are the 0 or more arguments to the operator.

Lisp uses **prefix notation**, which is not customary mathematical notation, but
provides several advantages.

1.  It supports procedures that take arbitrary numbers of arguments,
    i.e. <span class="inline-src language-scheme" data-lang="scheme">`(+ 1 2 3 4 5)`</span>.
2.  It's straightforward to nest combinations in other combinations.


### <span class="section-num">2.3</span> 1.1.3: Evaluating Combinations {#1-dot-1-dot-3-evaluating-combinations}

The evaluator can evaluate nested expressions recursively. **Tree accumulation**
is the process of evaluating nested combinations, "percolating" values upward.

The recursive evaluation of <span class="inline-src language-scheme" data-lang="scheme">`(* (+ 2 (* 4 6)) (+ 3 5 7))`</span> breaks down
into four parts:

{{< figure src="/ox-hugo/t_1-1-3.png" >}}


### <span class="section-num">2.4</span> 1.1.4: Compound Procedures {#1-dot-1-dot-4-compound-procedures}

We have identified the following in Lisp:

-   primitive data are numbers, primitive procedures are arithmetic operations
-   Operations can be combined by nesting combinations
-   Data and procedures can be abstracted by variable &amp; procedure definitions

Procedure definitions give a name to a compound procedure.

```scheme
(define (square x) (* x x)) ; to square something, multiply it by itself
; now it can be applied or used in other definitions:
(square 4) ; => 16

(define (sum-of-squares x y)
  (+ (square x) (square y)))
(sum-of-squares 3 4) ; => 25
```

Note how these compound procedures are used in the same way as primitive
procedures.


### <span class="section-num">2.5</span> 1.1.5: The Substitution Model for Procedure Application {#1-dot-1-dot-5-the-substitution-model-for-procedure-application}

To understand how the interpreter works, imagine it substituting the procedure
calls with the bodies of the procedure and its arguments.

```scheme
(* (square 3) (square 4))
; has the same results as
(* (* 3 3) (* 3 3))
```

This way of understanding procedure application is called the **substitution
model**. This model is to help you understand procedure substitution, and is
usually not how the interpreter actually works. This book will progress through
more intricate models of interpreters as it goes. This is the natural
progression when learning scientific phenomena, starting with a simple model,
and replace it with more refined models as the phenomena is examined in more
detail.

Evaluations can be done in different orders.

**Applicative order**
: evaluates the operator and operands, and then applies the

resulting procedure to the resulting arguments. In other words, reducing, then
expanding, then reducing.

**Normal order**
: substitutes expressions until it obtains an expression involving

only primitive operators, or until it can't substitute any further, and then
evaluates. This results in expanding the expression completely before doing any
reduction, which results in some repeated evaluations.

For all procedure applications that can be modeled using substitution,
applicative and normal order evaluation produce the same result. Normal order
becomes more complicated once dealing with procedures that can't be modeled by
substitution.

Lisp uses applicative order evaluation because it helps avoid repeated work and
other complications. But normal has its own advantages which will be explored in
Chapter 3 and 4.

```scheme
; Applicative evaluation
(f 5)
(sum-of-squares (+ a 1) (* a 2))
(sum-of-squares (+ 5 1) (* 5 2))
(sum-of-squares 6 10)
(+ (square x)(square y))
(+ (square 6)(square 10))
(+ (* 6 6)(* 10 10))
(+ 36 100)
136
; Normal evaluation
(f 5)
(sum-of-squares (+ a 1) (* a 2))
(sum-of-squares (+ 5 1) (* 5 2))
(+ (square (+ 5 1)) (square (* 5 2)))
(+ (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))
(+ (* 6 6) (* 10 10))
(+ 36 100)
136
```

(Extra-curricular clarification: Normal order delays evaluating arguments until
they're needed by a procedure, which is called lazy evaluation.)


### <span class="section-num">2.6</span> 1.1.6: Conditional Expressions and Predicates {#1-dot-1-dot-6-conditional-expressions-and-predicates}

An important aspect of programming is testing and branching depending on the
results of the test. `cond` tests **predicates**, and upon encountering one,
returns a **consequent**.

```scheme
(cond
     (predicate1 consequent1)
     ...
     (predicateN consequentN))
```

A shorter form of conditional:

```scheme
(if predicate consequent alternative)
```

If <span class="inline-src language-scheme" data-lang="scheme">`predicate`</span> is true, <span class="inline-src language-scheme" data-lang="scheme">`consequent`</span> is returned. Else,
<span class="inline-src language-scheme" data-lang="scheme">`alternative`</span> is returned.

Combining predicates:

```scheme
(and expression1 ... expressionN)
; if encounters false, stop eval and returns false.
(or expression1 ... expressionN)
; if encounters true, stop eval and return true. Else false.
(not expression)
; true is expression is false, false if expression is true.
```

A small clarification:

```scheme
(define A (* 5 5))
(define (D) (* 5 5))
A ; => 25
D ; => compound procedure D
(D) ; => 25 (result of executing procedure D)
```

Special forms bring more nuances into the substitution model mentioned
previously. For example, when evaluating an <span class="inline-src language-scheme" data-lang="scheme">`if`</span> expression, you
evaluate the predicate and, depending on the result, either evaluate the
**consequent** or the **alternative**. If you were evaluating in a standard manner,
the consequent and alternative would both be evaluated, rendering the
<span class="inline-src language-scheme" data-lang="scheme">`if`</span> expression ineffective.


### <span class="section-num">2.7</span> Exercise 1.1: Trying expressions {#exercise-1-dot-1-trying-expressions}


#### <span class="section-num">2.7.1</span> Question {#question}

Below is a sequence of expressions. What is the result printed by the
interpreter in response to each expression? Assume that the sequence is to be
evaluated in the order in which it is presented.


#### <span class="section-num">2.7.2</span> Answer {#answer}

```scheme { linenos=true, linenostart=1 }
10 ;; 10
(+ 5 3 4) ;; 12
(- 9 1) ;; 8
(/ 6 2) ;; 3
(+ (* 2 4) (- 4 6)) ;; 6
(define a 3) ;; a=3
(define b (+ a 1)) ;; b=4
(+ a b (* a b)) ;; 19
(= a b) ;; false
(if (and (> b a) (< b (* a b)))
    b
    a) ;; 4
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) ;; 16
(+ 2 (if (> b a) b a)) ;; 6
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) ;; 16
```


### <span class="section-num">2.8</span> Exercise 1.2: Prefix form {#exercise-1-dot-2-prefix-form}


#### <span class="section-num">2.8.1</span> Question {#question}

Translate the following expression into prefix form:
$$
  \frac{5 + 2 + (2 - 3 - (6 + \frac{4}{5})))}
            {3(6 - 2)(2 - 7)}
$$


#### <span class="section-num">2.8.2</span> Answer {#answer}

<a id="code-snippet--EX1-2"></a>
```scheme { linenos=true, linenostart=1 }
(/ (+ 5 2 (- 2 3 (+ 6 (/ 4 5))))
   (* 3 (- 6 2) (- 2 7)))
```

```text
1/75
```


### <span class="section-num">2.9</span> Exercise 1.3: Conditionals {#exercise-1-dot-3-conditionals}


#### <span class="section-num">2.9.1</span> Question {#question}

Define a procedure that takes three numbers as arguments and
returns the sum of the squares of the two larger numbers.


#### <span class="section-num">2.9.2</span> Answer {#answer}

<a id="code-snippet--EX1-3"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
(define (sum-square x y)
  (+ (square x) (square y)))
(define (square-2of3 a b c)
  (cond ((and (>= a b) (>= b c)) (sum-square a b))
        ((and (>= a b) (> c b)) (sum-square a c))
        (else (sum-square b c))))
```

```scheme { linenos=true, linenostart=1 }
<<EX1-3>>
<<try-these>>
 (try-these square-2of3 '(7 5 3)
                        '(7 3 5)
                        '(3 5 7))
```

| (7 5 3) | 74 |
|---------|----|
| (7 3 5) | 74 |
| (3 5 7) | 74 |


### <span class="section-num">2.10</span> Exercise 1.4: Compound expressions {#exercise-1-dot-4-compound-expressions}


#### <span class="section-num">2.10.1</span> Question {#question}

Observe that our model of evaluation allows for combinations whose operators are
compound expressions. Use this observation to describe the behavior of the
following procedure:

<a id="code-snippet--a-plus-abs-b"></a>
```scheme { linenos=true, linenostart=1 }
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
```


#### <span class="section-num">2.10.2</span> Answer {#answer}

This code accepts the variables <span class="inline-src language-scheme" data-lang="scheme">`a`</span> and <span class="inline-src language-scheme" data-lang="scheme">`b`</span>, and if
<span class="inline-src language-scheme" data-lang="scheme">`b`</span> is positive, it adds <span class="inline-src language-scheme" data-lang="scheme">`a`</span> and <span class="inline-src language-scheme" data-lang="scheme">`b`</span>. However, if
<span class="inline-src language-scheme" data-lang="scheme">`b`</span> is zero or negative, it subtracts them. This decision is made by
using the <span class="inline-src language-scheme" data-lang="scheme">`+`</span> and <span class="inline-src language-scheme" data-lang="scheme">`-`</span> procedures as the results of an if
expression, and then evaluating according to the results of that expression.
This is in contrast to a language like Python, which would do something like
this:

```python
if b > 0: a + b
else: a - b
```


### <span class="section-num">2.11</span> Exercise 1.5: Applicative vs normal-order evaluation {#exercise-1-dot-5-applicative-vs-normal-order-evaluation}


#### <span class="section-num">2.11.1</span> Question {#question}

Ben Bitdiddle has invented a test to determine whether the interpreter he is
faced with is using applicative-order evaluation or normal-order evaluation. He
defines the following two procedures:

```scheme { linenos=true, linenostart=1 }
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
```

Then he evaluates the expression:

```scheme { linenos=true, linenostart=1 }
(test 0 (p))
```

What behavior will Ben observe with an interpreter that uses applicative-order
evaluation?  What behavior will he observe with an interpreter that uses
normal-order evaluation?  Explain your answer.  (Assume that the evaluation
rule for the special form <span class="inline-src language-scheme" data-lang="scheme">`if`</span> is the same whether the interpreter is
using normal or applicative order: The predicate expression is evaluated first,
and the result determines whether to evaluate the consequent or the alternative
expression.)


#### <span class="section-num">2.11.2</span> Answer {#answer}

In either type of language, <span class="inline-src language-scheme" data-lang="scheme">`(define (p) (p))`</span> is an infinite loop.
However, a normal-order language will encounter the special form, return
<span class="inline-src language-scheme" data-lang="scheme">`0`</span>, and never evaluate <span class="inline-src language-scheme" data-lang="scheme">`(p)`</span>. An applicative-order language
evaluates the arguments to <span class="inline-src language-scheme" data-lang="scheme">`(test 0 (p))`</span>, thus triggering the
infinite loop.


### <span class="section-num">2.12</span> 1.1.7: Example: Square Roots by Newton's Method {#1-dot-1-dot-7-example-square-roots-by-newton-s-method}

Functions in the formal mathematical sense are **declarative knowledge**, while
procedures like in computer science are **imperative knowledge**.

Notice that the elements of the language that have been introduced so far are
sufficient for writing any purely numerical program, despite not having
introduced any looping constructs like `FOR` loops.


### <span class="section-num">2.13</span> 1.1.8: Procedures as Black-Box Abstractions {#1-dot-1-dot-8-procedures-as-black-box-abstractions}

Notice how the <span class="inline-src language-scheme" data-lang="scheme">`sqrt`</span> procedure is divided into other procedures,
which mirror the division of the square root problem into sub problems.

A procedure should accomplish an identifiable task, and be ready to be used as a
module in defining other procedures. This lets the programmer know how to use
the procedure while not needing to know the details of how it works.

Suppressing these details are particularly helpful:

Local names.
: A procedure user shouldn't need to know a procedure's choices
    of variable names. A formal parameter of a procedure whose name is irrelevant
    is called a **bound variable**. A procedure definition **binds** its parameters. A
    **free variable** isn't bound. The set of expressions in which a binding defines
    a name is the **scope** of that name.

Internal definitions and block structure.
: By nesting relevant definitions
    inside other procedures, you hide them from the global namespace. This nesting
    is called **block structure**. Nesting these definitions also allows relevant
    variables to be shared across procedures, which is called **lexical scoping**.


### <span class="section-num">2.14</span> Exercise 1.6: Special form evaluation {#exercise-1-dot-6-special-form-evaluation}


#### <span class="section-num">2.14.1</span> Text code {#text-code}

<a id="code-snippet--abs"></a>
```scheme { linenos=true, linenostart=1 }
(define (abs x)
  (if (< x 0)
      (- x)
      x))
```

<a id="code-snippet--average"></a>
```scheme { linenos=true, linenostart=1 }
(define (average x y)
  (/ (+ x y) 2))
```

<a id="code-snippet--txt-sqrt"></a>
```scheme { linenos=true, linenostart=1 }
<<average>>
(define (improve guess x)
  (average guess (/ x guess)))

<<square>>
<<abs>>
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
```


#### <span class="section-num">2.14.2</span> Question {#question}

Alyssa P. Hacker doesn't see why <span class="inline-src language-scheme" data-lang="scheme">`if`</span> needs to be provided as a
special form. "Why can't I just define it as an ordinary procedure in terms of
cond?" she asks. Alyssa's friend Eva Lu Ator claims this can indeed be done, and
she defines a new version of <span class="inline-src language-scheme" data-lang="scheme">`if`</span>:

```scheme { linenos=true, linenostart=1 }
(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
```

Eva demonstrates the program for Alyssa:

```scheme { linenos=true, linenostart=1 }
(new-if (= 2 3) 0 5)
;; => 5

(new-if (= 1 1) 0 5)
;; => 0
```

Delighted, Alyssa uses <span class="inline-src language-scheme" data-lang="scheme">`new-if`</span> to rewrite the square-root program:

```scheme { linenos=true, linenostart=1 }
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
```

What happens when Alyssa attempts to use this to compute square roots? Explain.


#### <span class="section-num">2.14.3</span> Answer {#answer}

Using Alyssa's <span class="inline-src language-scheme" data-lang="scheme">`new-if`</span> leads to an infinite loop because the
recursive call to <span class="inline-src language-scheme" data-lang="scheme">`sqrt-iter`</span> is evaluated before the actual call to
<span class="inline-src language-scheme" data-lang="scheme">`new-if`</span>. This is because <span class="inline-src language-scheme" data-lang="scheme">`if`</span> and <span class="inline-src language-scheme" data-lang="scheme">`cond`</span> are
special forms that change the way evaluation is handled; whichever branch is
chosen leaves the other branches unevaluated.


### <span class="section-num">2.15</span> Exercise 1.7: `sqrt` with small and large numbers {#exercise-1-dot-7-sqrt-with-small-and-large-numbers}


#### <span class="section-num">2.15.1</span> Text {#text}

<a id="code-snippet--mean-square"></a>
```scheme { linenos=true, linenostart=1 }
(define (mean-square x y)
  (average (square x) (square y)))
```


#### <span class="section-num">2.15.2</span> Question {#question}

The <span class="inline-src language-scheme" data-lang="scheme">`good-enough?`</span> test used in computing square roots will not be
very effective for finding the square roots of very small numbers. Also, in real
computers, arithmetic operations are almost always performed with limited
precision. This makes our test inadequate for very large numbers. Explain these
statements, with examples showing how the test fails for small and large
numbers. An alternative strategy for implementing <span class="inline-src language-scheme" data-lang="scheme">`good-enough?`</span> is to
watch how <span class="inline-src language-scheme" data-lang="scheme">`guess`</span> changes from one iteration to the next and to stop
when the change is a very small fraction of the guess. Design a square-root
procedure that uses this kind of end test. Does this work better for small and
large numbers?


#### <span class="section-num">2.15.3</span> Diary {#diary}

<!--list-separator-->

1.  Solving

    My original answer was this, which compares the previous iteration until the new
    and old are within an arbitrary \\(dx\\).

    <a id="code-snippet--inferior-good-enough"></a>
    ```scheme { linenos=true, linenostart=1 }
    <<txt-sqrt>>
    (define (inferior-good-enough? guess lastguess)
      (<=
       (abs (-
             (/ lastguess guess)
             1))
       0.0000000000001)) ; dx
    (define (new-sqrt-iter guess x lastguess) ;; Memory of previous value
      (if (inferior-good-enough? guess lastguess)
          guess
          (new-sqrt-iter (improve guess x) x guess)))
    (define (new-sqrt x)
      (new-sqrt-iter 1.0 x 0))
    ```

    This solution can correctly find small and large numbers:

    ```scheme { linenos=true, linenostart=1 }
    <<inferior-good-enough>>
    (new-sqrt 10000000000000)
    ```

    ```text
    3162277.6601683795
    ```

    <a id="code-snippet--EX1-7-t2"></a>
    ```scheme { linenos=true, linenostart=1 }
    <<try-these>>
    <<inferior-good-enough>>
    (try-these new-sqrt '(0.01 0.0001 0.000001 0.00000001 0.0000000001))
    ```

    | 0.01   | 0.1                   |
    |--------|-----------------------|
    | 0.0001 | 0.01                  |
    | 1e-06  | 0.001                 |
    | 1e-08  | 9.999999999999999e-05 |
    | 1e-10  | 9.999999999999999e-06 |

    However, I found this solution online that isn't just simpler but automatically
    reaches the precision limit of the system:

    <a id="code-snippet--new-good-enough"></a>
    ```scheme { linenos=true, linenostart=1 }
    <<txt-sqrt>>
    (define (best-good-enough? guess x)
       (= (improve guess x) guess))
    ```

<!--list-separator-->

2.  Imroving `sqrt` by avoiding extra `improve` call

    <!--list-separator-->

    1.  Non-optimized

        ```scheme { linenos=true, linenostart=1 }
        (use-modules (ice-9 format))
        (load "../mattbench.scm")
        (define (average x y)
          (/ (+ x y) 2))
        (define (improve guess x)
          (average guess (/ x guess)))
        (define (good-enough? guess x)
           (= (improve guess x) guess)) ;; improve call 1
        (define (sqrt-iter guess x)
          (if (good-enough? guess x)
              guess
              (sqrt-iter (improve guess x) x))) ;; call 2
        (define (sqrt x)
          (sqrt-iter 1.0 x))
        (newline)
        (display (mattbench (lambda() (sqrt 69420)) 400000000))
        (newline)
        ;; 4731.30 <- Benchmark results
        ```

    <!--list-separator-->

    2.  Optimized

        ```scheme { linenos=true, linenostart=1 }
        (use-modules (ice-9 format))
        (load "../mattbench.scm")
        (define (average x y)
          (/ (+ x y) 2))
        (define (improve guess x)
          (average guess (/ x guess)))
        (define (good-enough? guess nextguess x)
          (= nextguess guess))
        (define (sqrt-iter guess x)
          (let ((nextguess (improve guess x)))
            (if (good-enough? guess nextguess x)
                guess
                (sqrt-iter nextguess x))))
        (define (sqrt x)
          (sqrt-iter 1.0 x))
        (newline)
        (display (mattbench (lambda() (sqrt 69420)) 400000000))
        (newline)
        ```

    <!--list-separator-->

    3.  Benchmark results

        | Unoptimized | 4731.30 |
        |-------------|---------|
        | Optimized   | 2518.44 |


#### <span class="section-num">2.15.4</span> Answer {#answer}

The current method has decreasing accuracy with smaller numbers. Notice the
steady divergence from correct answers here (should be decreasing powers of
0.1):

<a id="code-snippet--EX1-7-t1"></a>
```scheme { linenos=true, linenostart=1 }
<<txt-sqrt>>
<<try-these>>
(try-these sqrt 0.01 0.0001 0.000001 0.00000001 0.0000000001)
```

| 0.01   | 0.10032578510960605  |
|--------|----------------------|
| 0.0001 | 0.03230844833048122  |
| 1e-06  | 0.031260655525445276 |
| 1e-08  | 0.03125010656242753  |
| 1e-10  | 0.03125000106562499  |

And for larger numbers, an infinite loop will eventually be reached. \\(10^{12}\\)
can resolve, but \\(10^{13}\\) cannot.

```scheme { linenos=true, linenostart=1 }
<<txt-sqrt>>
(sqrt 1000000000000)
```

```text
1000000.0
```

So, my definition of <span class="inline-src language-scheme" data-lang="scheme">`sqrt`</span>:

<a id="code-snippet--sqrt"></a>
```scheme { linenos=true, linenostart=1 }
<<average>>
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? guess x)
   (= (improve guess x) guess))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (sqrt x)
  (sqrt-iter 1.0 x))
```

<a id="code-snippet--EX1-7-t3"></a>
```scheme { linenos=true, linenostart=1 }
<<try-these>>
<<sqrt>>
(try-these sqrt '(0.01 0.0001 0.000001 0.00000001 0.0000000001))
```

| 0.01   | 0.1                   |
|--------|-----------------------|
| 0.0001 | 0.01                  |
| 1e-06  | 0.001                 |
| 1e-08  | 9.999999999999999e-05 |
| 1e-10  | 9.999999999999999e-06 |


### <span class="section-num">2.16</span> Exercise 1.8: Cube roots {#exercise-1-dot-8-cube-roots}


#### <span class="section-num">2.16.1</span> Question {#question}

Newton's method for cube roots is based on the fact that if \\(y\\) is an
approximation to the cube root of \\(x\\), then a better approximation is given by
the value

$$
\frac{\frac{x}{y^2} + 2y}{3}
$$

Use this formula to implement a cube-root procedure analogous to the
<span class="inline-src language-scheme" data-lang="scheme">`square-root`</span> procedure. (In [1.3.4 Procedures as Returned Values](#1-dot-3-dot-4-procedures-as-returned-values) we
will see how to implement Newton's method in general as an abstraction of these
square-root and cube-root procedures.)


#### <span class="section-num">2.16.2</span> Diary {#diary}

My first attempt works, but needs an arbitrary limit to stop infinite loops:

<a id="code-snippet--EX1-8-A1"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
<<try-these>>
(define (cb-good-enough? guess x)
  (= (cb-improve guess x) guess))
(define (cb-improve guess x)
  (/
   (+
    (/ x (square guess))
    (* guess 2))
   3))
(define (cbrt-iter guess x counter)
  (if (or (cb-good-enough? guess x) (> counter 100))
      guess
      (begin
        (cbrt-iter (cb-improve guess x) x (+ 1 counter)))))
(define (cbrt x)
  (cbrt-iter 1.0 x 0))

(try-these cbrt 7 32 56 100)
```

| 7   | 1.912931182772389 |
|-----|-------------------|
| 32  | 3.174802103936399 |
| 56  | 3.825862365544778 |
| 100 | 4.641588833612779 |

However, this will hang on an infinite loop when trying to run <span class="inline-src language-scheme" data-lang="scheme">`(cbrt 100)`</span>. I speculate it's a floating point precision issue with the "improve"
algorithm. So to avoid it I'll just keep track of the last guess and stop
improving when there's no more change occurring. Also while researching I
discovered that (again due to floating point) <span class="inline-src language-scheme" data-lang="scheme">`(cbrt -2)`</span> loops
forever unless you initialize your guess with a slightly different value, so
let's do 1.1 instead.


#### <span class="section-num">2.16.3</span> Answer {#answer}

<a id="code-snippet--cbrt"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
(define (cb-good-enough? nextguess guess lastguess x)
  (or (= nextguess guess)
      (= nextguess lastguess)))
(define (cb-improve guess x)
  (/
   (+
    (/ x (square guess))
    (* guess 2))
   3))
(define (cbrt-iter guess lastguess x)
  (define nextguess (cb-improve guess x))
  (if (cb-good-enough? nextguess guess lastguess x)
      nextguess
      (cbrt-iter nextguess guess x)))
(define (cbrt x)
  (cbrt-iter 1.1 9999 x))
```

```scheme { linenos=true, linenostart=1 }
<<cbrt>>
<<try-these>>
(try-these cbrt 7 32 56 100 -2)
```

| 7   | 1.912931182772389   |
|-----|---------------------|
| 32  | 3.174802103936399   |
| 56  | 3.825862365544778   |
| 100 | 4.641588833612779   |
| -2  | -1.2599210498948732 |


### <span class="section-num">2.17</span> 1.2: Procedures and the Processes They Generate {#1-dot-2-procedures-and-the-processes-they-generate}

Procedures define the **local evolution** of processes. We would like to be able
to make statements about the **global** behavior of a process.


### <span class="section-num">2.18</span> 1.2.1: Linear Recursion and Iteration {#1-dot-2-dot-1-linear-recursion-and-iteration}

Consider these two procedures for obtaining factorials:

```scheme
(define (factorial-recursion n)
  (if (= n 1)
      1
      (* n
         (factorial-recursion (- n 1)))))

(define (factorial-iteration n)
  (define (fact-iter product counter max-count)
      (if (> counter max-count)
          product
          (fact-iter
                    (* counter product)
                    (+ counter 1)
                    max-count)))

  (fact-iter 1 1 n))
```

These two procedures reach the same answers, but form very different processes.
The <span class="inline-src language-scheme" data-lang="scheme">`factorial-recursion`</span> version takes more computational **time** and
**space** to evaluate, by building up a chain of deferred operations. This is a
**recursive process**. As the number of steps needed to operate, and the amount of
info needed to keep track of these operations, both grow linearly with \\(n\\),
this is a **linear recursive process**.

The second version forms an **iterative process**. Its state can be summarized
with a fixed number of state variables. The number of steps required grow
linearly with \\(n\\), so this is a **linear iterative process**.

recursive procedure
: is a procedure whose definition refers to itself.

recursive process
: is a process that evolves recursively.

So <span class="inline-src language-scheme" data-lang="scheme">`fact-iter`</span> is a recursive _procedure_ that generates an iterative
_process_.

Many implementations of programming languages interpret all recursive procedures
in a way that consume memory that grows with the number of procedure calls, even
when the process is essentially iterative. These languages instead use looping
constructs such as <span class="inline-src language-scheme" data-lang="scheme">`do`</span>, <span class="inline-src language-scheme" data-lang="scheme">`repeat`</span>, <span class="inline-src language-scheme" data-lang="scheme">`for`</span>, etc.
Implementations that execute iterative processes in constant space, even if the
procedure is recursive, are **tail-recursive**.


### <span class="section-num">2.19</span> Exercise 1.9: Peano counting and recursion {#exercise-1-dot-9-peano-counting-and-recursion}


#### <span class="section-num">2.19.1</span> Question {#question}

Each of the following two procedures defines a method for adding two positive
integers in terms of the procedures <span class="inline-src language-scheme" data-lang="scheme">`inc`</span>, which increments its
argument by 1, and <span class="inline-src language-scheme" data-lang="scheme">`dec`</span>, which decrements its argument by 1.

```scheme { linenos=true, linenostart=1 }
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
```

Using the substitution model, illustrate the process generated by each procedure
in evaluating <span class="inline-src language-scheme" data-lang="scheme">`(+ 4 5)`</span>. Are these processes iterative or recursive?


#### <span class="section-num">2.19.2</span> Answer {#answer}

The first procedure is recursive, while the second is iterative though
tail-recursion.

<!--list-separator-->

1.  recursive procedure

    ```scheme { linenos=true, linenostart=1 }
    (+ 4 5)
    (inc (+ 3 5))
    (inc (inc (+ 2 5)))
    (inc (inc (inc (+ 1 5))))
    (inc (inc (inc (inc (+ 0 5)))))
    (inc (inc (inc (inc 5))))
    (inc (inc (inc 6)))
    (inc (inc 7))
    (inc 8)
    9
    ```

<!--list-separator-->

2.  iterative procedure

    ```scheme { linenos=true, linenostart=1 }
    (+ 4 5)
    (+ 3 6)
    (+ 2 7)
    (+ 1 8)
    (+ 0 9)
    9
    ```


### <span class="section-num">2.20</span> Exercise 1.10: Ackermann's Function {#exercise-1-dot-10-ackermann-s-function}


#### <span class="section-num">2.20.1</span> Question {#question}

The following procedure computes a mathematical function called Ackermann's
function.

<a id="code-snippet--ackermann"></a>
```scheme { linenos=true, linenostart=1 }
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
```

What are the values of the following expressions?

```scheme { linenos=true, linenostart=1 }
(A 1 10)
(A 2 4)
(A 3 3)
```

| (1 10) | 1024  |
|--------|-------|
| (2 4)  | 65536 |
| (3 3)  | 65536 |

<a id="code-snippet--EX1-10-defs"></a>
```scheme { linenos=true, linenostart=1 }
<<ackermann>>
(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))
```

Give concise mathematical definitions for the functions computed by the
procedures <span class="inline-src language-scheme" data-lang="scheme">`f`</span>, <span class="inline-src language-scheme" data-lang="scheme">`g`</span>, and <span class="inline-src language-scheme" data-lang="scheme">`h`</span> for positive integer
values of \\(n\\). For example, <span class="inline-src language-scheme" data-lang="scheme">`(k n)`</span> computes \\(5n^2\\).


#### <span class="section-num">2.20.2</span> Answer {#answer}

<!--list-separator-->

1.  `f`

    ```scheme { linenos=true, linenostart=1 }
    <<try-these>>
    <<EX1-10-defs>>
    (try-these f 1 2 3 10 15 20)
    ```

    | 1  | 2  |
    |----|----|
    | 2  | 4  |
    | 3  | 6  |
    | 10 | 20 |
    | 15 | 30 |
    | 20 | 40 |

    $$
    f(n)=2n
    $$

<!--list-separator-->

2.  `g`

    ```scheme { linenos=true, linenostart=1 }
    <<try-these>>
    <<EX1-10-defs>>
    (try-these g 1 2 3 4 5 6 7 8)
    ```

    | 1 | 2   |
    |---|-----|
    | 2 | 4   |
    | 3 | 8   |
    | 4 | 16  |
    | 5 | 32  |
    | 6 | 64  |
    | 7 | 128 |
    | 8 | 256 |

    $$
    g(n)=2^n
    $$

<!--list-separator-->

3.  `h`

    ```scheme { linenos=true, linenostart=1 }
    <<try-these>>
    <<EX1-10-defs>>
    (try-these h 1 2 3 4)
    ```

    | 1 | 2     |
    |---|-------|
    | 2 | 4     |
    | 3 | 16    |
    | 4 | 65536 |

    It took a while to figure this one out, just because I didn't know the term.
    This is repeated exponentiation. This operation is to exponentiation, what
    exponentiation is to multiplication. It's called either _tetration_ or _hyper-4_
    and has no formal notation, but two common ways would be these:

    $$
    h(n)=2 \uparrow\uparrow n
    $$
    $$
    h(n)={}^{n}2
    $$


### <span class="section-num">2.21</span> 1.2.2: Tree Recursion {#1-dot-2-dot-2-tree-recursion}

Consider a recursive procedure for computing Fibonacci numbers:

```scheme
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))
```

The resulting process splits into two with every iteration, creating a tree of
computations, many of which are duplicates of previous computations. This kind
of pattern is called **tree-recursion**. However, this one is quite inefficient.
The time and space required grows exponentially with the number of iterations
requested.

Instead, it makes much more sense to start from `Fib(1) ~ 1` and `Fib(0) ~ 0`
and iterate upwards to the desired value. This only requires a linear number of
steps relative to the input.

```scheme
(define (fib n)
  (fib-iter 1 0 n))
(define (fib-iter a b count)
  (if (= count 0) b (fib-iter (+ a b) a (- count 1))))
```

However, notice that the inefficient tree-recursive version is a fairly
straightforward translation of the Fibonacci sequence's definition, while the
iterative version required redefining the process as an iteration with three
variables.


#### <span class="section-num">2.21.1</span> Example: Counting change {#example-counting-change}

I should come back and try to make the "better algorithm" suggested.


### <span class="section-num">2.22</span> Exercise 1.11: More recursion vs iteration {#exercise-1-dot-11-more-recursion-vs-iteration}


#### <span class="section-num">2.22.1</span> Question {#question}

A function \\(f\\) is defined by the rule that:
$$
f(n)=n \text{ if } n<3
$$
$$
\text{ and }
$$
$$
f(n)=f(n-1)+2f(n-2)+3f(n-3) \text{ if } n \geq 3
$$

Write a procedure that computes \\(f\\) by means of a recursive process. Write a
procedure that computes \\(f\\) by means of an iterative process.


#### <span class="section-num">2.22.2</span> Answer {#answer}

<!--list-separator-->

1.  Recursive

    <a id="code-snippet--EX1-11-fr"></a>
    ```scheme { linenos=true, linenostart=1 }
    (define (fr n)
      (if (< n 3)
          n
          (+      (fr (- n 1))
             (* 2 (fr (- n 2)))
             (* 3 (fr (- n 3))))))
    ```

    ```scheme { linenos=true, linenostart=1 }
    <<try-these>>
    <<EX1-11-fr>>
    (try-these fr 1 3 5 10)
    ```

    | 1  | 1    |
    |----|------|
    | 3  | 4    |
    | 5  | 25   |
    | 10 | 1892 |

<!--list-separator-->

2.  Iterative

    <!--list-separator-->

    1.  Attempt 1

        <a id="code-snippet--EX1-11-fi"></a>
        ```scheme { linenos=true, linenostart=1 }
        ;; This seems like it could be better
        (define (fi n)
          (define (formula l)
            (let ((a (car l))
                   (b (cadr l))
                   (c (caddr l)))
              (+ a
                 (* 2 b)
                 (* 3 c))))
          (define (iter l i)
            (if (= i n)
                (car l)
                (iter (cons (formula l) l)
                      (+ 1 i))))
          (if (< n 3)
              n
              (iter '(2 1 0) 2)))
        ```

        ```scheme { linenos=true, linenostart=1 }
        <<try-these>>
        <<EX1-11-fi>>
        (try-these fi 1 3 5 10)
        ```

        | 1  | 1    |
        |----|------|
        | 3  | 4    |
        | 5  | 25   |
        | 10 | 1892 |

        It works but it seems wasteful.

    <!--list-separator-->

    2.  Attempt 2

        <a id="code-snippet--EX1-11-fi2"></a>
        ```scheme { linenos=true, linenostart=1 }
        (define (fi2 n)
          (define (formula a b c)
              (+ a
                 (* 2 b)
                 (* 3 c)))
          (define (iter a b c i)
            (if (= i n)
                a
                (iter (formula a b c)
                      a
                      b
                      (+ 1 i))))
          (if (< n 3)
              n
              (iter 2 1 0 2)))
        ```

        ```scheme { linenos=true, linenostart=1 }
        <<try-these>>
        <<EX1-11-fi2>>
        (try-these fi2 1 3 5 10)
        ```

        | 1  | 1    |
        |----|------|
        | 3  | 4    |
        | 5  | 25   |
        | 10 | 1892 |

        I like that better.


### <span class="section-num">2.23</span> Exercise 1.12: Pascal's Triangle {#exercise-1-dot-12-pascal-s-triangle}


#### <span class="section-num">2.23.1</span> Question {#question}

The following pattern of numbers is called Pascal's triangle.

```text
        1
      1   1
    1   2   1
  1   3   3   1
1   4   6   4   1
      . . .
```

The numbers at the edge of the triangle are all 1, and each number inside the
triangle is the sum of the two numbers above it. Write a procedure that
computes elements of Pascal's triangle by means of a recursive process.


#### <span class="section-num">2.23.2</span> Answer {#answer}

I guess I'll rotate the triangle 45 degrees to make it the corner of an
infinite spreadsheet.

<a id="code-snippet--pascal-rec"></a>
```scheme { linenos=true, linenostart=1 }
(define (pascal x y)
  (if (or (= x 0)
          (= y 0))
      1
      (+ (pascal (- x 1) y)
         (pascal x (- y 1)))))
```

```scheme { linenos=true, linenostart=1 }
<<try-these>>
<<pascal-rec>>
(let ((l (iota 8)))
  (map (lambda (row)
         (map (lambda (xy)
                (apply pascal xy))
              row))
       (map (lambda (x)
              (map (lambda (y)
                     (list x y))
                   l))
            l)))
```

| 1 | 1 | 1  | 1   | 1   | 1   | 1    | 1    |
|---|---|----|-----|-----|-----|------|------|
| 1 | 2 | 3  | 4   | 5   | 6   | 7    | 8    |
| 1 | 3 | 6  | 10  | 15  | 21  | 28   | 36   |
| 1 | 4 | 10 | 20  | 35  | 56  | 84   | 120  |
| 1 | 5 | 15 | 35  | 70  | 126 | 210  | 330  |
| 1 | 6 | 21 | 56  | 126 | 252 | 462  | 792  |
| 1 | 7 | 28 | 84  | 210 | 462 | 924  | 1716 |
| 1 | 8 | 36 | 120 | 330 | 792 | 1716 | 3432 |

The test code was much harder to write than the actual solution.


### <span class="section-num">2.24</span> Exercise 1.13: Proving Fibonacci approximation <span class="tag"><span class="optional">optional</span></span> {#exercise-1-dot-13-proving-fibonacci-approximation}


#### <span class="section-num">2.24.1</span> Question {#question}

Prove that \\(\text{Fib}(n)\\) is the closest integer to
\\(\frac\Phi^n}{\sqrt{5}}\\) where \\(\Phi\\) is \\(\frac{1 + \sqrt{5}}{2}\\). Hint: let
\\(\Upsilon = \frac{1 - \sqrt{5}}{2}\\). Use induction and the definition of the
Fibonacci numbers to prove that

$$
 \text{Fib}(n) = \frac{\Phi^n - \Upsilon^n}{\sqrt{5}}
$$


#### <span class="section-num">2.24.2</span> Answer {#answer}

I don't know how to write a proof yet, but I can make functions to
demonstrate it.

<!--list-separator-->

1.  Fibonacci number generator

    <a id="code-snippet--fib-iter"></a>
    ```scheme { linenos=true, linenostart=1 }
    (define (fib-iter n)
      (define (iter i a b)
        (if (= i n)
            b
        (iter (+ i 1)
              b
              (+ a b))))
      (if (<= n 2)
          1
          (iter 2 1 1)))
    ```

<!--list-separator-->

2.  Various algorithms relating to the question

    <a id="code-snippet--fib-phi"></a>
    ```scheme { linenos=true, linenostart=1 }
    <<sqrt>>
    (define sqrt5
      (sqrt 5))
    (define phi
      (/ (+ 1 sqrt5) 2))
    (define upsilon
      (/ (- 1 sqrt5) 2))
    (define (fib-phi n)
      (/ (- (expt phi n)
            (expt upsilon n))
         sqrt5))
    ```

    <a id="code-snippet--1-13-tab"></a>
    ```scheme { linenos=true, linenostart=1 }
    (use-srfis '(1))
    <<fib-iter>>
    <<fib-phi>>
    <<try-these>>

    (let* ((vals (drop (iota 21) 10))
           (fibs (map fib-iter vals))
           (approx (map fib-phi vals)))
      (zip vals fibs approx))
    ```

    | 10 | 55   | 54.99999999999999  |
    |----|------|--------------------|
    | 11 | 89   | 89.0               |
    | 12 | 144  | 143.99999999999997 |
    | 13 | 233  | 232.99999999999994 |
    | 14 | 377  | 377.00000000000006 |
    | 15 | 610  | 610.0              |
    | 16 | 987  | 986.9999999999998  |
    | 17 | 1597 | 1596.9999999999998 |
    | 18 | 2584 | 2584.0             |
    | 19 | 4181 | 4181.0             |
    | 20 | 6765 | 6764.999999999999  |

    You can see they follow closely. Graphing the differences, it's just
    an exponential curve at very low values, presumably following the
    exponential increase of the Fibonacci sequence itself.

    {{< figure src="/ox-hugo/1-13.png" >}}


### <span class="section-num">2.25</span> 1.2.3: Orders of Growth {#1-dot-2-dot-3-orders-of-growth}

An **order of growth** gives you a gross measure of the resources required by a
process as its inputs grow larger.

Let \\(n\\) be a parameter for the size of a problem, and \\(R(n)\\) be the amount
of resources required for size \\(n\\). \\(R(n)\\) has order of growth
\\(\Theta(f(n))\\)

For example:

\\(\Theta(1)\\)
: is constant, not growing regardless of input size.

\\(\Theta(n)\\)
: is growth 1-to-1 proportional to the input size.

Some algorithms we've already seen:

Linear recursive
: is time and space \\(\Theta(n)\\)

Iterative
: is time \\(\Theta(n)\\) space \\(\Theta(1)\\)

Tree-recursive
: means in general, time is proportional to the number of
    nodes, space is proportional to the depth of the tree. In the Fibonacci
    algorithm example, \\(\Theta(n)\\) and time \\(\Theta(\Upsilon^{n})\\) where
    \\(\Upsilon\\) is the golden ratio \\(\frac{1 + \sqrt{5}}{2}\\)

Orders of growth are very crude descriptions of process behaviors, but they are
useful in indicating how a process will change with the size of the problem.


### <span class="section-num">2.26</span> Exercise 1.14: `count-change` {#exercise-1-dot-14-count-change}


#### <span class="section-num">2.26.1</span> Text {#text}

Below is the default version of the <span class="inline-src language-scheme" data-lang="scheme">`count-change`</span> function. I'll be
aggressively modifying it in order to get a graph out of it.

<a id="code-snippet--count-change"></a>
```scheme { linenos=true, linenostart=1 }
(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0)
             (= kinds-of-coins 0))
         0)
        (else
         (+ (cc amount (- kinds-of-coins 1))
            (cc (- amount (first-denomination
                           kinds-of-coins))
                kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))
```


#### <span class="section-num">2.26.2</span> Question A: Draw the tree {#question-a-draw-the-tree}

Draw the tree illustrating the process generated by the <span class="inline-src language-scheme" data-lang="scheme">`count-change`</span>
procedure of [1.2.2: Tree Recursion](#1-dot-2-dot-2-tree-recursion) in making change for 11 cents.


#### <span class="section-num">2.26.3</span> Answer {#answer}

I want to generate this graph algorithmically.

<a id="code-snippet--count-change-graphviz"></a>
```scheme { linenos=true, linenostart=1 }
;; cursed global
(define bubblecounter 0)
;; Returns # of ways change can be made
;; "Helper" for (cc)
(define (count-change amount)
  (display "digraph {\n") ;; start graph
  (cc amount 5 0)
  (display "}\n") ;; end graph
  (set! bubblecounter 0))

;; GraphViz output
;; Derivative: https://stackoverflow.com/a/14806144
(define (cc amount kinds-of-coins oldbubble)
  (let ((recur (lambda (new-amount new-kinds)
                 (begin
                   (display "\"") ;; Source bubble
                   (display `(,oldbubble ,amount ,kinds-of-coins))
                   (display "\"")
                   (display " -> ") ;; arrow pointing from parent to child
                   (display "\"") ;; child bubble
                   (display `(,bubblecounter ,new-amount ,new-kinds))
                   (display "\"")
                   (display "\n")
                   (cc new-amount new-kinds bubblecounter)))))
    (set! bubblecounter (+ bubblecounter 1))
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= kinds-of-coins 0)) 0)
          (else (+
                 (recur amount (- kinds-of-coins 1))
                 (recur (- amount
                           (first-denomination kinds-of-coins))
                        kinds-of-coins))))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))
```

I'm not going to include the full printout of the <span class="inline-src language-scheme" data-lang="scheme">`(count-change 11)`</span>,
here's an example of what this looks like via <span class="inline-src language-scheme" data-lang="scheme">`1`</span>.

<a id="code-snippet--count-change-test"></a>
```scheme { linenos=true, linenostart=1 }
<<count-change-graphviz>>
(count-change 1)
```

```dot
digraph {
"(0 1 5)" -> "(1 1 4)"
"(1 1 4)" -> "(2 1 3)"
"(2 1 3)" -> "(3 1 2)"
"(3 1 2)" -> "(4 1 1)"
"(4 1 1)" -> "(5 1 0)"
"(4 1 1)" -> "(6 0 1)"
"(3 1 2)" -> "(7 -4 2)"
"(2 1 3)" -> "(8 -9 3)"
"(1 1 4)" -> "(9 -24 4)"
"(0 1 5)" -> "(10 -49 5)"
}
```

{{< figure src="/ox-hugo/cc-test.png" >}}

So, the graph of <span class="inline-src language-scheme" data-lang="scheme">`(count-change 11)`</span> is:

{{< figure src="/ox-hugo/cc-11.png" >}}


#### <span class="section-num">2.26.4</span> Question B: Analyzing process growth {#question-b-analyzing-process-growth}

What are the orders of growth of the space and number of steps used by this
process as the amount to be changed increases?


#### <span class="section-num">2.26.5</span> Answer B {#answer-b}

Let's look at this via the number of function calls needed for value
<span class="inline-src language-scheme" data-lang="scheme">`n`</span>. Instead of returning an integer, I'll return a pair where
<span class="inline-src language-scheme" data-lang="scheme">`car`</span> is the number of ways to count change, and <span class="inline-src language-scheme" data-lang="scheme">`cdr`</span> is
the number of function calls that have occurred down that branch of the tree.

<a id="code-snippet--cc-calls"></a>
```scheme { linenos=true, linenostart=1 }
(define (count-calls amount)
  (cc-calls amount 5))

(define (cc-calls amount kinds-of-coins)
  (cond ((= amount 0) '(1 . 1))
        ((or (< amount 0)
             (= kinds-of-coins 0))
         '(0 . 1))
        (else
         (let ((a (cc-calls amount (- kinds-of-coins 1)))
               (b (cc-calls (- amount (first-denomination
                                 kinds-of-coins))
                      kinds-of-coins)))
           (cons (+ (car a)
                    (car b))
                 (+ 1
                    (cdr a)
                    (cdr b)))))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))
```

<a id="code-snippet--cc-calls-100"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
<<cc-calls>>
(let* ((vals (drop (iota 101) 1))
       (mine (map count-calls vals)))
  (zip vals (map car mine) (map cdr mine)))
```

{{< figure src="/ox-hugo/cc-100.png" >}}

I believe the space to be \\(\Theta(n+d)\\) as the function calls count down the
denominations before counting down the change. However I notice most answers
describe \\(\Theta(n)\\) instead, maybe I'm being overly pedantic and getting the
wrong answer.

My issues came finding the time. The book describes the meaning and properties
of \\(\Theta\\) notation in [Section 1.2.3](http://sarabander.github.io/sicp/html/1_002e2.xhtml#g_t1_002e2_002e3). However, my lack of formal math
education made realizing the significance of this passage difficult. For one, I
didn't understand that \\(k\_{1}f(n) \leq R(n) \leq k\_{2}f(n)\\) means "you can
find the \\(\Theta\\) by proving that a graph of the algorithm's resource usage is
bounded by two identical functions multiplied by constants." So, the graph of
resource usage for an algorithm with \\(\Theta(n^{2})\\) will by bounded by lines
of \\(n^{2} \times some constant\\), the top boundary's constant being larger than
the small boundary. These are arbitrarily chosen constants, you're just proving
that the function behaves the way you think it does.

Overall, finding the \\(\Theta\\) and \\(\Omega\\) and \\(O\\) notations (they are all
different btw!) is about aggressively simplifying to make a very general
statement about the behavior of the algorithm.

I could tell that a "correct" way to find the \\(\Theta\\) would be to make a
formula which describes the algorithm's function calls for given input and
denominations. This is one of the biggest time sinks, although I had a lot of
fun and learned a lot. In the end, with some help from Jach in a Lisp Discord, I
had the following formula:

$$
\sum\_{i=1}^{ceil(n / val(d))} T(n - val(d)\*i, d)
$$

But I wasn't sure where to go from here. The graphs let me see some interesting
trends, though I didn't get any closer to an answer in the process.

By reading on other websites, I knew that you could find \\(\Theta\\) by obtaining
a formula for \\(R(n)\\) and removing constants to end up with a term of interest.
For example, if your algorithm's resource usage is \\(\frac{n^{2} + 7n}{5}\\),
this demonstrates \\(\Theta(n^{2})\\). So I know a formula **without** a \\(\sum\\)
would give me the answer I wanted. It didn't occur to me that it might be
possible to use calculus to remove the \\(\sum\\) from the equation. At this point
I knew I was stuck and decided to look up a guide.

After seeing a few solutions that I found somewhat confusing, I landed on [this
awesome article from Codology.net](https://codology.net/post/sicp-solution-exercise-1-14/)[^fn:1]. They show how you can
remove the summation, and proposed this equation for count-change with 5
denominations:

$$
T(n,5)=\frac n{50}+1+\sum\_{i=0}^{n/50}T(n-50i,1)
$$

Which, when expanded and simplified, demonstrates \\(\Theta(n^{5})\\) for 5
denominations.

Overall I'm relieved that I wasn't entirely off, given I haven't done math work
like this since college. It's inspired me to restart my remedial math courses, I
don't think I really grasped the nature of math as a tool of empowerment until
now.


### <span class="section-num">2.27</span> Exercise 1.15: Sine approximation {#exercise-1-dot-15-sine-approximation}


#### <span class="section-num">2.27.1</span> Question A {#question-a}

The sine of an angle (specified in radians) can be computed by making use of the
approximation \\(\sin x \approx x\\) if \\(x\\) is sufficiently small, and the
trigonometric identity \\(\sin x = 3\sin\frac{x}{3} - 4\sin^3\frac{x}{3}\\)
to reduce the size of the argument of sin. (For purposes of this exercise an
angle is considered "sufficiently small" if its magnitude is not greater than
0.1 radians.) These ideas are incorporated in the following procedures:

<a id="code-snippet--1-15-deps"></a>
```scheme { linenos=true, linenostart=1 }
(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))
```

How many times is the procedure <span class="inline-src language-scheme" data-lang="scheme">`p`</span> applied when <span class="inline-src language-scheme" data-lang="scheme">`(sine 12.15)`</span> is evaluated?


#### <span class="section-num">2.27.2</span> Answer A {#answer-a}

Let's find out!

<a id="code-snippet--1-15-p-measure"></a>
```scheme { linenos=true, linenostart=1 }
(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      (cons angle 0)
      (let ((x (sine (/ angle 3.0))))
        (cons (p (car x)) (+ 1 (cdr x))))))
```

<a id="code-snippet--1-15-sine1215"></a>
```scheme { linenos=true, linenostart=1 }
<<1-15-p-measure>>
(let ((xy (sine 12.15)))
  (list (car xy) (cdr xy)))
```

|                   |   |
|-------------------|---|
| -0.39980345741334 | 5 |

<span class="inline-src language-scheme" data-lang="scheme">`p`</span> is evaluated 5 times.


#### <span class="section-num">2.27.3</span> Question B {#question-b}

What is the order of growth in space and number of steps (as a function of
<span class="inline-src language-scheme" data-lang="scheme">`a`</span>) used by the process generated by the sine procedure when
<span class="inline-src language-scheme" data-lang="scheme">`(sine a)`</span> is evaluated?


#### <span class="section-num">2.27.4</span> Answer B {#answer-b}

<a id="code-snippet--1-15-tab1"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
<<1-15-p-measure>>
(let* ((vals (iota 300 0.1 0.1))
       (sines (map (lambda (i)
                     (cdr (sine i)))
                   vals)))
  (zip vals sines))
```

<a id="code-snippet--1-15-tab1-test"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
<<1-15-p-measure>>
(let* ((vals (iota 10 0.1 0.1))
       (sines (map (lambda (i)
                     (cdr (sine i)))
                   vals)))
  (zip vals sines))
```

Example output:

| 0.1                 | 0 |
|---------------------|---|
| 0.2                 | 1 |
| 0.30000000000000004 | 2 |
| 0.4                 | 2 |
| 0.5                 | 2 |
| 0.6                 | 2 |
| 0.7000000000000001  | 2 |
| 0.8                 | 2 |
| 0.9                 | 2 |
| 1.0                 | 3 |

{{< figure src="/ox-hugo/1-15-step.png" >}}

This graph shows that the number of times <span class="inline-src language-scheme" data-lang="scheme">`sine`</span> will be called is
logarithmic.

-   0.1 to 0.2 are divided once
-   0.3 to 0.8 are divided twice
-   0.9 to 2.6 are divided three times
-   2.7 to 8 are divided four times
-   8.5 to 23.8 are divided five times

Given that the calls to <span class="inline-src language-scheme" data-lang="scheme">`p`</span> get stacked recursively, like this:

```scheme
(sine 12.15)
(p (sine 4.05))
(p (p (sine 1.35)))
(p (p (p (sine 0.45))))
(p (p (p (p (sine 0.15)))))
(p (p (p (p (p (sine 0.05))))))
(p (p (p (p (p 0.05)))))
(p (p (p (p 0.14950000000000002))))
(p (p (p 0.43513455050000005)))
(p (p 0.9758465331678772))
(p -0.7895631144708228)
-0.39980345741334
```

So I argue the space and time is \\(\Theta(\log(n))\\)

We can also prove this for the time by benchmarking the function:

<a id="code-snippet--1-15-sine-bench"></a>
```scheme { linenos=true, linenostart=1 }
;; This execution takes too long for org-mode, so I'm doing it
;; externally and importing the results
(use-srfis '(1))
(use-modules (ice-9 format))
(load "../../mattbench.scm")
<<1-15-deps>>
(let* ((vals (iota 300 0.1 0.1))
       (times (map (lambda (i)
                     (mattbench (lambda () (sine i)) 1000000))
                   vals)))
  (with-output-to-file "sine-bench.dat" (lambda ()
     (map (lambda (x y)
           (format #t "~s~/~s~%" x y))
         vals times))))
```

```gnuplot
reset # helps with various issues in execution
set xtics 0.5
set xlabel 'values of x'
set logscale x
set key top left
set style fill solid 1.00 border
#set style function fillsteps below

f(x) = (log(x) * a) + b
fit f(x) 'Ex15/sine-bench.dat' using 1:2 via a,b

plot 'Ex15/sine-bench.dat' using 1:2 with fillsteps title 'time to execute', \
     'Ex15/sine-bench.dat' using 1:(f($1)) with lines title sprintf('(log(x) * %.2f) + %.2f', a, b)
```

{{< figure src="/ox-hugo/1-15-bench.png" >}}

<!--list-separator-->

1.  1.2.4 Exponentiation

    Considering a few ways to compute the exponential of a given number.

    ```scheme
    (define (expt b n)
      (expt-iter b n 1))
    (define (expt-iter b counter product)
      (if (= counter 0)
          product
          (expt-iter b (- counter 1) (* b product))))
    ```

    This iterative procedure is essentially equivalent to:

    $$b^{8} = b \cdot (b \cdot (b \cdot (b \cdot (b \cdot (b \cdot (b \cdot b))))))$$

    But note it could be approached faster with squaring:

    $$\begin{aligned}b^2 &= b \cdot b\\\\
    b^4 &= b^2\cdot b^2\\\\
    b^8 &= b^4 \cdot b^4\end{aligned}$$


### <span class="section-num">2.28</span> Exercise 1.16: Making `fast-expt` iterative {#exercise-1-dot-16-making-fast-expt-iterative}


#### <span class="section-num">2.28.1</span> Text {#text}

<a id="code-snippet--txt-expt"></a>
```scheme { linenos=true, linenostart=1 }
(define (expt-rec b n)
  (if (= n 0)
      1
      (* b (expt-rec b (- n 1)))))

(define (expt-iter b n)
  (define (iter counter product)
    (if (= counter 0)
        product
        (iter (- counter 1)
              (* b product))))
  (iter n 1))

(define (fast-expt b n)
  (cond ((= n 0)
         1)
        ((even? n)
         (square (fast-expt b (/ n 2))))
        (else
         (* b (fast-expt b (- n 1))))))
```


#### <span class="section-num">2.28.2</span> Question {#question}

Design a procedure that evolves an iterative exponentiation process that uses
successive squaring and uses a logarithmic number of steps, as does fast-expt.
(Hint: Using the observation that \\((b^{n/2})^2=(b^2)^{n/2}\\), keep, along with
the exponent \\(n\\) and the base \\(b\\), an additional state variable \\(a\\) , and
define the state transformation in such a way that the product \\({ab}^n\\) is
unchanged from state to state. At the beginning of the process \\(a\\) is taken to
be 1, and the answer is given by the value of \\(a\\) at the end of the process.
In general, the technique of defining an _invariant quantity_ that remains
unchanged from state to state is a powerful way to think about the design of
iterative algorithms.)


#### <span class="section-num">2.28.3</span> Diary {#diary}

First I made this program which tries to use a false equivalence:
$$ab^2 = (a + 1)b^{n - 1}$$

<a id="code-snippet--fast-expt-iter-fail1"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
(define (fast-expt-iter b n)
  (define (iter b n a)
    (format #t "~&|~s~/~/|~s~/~/|~s|~%" b n a)
    (cond ((= n 1) (begin (format #t "~&|~s~/~/|~s~/~/|~s|~%" (* b a) 1 1)
                          (* b a)))
          ((even? n) (iter (square b)
                         (/ n 2)
                         a))
          (else (iter b (- n 1) (+ a 1)))))
  (format #t "|~a~/|~a~/|~a|~%" "base" "power" "variable")
  (format #t "~&|--|--|--|~%")
  (iter b n 1))
```

```scheme { linenos=true, linenostart=1 }
<<fast-expt-iter-fail1>>
<<try-these>>
(fast-expt-iter 2 6)
```

Here's what the internal state looks like during \\(2^6\\) (correct answer is 64):

| base | power | variable |
|------|-------|----------|
| 2    | 6     | 1        |
| 4    | 3     | 1        |
| 4    | 2     | 2        |
| 16   | 1     | 2        |
| 32   | 1     | 1        |


#### <span class="section-num">2.28.4</span> Answer {#answer}

There are two key transforms to a faster algorithm. The first was already shown
in the text:

$$
    ab^n \to a(b^2)^{n/2}
$$

The second which I needed to deduce was this:

$$
    ab^n \to ((a \times b) \times b)^{n - 1}
$$

The solution essentially follows this logic:

-   initialize \\(a\\) to 1
-   If \\( n \\) is 1, return \\(b \* a\\)
-   else if \\(n\\) is even, halve \\(n\\), square \\(b\\), and iterate
-   else \\(n\\) is odd, so subtract 1 from \\(n\\) and \\(a \to a \times b\\)

<!--listend-->

<a id="code-snippet--fast-expt-iter"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
(define (fast-expt-iter b n)
  (define (iter b n a)
    (cond ((= n 1) (* b a))
          ((even? n) (iter (square b)
                         (/ n 2)
                         a))
          (else (iter b (- n 1) (* b a)))))
  (iter b n 1))
```

```scheme { linenos=true, linenostart=1 }
<<fast-expt-iter>>
<<try-these>>
(try-these (lambda(x) (fast-expt-iter 3 x)) (cdr (iota 11)))
```

| 1  | 3     |
|----|-------|
| 2  | 9     |
| 3  | 27    |
| 4  | 81    |
| 5  | 243   |
| 6  | 729   |
| 7  | 2187  |
| 8  | 6561  |
| 9  | 19683 |
| 10 | 59049 |


### <span class="section-num">2.29</span> Exercise 1.17: Logarithmic multiplication (recursive) {#exercise-1-dot-17-logarithmic-multiplication--recursive}


#### <span class="section-num">2.29.1</span> Question {#question}

The exponentiation algorithms in this section are based on performing
exponentiation by means of repeated multiplication. In a similar way, one can
perform integer multiplication by means of repeated addition. The following
multiplication procedure (in which it is assumed that our language can only add,
not multiply) is analogous to the expt procedure:

```scheme { linenos=true, linenostart=1 }
(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))
```

This algorithm takes a number of steps that is linear in \\( b \\). Now suppose we
include, together with addition, operations double, which doubles an integer,
and halve, which divides an (even) integer by 2. Using these, design a
multiplication procedure analogous to fast-expt that uses a logarithmic number
of steps.


#### <span class="section-num">2.29.2</span> Answer {#answer}

<a id="code-snippet--fast-mult-rec"></a>
```scheme { linenos=true, linenostart=1 }
(define (double x)
  (+ x x))
(define (halve x)
  (/ x 2))
(define (fast-mult-rec a b)
  (cond ((= b 0) 0)
        ((even? b)
         (double (fast-mult-rec a (halve b)))) ; This was kind of a stretch to think of.G
         ;(fast-mult (double a) (halve b))) <== My first instinct is iterative
        (else (+ a (fast-mult-rec a (- b 1))))))
```

Proof it works:

```scheme { linenos=true, linenostart=1 }
<<fast-mult-rec>>
<<try-these>>
(try-these (lambda(x) (fast-mult-rec 3 x)) (cdr (iota 11)))
```

| 1  | 3  |
|----|----|
| 2  | 6  |
| 3  | 9  |
| 4  | 12 |
| 5  | 15 |
| 6  | 18 |
| 7  | 21 |
| 8  | 24 |
| 9  | 27 |
| 10 | 30 |


### <span class="section-num">2.30</span> Exercise 1.18: Logarithmic multiplication (iterative) {#exercise-1-dot-18-logarithmic-multiplication--iterative}


#### <span class="section-num">2.30.1</span> Question {#question}

Using the results of Exercise 1.16 and Exercise 1.17, devise a procedure that
generates an iterative process for multiplying two integers in terms of adding,
doubling, and halving and uses a logarithmic number of steps.


#### <span class="section-num">2.30.2</span> Diary {#diary}

<!--list-separator-->

1.  Comparison benchmarks:

    ```scheme { linenos=true, linenostart=1 }
    (load "../mattbench.scm")
    <<fast-mult-iter>>
    <<fast-mult-rec>>
    <<print-table>>
    (print-table (list (list "fast-mult-rec" "fast-mult-iter")
                       (list (mattbench (lambda() (fast-mult-rec 32 32)) 10000000)
                             (mattbench (lambda() (fast-mult 32 32)) 10000000)))
                 #:colnames #t)
    ```

    | "fast-mult-rec" | "fast-mult-iter" |
    |-----------------|------------------|
    | 196.89          | 166.35           |

    So the iterative version takes 0.84 times less to do \\(32 \times 32\\).

<!--list-separator-->

2.  Hall of shame

    Some of my _very_ incorrect ideas:
    $$ab = (a+1)(b-1)$$
    $$ab = \big(a+\Big(\frac{a}{2}\Big)(b-1)\big)$$
    $$ab+c = \big(a(b-1)+(b+c)\big)$$


#### <span class="section-num">2.30.3</span> Answer {#answer}

<a id="code-snippet--fast-mult-iter"></a>
```scheme { linenos=true, linenostart=1 }
(define (double x)
  (+ x x))
(define (halve x)
  (/ x 2))
(define (fast-mult a b)
  (define (iter a b c)
    (cond ((= b 0) 0)
          ((= b 1) (+ a c))
          ((even? b)
           (iter (double a) (halve b) c))
          (else (iter a (- b 1) (+ a c)))))
  (iter a b 0))
```

```scheme { linenos=true, linenostart=1 }
<<fast-mult-iter>>
<<try-these>>
(try-these (lambda(x) (fast-mult 3 x)) (cdr (iota 11)))
```

| 1  | 3  |
|----|----|
| 2  | 6  |
| 3  | 9  |
| 4  | 12 |
| 5  | 15 |
| 6  | 18 |
| 7  | 21 |
| 8  | 24 |
| 9  | 27 |
| 10 | 30 |


### <span class="section-num">2.31</span> Exercise 1.19: Logarithmic fibonacci computing with \\(T\\) {#exercise-1-dot-19-logarithmic-fibonacci-computing-with-t}


#### <span class="section-num">2.31.1</span> Question {#question}

There is a clever algorithm for computing the Fibonacci numbers in a logarithmic
number of steps. Recall the transformation of the state variables a and b in the
<span class="inline-src language-scheme" data-lang="scheme">`fib-iter`</span> process of section 1-2-2:

$$a <- a + b\text{ and }b <- a$$

Call this transformation T, and observe that applying T over and over again n
times, starting with 1 and 0, produces the pair Fib\\((n + 1)\\) and Fib\\((n)\\). In
other words, the Fibonacci numbers are produced by applying \\( T^n \\), the nth
power of the transformation T, starting with the pair (1,0). Now consider T to
be the special case of p = 0 and q = 1 in a family of transformations \\(
T\_{(pq)} \\), where \\( T\_{(pq)} \\) transforms the pair (a,b) according to \\( a <-
bq + aq + ap \\) and \\( b <- bp + aq \\). Show that if we apply such a
transformation \\( T\_{(pq)} \\) twice, the effect is the same as using a single
transformation \\( T\_{(p'q')} \\) of the same form, and compute p' and q' in terms
of p and q. This gives us an explicit way to square these transformations, and
thus we can compute \\( T^n \\) using successive squaring, as in the \`fast-expt'
procedure. Put this all together to complete the following procedure, which runs
in a logarithmic number of steps:

```scheme { linenos=true, linenostart=1 }
(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   <??>      ; compute p'
                   <??>      ; compute q'
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))
```


#### <span class="section-num">2.31.2</span> Diary {#diary}

More succinctly put:

$$
    \text{Fib}\_n \begin{cases}
        a \leftarrow a + b\\\\
        b \leftarrow a
    \end{cases}
$$
$$
    \text{Fib-iter}\_{abpq} \begin{cases}
        a \leftarrow bq + aq + ap\\\\
        b \leftarrow bp + aq
    \end{cases}
$$

<span class="inline-src language-scheme" data-lang="scheme">`(T)`</span> returns a transformation function based on the two numbers in
the attached list. so <span class="inline-src language-scheme" data-lang="scheme">`(T 0 1)`</span> returns a fib function.

<a id="code-snippet--T-func"></a>
```scheme { linenos=true, linenostart=1 }
(define (T p q)
  (lambda (a b)
    (cons (+ (* b q) (* a q) (* a p))
          (+ (* b p) (* a q)))))

(define T-fib
  (T 0 1))

;; Repeatedly apply T functions:
(define (Tr f n)
  (Tr-iter f n 0 1))
(define (Tr-iter f n a b)
  (if (= n 0)
      a
      (let ((l (f a b)))
        (Tr-iter f (- n 1) (car l) (cdr l)))))
```

\text{T}<sub>pq</sub>: a,b\mapsto \begin{cases}
        a &larr; bq + aq + ap<br />
        b &larr; bp + aq
    \end{cases}

<a id="code-snippet--T-test"></a>
```scheme { linenos=true, linenostart=1 }
<<T-func>>
<<try-these>>
(try-these (lambda (x) (Tr (T 0 1) x)) (cdr (iota 11)))
```

| 1  | 1  |
|----|----|
| 2  | 1  |
| 3  | 2  |
| 4  | 3  |
| 5  | 5  |
| 6  | 8  |
| 7  | 13 |
| 8  | 21 |
| 9  | 34 |
| 10 | 55 |


#### <span class="section-num">2.31.3</span> Answer {#answer}

<a id="code-snippet--fib-iter-T"></a>
```scheme { linenos=true, linenostart=1 }
(define (fib-rec n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib-rec (- n 1))
                 (fib-rec (- n 2))))))
(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (* p p)
                      (* q q))      ; compute p'
                   (+ (* p q)
                      (* q q)
                      (* q p))      ; compute q'
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))
```

| "n" | "fib-rec" | "fib-iter" |
|-----|-----------|------------|
| 1   | 1         | 1          |
| 2   | 1         | 1          |
| 3   | 2         | 2          |
| 4   | 3         | 3          |
| 5   | 5         | 5          |
| 6   | 8         | 8          |
| 7   | 13        | 13         |
| 8   | 21        | 21         |
| 9   | 34        | 34         |


### <span class="section-num">2.32</span> 1.2.5: Greatest Common Divisor {#1-dot-2-dot-5-greatest-common-divisor}

A greatest common divisor (or GCD) for two integers is the largest integer that
divides both of them. A GCD can be quickly found by transforming the problem
like so: $$a \\% b = r$$

$$\text{GCD}(a, b) = \text{GCD}(b, r)$$

This eventually produces a pair where the second number is 0. Then, the GCD is
the other number in the pair. This is Euclid's Algorithm.

$$\begin{aligned}\text{GCD}(206,40) &= \text{GCD}(40,6)\\\ &=
            \text{GCD}(6,4)\\\ &= \text{GCD}(4,2)\\\ &~ \text{GCD}(2,0) ~
            2\end{aligned}$$

> **Lamé's Theorem:** If Euclid's Algorithm requires \\(k\\) steps to compute the
>  GCD of some pair, then the smaller number in the pair must be greater than or
>  equal to the \\(k^{th}\\)Fibonacci number.


### <span class="section-num">2.33</span> Exercise 1.20: Inefficiency of normal-order evaluation {#exercise-1-dot-20-inefficiency-of-normal-order-evaluation}


#### <span class="section-num">2.33.1</span> Text {#text}

<a id="code-snippet--gcd"></a>
```scheme { linenos=true, linenostart=1 }
(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
```


#### <span class="section-num">2.33.2</span> Question {#question}

The process that a procedure generates is of course dependent on the rules used
by the interpreter. As an example, consider the iterative <span class="inline-src language-scheme" data-lang="scheme">`gcd`</span>
procedure given above. Suppose we were to interpret this procedure using
normal-order evaluation, as discussed in 1.1.5: The Substitution Model for Procedure Application. (The normal-order-evaluation
rule for <span class="inline-src language-scheme" data-lang="scheme">`if`</span> is described in Exercise 1.5.) Using the substitution
method (for normal order), illustrate the process generated in evaluating
<span class="inline-src language-scheme" data-lang="scheme">`(gcd 206 40)`</span> and indicate the <span class="inline-src language-scheme" data-lang="scheme">`remainder`</span> operations that
are actually performed. How many <span class="inline-src language-scheme" data-lang="scheme">`remainder`</span> operations are actually
performed in the normal-order evaluation of <span class="inline-src language-scheme" data-lang="scheme">`(gcd 206 40)`</span>? In the
applicative-order evaluation?


#### <span class="section-num">2.33.3</span> Answer {#answer}

I struggled to understand this, but the key here is that normal-order evaluation
causes the unevaluated expressions to be duplicated, meaning they get evaluated
multiple times.

<!--list-separator-->

1.  Applicative order

    ```scheme
    call (gcd 206 40)
    (if)
    (gcd 40 (remainder 206 40))
    eval remainder before call
    call (gcd 40 6)
    (if)
    (gcd 6 (remainder 40 6))
    eval remainder before call
    call (gcd 6 4)
    (if)
    (gcd 2 (remainder 4 2))
    eval remainder before call
    call (gcd 2 0)
    (if)
    ;; => 2
    ```

    ```scheme
    ;; call gcd
    (gcd 206 40)

    ;; eval conditional
    (if (= 40 0)
        206
        (gcd 40 (remainder 206 40)))

    ;; recurse
    (gcd 40 (remainder 206 40))

    ; encounter conditional
    (if (= (remainder 206 40) 0)
        40
        (gcd (remainder 206 40)
             (remainder 40 (remainder 206 40))))

    ; evaluate 1 remainder
    (if (= 6 0)
        40
        (gcd (remainder 206 40)
             (remainder 40 (remainder 206 40))))

    ; recurse
    (gcd (remainder 206 40)
         (remainder 40 (remainder 206 40)))

    ; encounter conditional
    (if (= (remainder 40 (remainder 206 40)) 0)
        (remainder 206 40)
        (gcd (remainder 40 (remainder 206 40))
             (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

    ; eval 2 remainder
    (if (= 4 0)
        (remainder 206 40)
        (gcd (remainder 40 (remainder 206 40))
             (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

    ; recurse
    (gcd (remainder 40 (remainder 206 40))
         (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))

    ; encounter conditional
    (if (= (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) 0)
        (remainder 40 (remainder 206 40))
        (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
             (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))))

    ; eval 4 remainders
    (if (= 2 0)
        (remainder 40 (remainder 206 40))
        (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
             (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))))

    ; recurse
    (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
         (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

    ; encounter conditional
    (if (= (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 0)
        (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
        (gcd (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) (remainder a  (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))))

    ; eval 7 remainders
    (if (= 0 0)
        (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
        (gcd (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) (remainder a  (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))))

    ; eval 4 remainders
    (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
    ; => 2
    ```

    So, in normal-order eval, remainder is called 18 times, while in applicative order
    it's called 5 times.


### <span class="section-num">2.34</span> 1.2.6: Example: Testing for Primality {#1-dot-2-dot-6-example-testing-for-primality}

Two algorithms for testing primality of numbers.

1.  \\(\Theta(\sqrt{n})\\): Start with \\(x = 2\\), check for divisibility with
    \\(n\\), if not then increment \\(x\\) by 1 and check again. If \\(x^2 > n\\) and
    you haven't found a divisor, \\(n\\) is prime.
2.  \\(\Theta(\log n)\\): Given a number \\(n\\), pick a random number \\(a < n\\) and
    compute the remainder of \\(a^n\\) modulo \\(n\\). If the result is not equal to
    \\(a\\), then \\(n\\) is certainly not prime. If it is \\(a\\), then chances are
    good that \\(n\\) is prime. Now pick another random number \\(a\\) and test it
    with the same method. If it also satisfies the equation, then we can be even
    more confident that \\(n\\) is prime. By trying more and more values of \\(a\\),
    we can increase our confidence in the result. This algorithm is known as the
    Fermat test.

> **Fermat's Little Theorem:** If \\(n\\) is a prime number and \\(a\\) is any
>  positive integer less than \\(n\\), then \\(a\\) raised to the \\(n^{th}\\) power
>  is congruent to \\(a\\) modulo \\(n\\). [Two numbers are _congruent modulo_ \\(n\\)
>  if they both have the same remainder when divided by \\(n\\).]

The Fermat test is a probabilistic algorithm, meaning its answer is likely to be
correct rather than guaranteed to be correct. Repeating the test increases the
likelihood of a correct answer.


### <span class="section-num">2.35</span> Exercise 1.21 {#exercise-1-dot-21}


#### <span class="section-num">2.35.1</span> Text {#text}

<a id="code-snippet--find-divisor-txt"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n)
         n)
        ((divides? test-divisor n)
         test-divisor)
        (else (find-divisor
               n
               (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))
```


#### <span class="section-num">2.35.2</span> Question {#question}

Use the smallest-divisor procedure to find the smallest divisor of each of the
following numbers: 199, 1999, 19999.


#### <span class="section-num">2.35.3</span> Answer {#answer}

```scheme { linenos=true, linenostart=1 }
<<find-divisor-txt>>
(map smallest-divisor '(199 1999 19999))
```

|     |      |   |
|-----|------|---|
| 199 | 1999 | 7 |


### <span class="section-num">2.36</span> Exercise 1.22 {#exercise-1-dot-22}


#### <span class="section-num">2.36.1</span> Question {#question}

Most Lisp implementations include a primitive called <span class="inline-src language-scheme" data-lang="scheme">`runtime`</span> that
returns an integer that specifies the amount of time the system has been running
(measured, for example, in microseconds). The following
<span class="inline-src language-scheme" data-lang="scheme">`timed-prime-test`</span> procedure, when called with an integer \\(n\\),
prints \\(n\\) and checks to see if \\(n\\) is prime. If \\(n\\) is prime, the
procedure prints three asterisks followed by the amount of time used in
performing the test.

<a id="code-snippet--prime-smallest-divisor"></a>
```scheme { linenos=true, linenostart=1 }
<<find-divisor-txt>>
(define (prime? n)
  (= n (smallest-divisor n)))
```

<a id="code-snippet--timed-prime-test-txt"></a>
```scheme { linenos=true, linenostart=1 }
<<prime-smallest-divisor>>
(define (timed-prime-test n)
  (newline)
  (display n) ;; Guile compatible \downarrow
  (start-prime-test n (get-internal-run-time)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (begin
        (report-prime (- (get-internal-run-time)
                       start-time))
        n)
      #f))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))
```

Using this procedure, write a procedure <span class="inline-src language-scheme" data-lang="scheme">`search-for-primes`</span> that
checks the primality of consecutive odd integers in a specified range. Use your
procedure to find the three smallest primes larger than 1000; larger than
10,000; larger than 100,000; larger than 1,000,000. Note the time needed to test
each prime. Since the testing algorithm has order of growth of
\\(\Theta(\sqrt{n})\\), you should expect that testing for primes around 10,000
should take about \\(\sqrt{10}\\) times as long as testing for primes around 1000.
Do your timing data bear this out? How well do the data for 100,000 and
1,000,000 support the \\(\Theta(\sqrt{n})\\) prediction? Is your result compatible
with the notion that programs on your machine run in time proportional to the
number of steps required for the computation?


#### <span class="section-num">2.36.2</span> Answer {#answer}

<!--list-separator-->

1.  Part 1

    So this question is a little funky, because modern machines are so fast that the
    single-run times can seriously vary.

    <a id="code-snippet--search-primes-basic"></a>
    ```scheme { linenos=true, linenostart=1 }
    <<timed-prime-test-txt>>
    (define (search-for-primes minimum goal)
      (define m (if (even? minimum)
                    (+ minimum 1)
                    (minimum)))
      (search-for-primes-iter m '() goal))
    (define (search-for-primes-iter n lst goal)
      (if (= goal 0)
          lst
          (let ((x (timed-prime-test n)))
            (if (not (equal? x #f))
                (search-for-primes-iter (+ n 2) (cons x lst) (- goal 1))
                (search-for-primes-iter (+ n 2) lst goal)))))
    ```

    ```scheme { linenos=true, linenostart=1 }
    <<search-primes-basic>>
    (let ((lt1000-1 (search-for-primes 1000 3)))
      (list "Primes > 1000" lt1000-1))
    ```

    ```scheme
    1001
    1003
    1005
    1007
    1009 *** 1651
    1011
    1013 *** 1425
    1015
    1017
    1019 *** 1375
    ```

    There's proof it works. And here are the answers to the question:

    ```scheme { linenos=true, linenostart=1 }
    <<search-primes-basic>>
    (let ((lt1000-1 (search-for-primes 1000 3))
          (lt10000-1 (search-for-primes 10000 3))
          (lt100000-1 (search-for-primes 100000 3))
          (lt100000000-1 (search-for-primes 1000000 3)))
      (list
       (list "Primes > 1000" (reverse lt1000-1))
       (list "Primes > 10000" (reverse lt10000-1))
       (list "Primes > 100000" (reverse lt100000-1))
       (list "Primes > 100000000" (reverse lt100000000-1))
       ))
    ```

    | Primes &gt; 1000      | (1009 1013 1019)          |
    |-----------------------|---------------------------|
    | Primes &gt; 10000     | (10007 10009 10037)       |
    | Primes &gt; 100000    | (100003 100019 100043)    |
    | Primes &gt; 100000000 | (1000003 1000033 1000037) |

<!--list-separator-->

2.  Part 2

    Repeatedly re-running, it I see it occasionally jump to twice the time. I'm not
    happy with this, so I'm going to refactor to use the <span class="inline-src language-scheme" data-lang="scheme">`mattbench2`</span>
    utility from the root of the project folder.

    <a id="code-snippet--mattbench2"></a>
    ```scheme
    (define (mattbench2 f n)
      ;; Executes "f" for n times, and returns how long it took.
      ;; f is a lambda that takes no arguments, a.k.a. a "thunk"

      ;; Returns a list with car(last execution results) and cadr(time taken divided by iterations n)

      (define (time-getter) (get-internal-run-time))
      (define start-time (time-getter))
      (define (how-long) (- (time-getter) start-time))

      (define (iter i)
        (f)
        (if (<= i 0)
            (f) ;; return the results of the last function call
            (iter (- i 1))))

      (list (iter n) ;; result of last call of f
            (/ (how-long) (* n 1.0))));; Divide by iterations so changed n has no effect
    ```

    I'm going to get some more precise times. First, I need a prime searching
    variant that doesn't bother benchmarking. This will call <span class="inline-src language-scheme" data-lang="scheme">`prime?`</span>,
    which will be bound later since we'll be trying different methods.

    <a id="code-snippet--search-for-primes-untimed"></a>
    ```scheme { linenos=true, linenostart=1 }
    (define (search-for-primes minimum goal)
      (define m (if (even? minimum)
                    (+ minimum 1)
                    (minimum)))
      (search-for-primes-iter m '() goal))
    (define (search-for-primes-iter n lst goal)
      (if (= goal 0)
          lst
          (let ((x (prime? n)))
            (if (not (equal? x #f))
                (search-for-primes-iter (+ n 2) (cons n lst) (- goal 1))
                (search-for-primes-iter (+ n 2) lst goal)))))
    ```

    I can benchmark these functions like so:

    <a id="code-snippet--smallest-divisor-benchmark"></a>
    ```scheme { linenos=true, linenostart=1 }
    <<mattbench2>>
    <<prime-smallest-divisor>>
    <<search-for-primes-untimed>>
    <<print-table>>

    (define benchmark-iterations 1000000)
    (define (testit f)
      (list (cadr (mattbench2 (lambda() (f 1000 3)) benchmark-iterations))
            (cadr (mattbench2 (lambda() (f 10000 3)) benchmark-iterations))
            (cadr (mattbench2 (lambda() (f 100000 3)) benchmark-iterations))
            (cadr (mattbench2 (lambda() (f 1000000 3)) benchmark-iterations))))

    (print-row
     (testit search-for-primes))
    ```

    Here are the results (run externally from Org-Mode):

    <a id="table--1-22-smd"></a>

    |             |              |              |               |
    |-------------|--------------|--------------|---------------|
    | 5425.223086 | 20772.332491 | 53577.240193 | 121986.712395 |

    {{< figure src="/ox-hugo/1-22-1.png" >}}

    The plot for the square root function doesn't quite fit the real one and I'm not
    sure where the fault lies. I don't struggle to understand things like "this
    algorithm is slower than this other one," but when asked to find or prove the
    \\(\Theta\\) notation I'm pretty clueless;


### <span class="section-num">2.37</span> Exercise 1.23 {#exercise-1-dot-23}


#### <span class="section-num">2.37.1</span> Question {#question}

The <span class="inline-src language-scheme" data-lang="scheme">`smallest-divisor`</span> procedure shown at the start of this section
does lots of needless testing: After it checks to see if the number is divisible
by 2 there is no point in checking to see if it is divisible by any larger even
numbers. This suggests that the values used for test-divisor should not be 2, 3,
4, 5, 6, &hellip;, but rather 2, 3, 5, 7, 9, &hellip;. To implement this change,
define a procedure <span class="inline-src language-scheme" data-lang="scheme">`next`</span> that returns 3 if its input is equal to 2
and otherwise returns its input plus 2. Modify the smallest-divisor procedure to
use <span class="inline-src language-scheme" data-lang="scheme">`(next test-divisor)`</span> instead of <span class="inline-src language-scheme" data-lang="scheme">`(+ test-divisor 1)`</span>.
With <span class="inline-src language-scheme" data-lang="scheme">`timed-prime-test`</span> incorporating this modified version of
<span class="inline-src language-scheme" data-lang="scheme">`smallest-divisor`</span>, run the test for each of the 12 primes found in
Exercise 1.22. Since this modification halves the number of test steps, you
should expect it to run about twice as fast. Is this expectation confirmed? If
not, what is the observed ratio of the speeds of the two algorithms, and how do
you explain the fact that it is different from 2?


#### <span class="section-num">2.37.2</span> A Comedy of Error (just the one) {#a-comedy-of-error--just-the-one}

<a id="code-snippet--find-divisor-faster"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
(define (smallest-divisor n)
  (find-divisor n 2))

(define (next n)
  (if (= n 2)
      3
      (+ n 1)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n)
         n)
        ((divides? test-divisor n)
         test-divisor)
        (else (find-divisor
               n
               (next test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))
```

<a id="code-snippet--smallest-divisor-benchmark"></a>
```scheme { linenos=true, linenostart=1 }
<<mattbench2>>
<<find-divisor-faster>>
(define (prime? n)
  (= n (smallest-divisor n)))
<<search-for-primes-untimed>>
<<print-table>>

(define benchmark-iterations 1000000)
(define (testit f)
  (list (cadr (mattbench2 (lambda() (f 1000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 10000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 100000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 1000000 3)) benchmark-iterations))))

(print-row
 (testit search-for-primes))
```

<a id="table--1-22-smdf"></a>

|             |              |              |               |
|-------------|--------------|--------------|---------------|
| 6456.538118 | 25550.757304 | 66746.041644 | 148505.580638 |

| min     | (+1)         | (next)       |
|---------|--------------|--------------|
| 1000    | 5507.42497   | 6366.99462   |
| 10000   | 20913.71497  | 24845.9193   |
| 100000  | 53778.74737  | 64756.73693  |
| 1000000 | 122135.60511 | 143869.63561 |

{{< figure src="/ox-hugo/1-22-2.png" >}}

So it's _slower_ than before. Why?

Oh, that's why.

```scheme
(define (next n)
  (if (= n 2)
      3
      (+ n 1))) ;; <-- D'oh.
```


#### <span class="section-num">2.37.3</span> Answer {#answer}

Ok, let's try that again.

<a id="code-snippet--find-divisor-faster-real"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
(define (smallest-divisor n)
  (find-divisor n 2))

(define (next n)
  (if (= n 2)
      3
      (+ n 2)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n)
         n)
        ((divides? test-divisor n)
         test-divisor)
        (else (find-divisor
               n
               (next test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))
```

<a id="code-snippet--smallest-divisor-benchmark-real"></a>
```scheme { linenos=true, linenostart=1 }
<<mattbench2>>
<<find-divisor-faster-real>>
(define (prime? n)
  (= n (smallest-divisor n)))
<<search-for-primes-untimed>>
<<print-table>>

(define benchmark-iterations 500000)
(define (testit f)
  (list (cadr (mattbench2 (lambda() (f 1000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 10000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 100000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 1000000 3)) benchmark-iterations))))

(print-row
 (testit search-for-primes))
```

<a id="table--1-22-smdff"></a>

|           |              |              |              |
|-----------|--------------|--------------|--------------|
| 3863.7424 | 13519.209814 | 33520.676384 | 73005.539932 |

| min     | (+1)          | (next-broken) | (next-fixed) |
|---------|---------------|---------------|--------------|
| ---     | ---           | ---           | ---          |
| 1000    | 5425.223086   | 6456.538118   | 3863.7424    |
| 10000   | 20772.332491  | 25550.757304  | 13519.209814 |
| 100000  | 53577.240193  | 66746.041644  | 33520.676384 |
| 1000000 | 121986.712395 | 148505.580638 | 73005.539932 |

{{< figure src="/ox-hugo/1-22-3.png" >}}

I had a lot of trouble getting this one to compile, I have to restart Emacs in
order to get it to render.

Anyways, there's the speedup that was expected. Let's compare the ratios.

Defining a new average that takes arbitrary numbers of arguments:

<a id="code-snippet--average-varargs"></a>
```scheme
(define (average . args)
  (let ((len (length args)))
    (/ (apply + args) len)))
```

Using it for percentage comparisons:

```scheme
<<average-varargs>>
(list (cons "% speedup for broken (next)"
            (cons (format #f "~2$%"
                          (apply average
                                 (map (lambda (x y) (* 100 (/ x y)))
                                      (car smd) (car smdf))))
                  #nil))
      (cons "% speedup for real (next)"
            (cons (format #f "~2$%"
                          (apply average
                                 (map (lambda (x y) (* 100 (/ x y)))
                                      (car smd) (car smdff))))
                  #nil)))
```

| % speedup for broken (next) | 81.93%  |
|-----------------------------|---------|
| % speedup for real (next)   | 155.25% |

Since this changed algorithm cuts out almost half of the steps, you might expect
something more like a 200% speedup. Let's try optimizing it further. Two observations:

1.  The condition <span class="inline-src language-scheme" data-lang="scheme">`(divides? 2 n)`</span> only needs to be run once at the
    start of the program.
2.  Because it only needs to be run once, it doesn't need to be a separate
    function at all.

<!--listend-->

<a id="code-snippet--find-divisor-faster-real2"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
(define (smallest-divisor n)
  (if (divides? 2 n)                  ;; check for division by 2
      2
      (find-divisor n 3)))            ;; start find-divisor at 3

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n)
         n)
        ((divides? test-divisor n)
         test-divisor)
        (else (find-divisor
               n
               (+ 2 test-divisor))))) ;; just increase by 2

(define (divides? a b)
  (= (remainder b a) 0))
```

<a id="code-snippet--smallest-divisor-benchmark-real2"></a>
```scheme { linenos=true, linenostart=1 }
<<mattbench2>>
<<find-divisor-faster-real2>>
(define (prime? n)
  (= n (smallest-divisor n)))
<<search-for-primes-untimed>>
<<print-table>>

(define benchmark-iterations 500000)
(define (testit f)
  (list (cadr (mattbench2 (lambda() (f 1000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 10000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 100000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 1000000 3)) benchmark-iterations))))

(print-row
 (testit search-for-primes))
```

<a id="table--1-22-smdff2"></a>

|             |             |              |              |
|-------------|-------------|--------------|--------------|
| 3151.259574 | 11245.20428 | 27803.067944 | 61997.275154 |

| min     | (+1)          | (next-broken) | (next-fixed) | integrated   |
|---------|---------------|---------------|--------------|--------------|
| ---     | ---           | ---           | ---          | ---          |
| 1000    | 5425.223086   | 6456.538118   | 3863.7424    | 3151.259574  |
| 10000   | 20772.332491  | 25550.757304  | 13519.209814 | 11245.20428  |
| 100000  | 53577.240193  | 66746.041644  | 33520.676384 | 27803.067944 |
| 1000000 | 121986.712395 | 148505.580638 | 73005.539932 | 61997.275154 |

{{< figure src="/ox-hugo/1-22-4.png" >}}

| % speedup for broken (next) | 81.93%  |
|-----------------------------|---------|
| % speedup for real (next)   | 155.25% |
| % speedup for optimized     | 186.59% |


### <span class="section-num">2.38</span> Exercise 1.24 {#exercise-1-dot-24}


#### <span class="section-num">2.38.1</span> Text {#text}

<a id="code-snippet--expmod"></a>
```scheme
<<square>>
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m))
          m))))
```

<a id="code-snippet--fermat-test"></a>
```scheme
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))
```

<a id="code-snippet--fast-prime"></a>
```scheme
(define (fast-prime? n times)
  (cond ((= times 0) #t)
        ((fermat-test n)
         (fast-prime? n (- times 1)))
        (else #f)))
```


#### <span class="section-num">2.38.2</span> Question {#question}

Modify the <span class="inline-src language-scheme" data-lang="scheme">`timed-prime-test`</span> procedure of [2.36](#exercise-1-dot-22) to use
<span class="inline-src language-scheme" data-lang="scheme">`fast-prime?`</span> (the Fermat method), and test each of the 12 primes you
found in that exercise. Since the Fermat test has \\(\Theta(\text{log}n)\\)
growth, how would you expect the time to test primes near 1,000,000 to compare
with the time needed to test primes near 1000? Do your data bear this out? Can
you explain any discrepancy you find?


#### <span class="section-num">2.38.3</span> Answer {#answer}

<a id="code-snippet--fermat-bench"></a>
```scheme { linenos=true, linenostart=1 }
<<mattbench2>>
<<expmod>>
<<fermat-test>>
<<fast-prime>>
(define fermat-iterations 2)
(define (prime? n)
  (fast-prime? n fermat-iterations))
<<search-for-primes-untimed>>
<<print-table>>

(define benchmark-iterations 500000)
(define (testit f)
  (list (cadr (mattbench2 (lambda() (f 1000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 10000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 100000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 1000000 3)) benchmark-iterations))))

(print-row
 (testit search-for-primes))
```

<a id="table--1-24-fermat"></a>

|              |             |              |              |
|--------------|-------------|--------------|--------------|
| 11175.799722 | 23518.62116 | 32150.745642 | 32679.766448 |

| min     | (+1)          | integrated   | fermat (2 guesses) |
|---------|---------------|--------------|--------------------|
| ---     | ---           | ---          | ---                |
| 1000    | 5425.223086   | 3151.259574  | 11175.799722       |
| 10000   | 20772.332491  | 11245.20428  | 23518.62116        |
| 100000  | 53577.240193  | 27803.067944 | 32150.745642       |
| 1000000 | 121986.712395 | 61997.275154 | 32679.766448       |

{{< figure src="/ox-hugo/1-24-1.png" >}}

It definitely looks to be advancing much slower than the other methods. I'd like
to see more of the function.

<a id="code-snippet--smallest-divisor-benchmark-real3"></a>
```scheme { linenos=true, linenostart=1 }
<<mattbench2>>
<<find-divisor-faster-real>>
(define (prime? n)
  (= n (smallest-divisor n)))
<<search-for-primes-untimed>>
<<print-table>>

(define benchmark-iterations 100000)
(define (testit f)
  (list (cadr (mattbench2 (lambda() (f 1000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 10000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 100000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 1000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 10000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 100000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 1000000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 10000000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 100000000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 1000000000000 3)) benchmark-iterations))))

(print-row
 (testit search-for-primes))
```

<a id="code-snippet--fermat-bench2"></a>
```scheme { linenos=true, linenostart=1 }
<<mattbench2>>
<<expmod>>
<<fermat-test>>
<<fast-prime>>
(define fermat-iterations 100)
(define (prime? n)
  (fast-prime? n fermat-iterations))
<<search-for-primes-untimed>>
<<print-table>>

(define benchmark-iterations 100000)
(define (testit f)
  (list (cadr (mattbench2 (lambda() (f 1000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 10000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 100000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 1000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 10000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 100000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 1000000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 10000000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 100000000000 3)) benchmark-iterations))
        (cadr (mattbench2 (lambda() (f 1000000000000 3)) benchmark-iterations))))

(print-row
 (testit search-for-primes))
```

{{< figure src="/ox-hugo/1-24-2.png" >}}

For the life of me I have no idea what that bump is. Maybe it needs more
aggressive bignum processing there?


### <span class="section-num">2.39</span> Exercise 1.25 {#exercise-1-dot-25}


#### <span class="section-num">2.39.1</span> Question {#question}

Alyssa P. Hacker complains that we went to a lot of extra work in writing
<span class="inline-src language-scheme" data-lang="scheme">`expmod`</span>. After all, she says, since we already know how to compute
exponentials, we could have simply written

```scheme { linenos=true, linenostart=1 }
(define (expmod base exp m)
  (remainder (fast-expt base exp) m))
```

Is she correct? Would this procedure serve as well for our fast prime tester?
Explain.


#### <span class="section-num">2.39.2</span> Answer {#answer}

In Alyssa's version of <span class="inline-src language-scheme" data-lang="scheme">`expmod`</span>, the result of the
<span class="inline-src language-scheme" data-lang="scheme">`fast-expt`</span> operation is _extremely_ large. For example, in the
process of checking for divisors of 1,001, the number 455 will be tried.
<span class="inline-src language-scheme" data-lang="scheme">`(expt 455 1001)`</span> produces an integer 2,661 digits long. This is just
one of the thousands of exponentiations that <span class="inline-src language-scheme" data-lang="scheme">`smallest-divisor`</span> will
perform. It's best to avoid this, so we use to our advantage the fact that we
only need to know the remainder of the exponentiations. <span class="inline-src language-scheme" data-lang="scheme">`expmod`</span>
breaks down the exponentiation into smaller steps and performs
<span class="inline-src language-scheme" data-lang="scheme">`remainder`</span> after every step, significantly reducing the memory
requirements.

As an example, let's trace (some of) the execution of <span class="inline-src language-scheme" data-lang="scheme">`(expmod 455 1001 1001)`</span>:

```scheme
(expmod 455 1001 1001)
>  (even? 1001)
>  #f
>  (expmod 455 1000 1001)
>  >  (even? 1000)
>  >  #t
>  >  (expmod 455 500 1001)
>  >  >  (even? 500)
>  >  >  #t
;; ...
>  >  >  x11 (expmod 455 2 1001)
>  >  >  x11 >  (even? 2)
>  >  >  x11 >  #t
>  >  >  x11 >  (expmod 455 1 1001)
>  >  >  x11 >  >  (even? 1)
>  >  >  x11 >  >  #f
>  >  >  x11 >  >  (expmod 455 0 1001)
>  >  >  x11 >  >  1
>  >  >  x11 >  455
>  >  >  x11 >  (square 455)
>  >  >  x11 >  207025
>  >  >  x11 819
;; ...
>  >  >  (square 364)
>  >  >  132496
>  >  364
>  >  (square 364)
>  >  132496
>  364
455
```

You can see that the numbers remain quite manageable throughout this process. So
taking these extra steps actually leads to an algorithm that performs better.


### <span class="section-num">2.40</span> Exercise 1.26 {#exercise-1-dot-26}


#### <span class="section-num">2.40.1</span> Question {#question}

Louis Reasoner is having great difficulty doing Exercise 1.24. His
<span class="inline-src language-scheme" data-lang="scheme">`fast-prime?`</span> test seems to run more slowly than his
<span class="inline-src language-scheme" data-lang="scheme">`prime?`</span> test. Louis calls his friend Eva Lu Ator over to help. When
they examine Louis's code, they find that he has rewritten the
<span class="inline-src language-scheme" data-lang="scheme">`expmod`</span> procedure to use an explicit multiplication, rather than
calling <span class="inline-src language-scheme" data-lang="scheme">`square`</span>:

```scheme { linenos=true, linenostart=1 }
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (* (expmod base (/ exp 2) m) ;; <== hmm.
             (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base
             (expmod base (- exp 1) m))
          m))))
```

"I don't see what difference that could make," says Louis. "I do." says Eva. "By
writing the procedure like that, you have transformed the \\(\Theta(\log n)\\)
process into a \\(\Theta(n)\\) process." Explain.


#### <span class="section-num">2.40.2</span> Answer {#answer}

Making the same function call twice isn't the same as using a variable twice --
Louis' version doubles the work, having two processes solving the exact same
problem. Since the number of processes used increases exponentially, this turns
\\(\log n\\) into \\(n\\).


### <span class="section-num">2.41</span> Exercise 1.27 {#exercise-1-dot-27}


#### <span class="section-num">2.41.1</span> Question {#question}

Demonstrate that the Carmichael numbers listed in Footnote 1.47 really do fool
the Fermat test. That is, write a procedure that takes an integer \\(n\\) and
tests whether \\(a^n\\) is congruent to \\(a\\) modulo \\(n\\) for every \\(a < n\\),
and try your procedure on the given Carmichael numbers.

<a id="table--carmichael"></a>

|     |      |      |      |      |      |
|-----|------|------|------|------|------|
| 561 | 1105 | 1729 | 2465 | 2821 | 6601 |


#### <span class="section-num">2.41.2</span> Answer {#answer}

<a id="code-snippet--car-test"></a>
```scheme { linenos=true, linenostart=1 }
<<expmod>>
(define (car-test n)
  (define (check a)
    (= (remainder (expt a n) n)
       (remainder (modulo a n) n)))
  (every check
           (cddr (iota n))))
```

<a id="code-snippet--car-test-check"></a>
```scheme
<<car-test>>
(list (car-test 12) ; <== false (not prime)
      (car-test 1009);<== true  (real prime)
      (car-test 561));<== true  (not prime,
                     ;      Carmichael number)
```


### <span class="section-num">2.42</span> Exercise 1.28 {#exercise-1-dot-28}


#### <span class="section-num">2.42.1</span> Question {#question}

One variant of the Fermat test that cannot be fooled is called the
****Miller-Rabin test**** (Miller 1976; Rabin 1980). This starts from an alternate
form of Fermat's Little Theorem, which states that if \\( n \\) is a prime number
and \\( a \\) is any positive integer less than \\( n \\), then \\( a \\) raised to
the \\( (n-1) \\) -st power is congruent to 1 modulo \\( n \\). To test the
primality of a number \\( n \\) by the Miller-Rabin test, we pick a random number
\\( a<n \\) and raise \\( a \\) to the \\( (n-1) \\) -st power modulo \\( n \\) using
the <span class="inline-src language-scheme" data-lang="scheme">`expmod`</span> procedure. However, whenever we perform the squaring step
in <span class="inline-src language-scheme" data-lang="scheme">`expmod`</span>, we check to see if we have discovered a "nontrivial
square root of 1 modulo \\( n \\)," that is, a number not equal to 1 or \\( n-1 \\)
whose square is equal to 1 modulo \\( n \\). It is possible to prove that if such
a nontrivial square root of 1 exists, then \\( n \\) is not prime. It is also
possible to prove that if \\( n \\) is an odd number that is not prime, then, for
at least half the numbers \\( a<n \\), computing \\( an-1 \\) in this way will
reveal a nontrivial square root of 1 modulo \\( n \\). (This is why the
Miller-Rabin test cannot be fooled.) Modify the <span class="inline-src language-scheme" data-lang="scheme">`expmod`</span> procedure to
signal if it discovers a nontrivial square root of 1, and use this to implement
the Miller-Rabin test with a procedure analogous to fermat-test. Check your
procedure by testing various known primes and non-primes. Hint: One convenient
way to make <span class="inline-src language-scheme" data-lang="scheme">`expmod`</span> signal is to have it return 0.


#### <span class="section-num">2.42.2</span> Analysis {#analysis}

For the sake of verifying this, I want to get a bigger list of primes and
Carmichael numbers to verify against. I'll save them using Guile's built in
read/write functions that save Lisp lists to text:

<a id="code-snippet--findsomeprimes"></a>
```scheme
<<find-divisor-faster-real>>
(define (prime? n)
  (= n (smallest-divisor n)))
(call-with-output-file "Data/primes-1k_to_1mil.txt" (lambda(port)
  (write (filter prime? (iota (- 1000000 1000) 1000))
         port)))
```

<a id="code-snippet--fermat-prime?"></a>
```scheme
;; fermat prime test but checks *every* value from 2 to n-1
(define (fermat-prime? n)
  (define (iter a)
    (if (= a n)
        #f
        (if (= (expmod a n n) a)
            #t
            (iter (+ 1 a)))))
  (iter 2))
```

<a id="code-snippet--findcars"></a>
```scheme
(use-srfis '(1))
<<expmod>>
<<fermat-prime?>>
<<find-divisor-faster-real>>
(define (prime? n)
  (= n (smallest-divisor n)))
(call-with-output-file "Data/carmichael-verification.txt" (lambda(port)
     (write (filter
             (lambda(x) (and (fermat-prime? x)
                        (not (prime? x))))
             (iota (- 1000000 1000) 1000))
            port)))
```

This will be useful in various future functions:

<a id="code-snippet--get-lists-of-primes"></a>
```scheme
(define list-of-primes (call-with-input-file "Data/primes-1k_to_1mil.txt" read))
(define list-of-carmichaels (call-with-input-file "Data/carmichael.txt" read))
```

```scheme
(use-srfis '(1))
<<expmod>>
<<fermat-prime?>>
<<find-divisor-faster-real>>
(define (prime? n)
  (= n (smallest-divisor n)))
<<get-lists-of-primes>>
(define prime-is-working
  (and (and-map prime? list-of-primes)
       (not (and-map prime? list-of-carmichaels))))
(format #t "(prime?) is working: ~a~%"
        (if prime-is-working
            "Yes"
            "No"))
(define fermat-is-vulnerable
  (and (and-map fermat-prime? list-of-primes)
       (and-map fermat-prime? list-of-carmichaels)))
(format #t "(fermat-prime?) is vulnerable: ~a~%"
        (if fermat-is-vulnerable
            "Yes"
            "No"))
```

```text
(prime?) is working: Yes
(fermat-prime?) is vulnerable: Yes
```


#### <span class="section-num">2.42.3</span> Answer {#answer}

<a id="code-snippet--expmod-mr"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
(define (expmod-mr base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (let ((sqr
                (square (expmod-mr base (/ exp 2) m))))
           (if (= 1 (modulo sqr m))
               0
               (remainder sqr m))))
        (else
         (remainder
          (* base (expmod-mr base (- exp 1) m))
          m))))
```

<a id="code-snippet--mr-test"></a>
```scheme
(define (mr-test n)
  (define (try-it a)
    (let ((it (expmod-mr a n n)))
      (or (= it a)
          (= it 0))))
  (try-it (+ 1 (random (- n 1)))))
```

<a id="code-snippet--mr-prime"></a>
```scheme
(define (mr-prime? n times)
  (cond ((= times 0) #t)
        ((mr-test n)
         (mr-prime? n (- times 1)))
        (else #f)))
```

<a id="code-snippet--mr-verification"></a>
```scheme
<<expmod-mr>>
<<mr-test>>
<<mr-prime>>
(define mr-times 100)
<<get-lists-of-primes>>
(format #t "      mr detects primes: ~a~%mr false-positives Carmichaels: ~a~%"
        (and-map (lambda(x)(mr-prime? x mr-times)) list-of-primes)
      (and-map (lambda(x)(mr-prime? x mr-times)) list-of-carmichaels))
```

```nil
      mr detects primes: #t
mr false-positives Carmichaels: #t
```

Shoot. And I thought I did a very literal interpretation of what the book asked.

Ah, I see the problem. I need to keep track of what the pre-squaring number was
and use that to determine whether the square is valid or not.

<a id="code-snippet--expmod-mr2"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
(define (expmod-mr base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         ;; Keep result and remainder seperate
         (let* ((result (expmod-mr base (/ exp 2) m))
                (rem (remainder (square result) m)))
           (if (and (not (= result 1))
                    (not (= result (- m 1)))
                    (= 1 rem))
               0 ;; non-trivial sqrt mod 1 is found
               rem)))
        (else
         (remainder
          (* base (expmod-mr base (- exp 1) m))
          m))))
```

Unfortunately this one has the same problem. What's the issue?

Sadly, there's a massive issue in <span class="inline-src language-scheme" data-lang="scheme">`mr-test`</span>.

```scheme { linenos=true, linenostart=17 }
(define (mr-test n)
  (define (try-it a)
    (let ((it (expmod-mr a n n))) ;; Should be "a (- n 1) n"
      (or (= it a)    ;; Should be (= it 1)
          (= it 0)))) ;; Two strikes, you're out
  (try-it (+ 1 (random (- n 1)))))
```

One more time.

<a id="code-snippet--mr-test2"></a>
```scheme { linenos=true, linenostart=23 }
(define (mr-test n)
  (define (try-it a)
    (= 1 (expmod-mr a (- n 1) n)))
  (try-it (+ 1 (random (- n 1)))))
```

<a id="code-snippet--mr-verification2"></a>
```scheme { linenos=true, linenostart=1 }
<<expmod-mr2>>
<<mr-test2>>
<<mr-prime>>
(define mr-times 100)
<<get-lists-of-primes>>
(format #t "      mr detects primes: ~a~%mr false-positives Carmichaels: ~a~%"
        (and-map (lambda(x)(mr-prime? x mr-times)) list-of-primes)
      (and-map (lambda(x)(mr-prime? x mr-times)) list-of-carmichaels))
```

```nil
     mr detects primes: #t
mr false-positives Carmichaels: #f
```


### <span class="section-num">2.43</span> 1.3: Formulating Abstractions with Higher-Order Procedures {#1-dot-3-formulating-abstractions-with-higher-order-procedures}

Procedures that manipulate procedures are called _higher-order procedures_.


### <span class="section-num">2.44</span> 1.3.1: Procedures as Arguments {#1-dot-3-dot-1-procedures-as-arguments}

Let's say we have several different types of series that we want to sum.
Functions for each of these tasks will look very similar, so we're better off
defining a general function that expresses the _idea_ of summation, that can
then be passed specific functions to cause the specific behavior of the series.
Mathematicians express this as \\(\sum\\) ("sigma") notation.

For the program:

```scheme
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))
```

Which is equivalent to:

$$\sum^{b}\_{n~a}term(n)~term(a)+term(next(a))+term(next(next(a)))+\cdots+term(b)$$

We can pass integers to <span class="inline-src language-scheme" data-lang="scheme">`a`</span> and <span class="inline-src language-scheme" data-lang="scheme">`b`</span> and functions to
<span class="inline-src language-scheme" data-lang="scheme">`term`</span> and <span class="inline-src language-scheme" data-lang="scheme">`next`</span>. Note that in order to simply sum
integers, we'd need to define and pass an identity function to <span class="inline-src language-scheme" data-lang="scheme">`term`</span>.


### <span class="section-num">2.45</span> Exercise 1.29 {#exercise-1-dot-29}


#### <span class="section-num">2.45.1</span> Text {#text}

<a id="code-snippet--sum"></a>
```scheme { linenos=true, linenostart=1 }
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))
```

<a id="code-snippet--integral"></a>
```scheme { linenos=true, linenostart=1 }
(define (integral f a b dx)
  (define (add-dx x)
    (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))
```


#### <span class="section-num">2.45.2</span> Question {#question}

Simpson's Rule is a more accurate method of numerical integration than the
method illustrated above. Using Simpson's Rule, the integral of a function \\(f\\)
between \\(a\\) and \\(b\\) is approximated as

$$
\frac{h}{3}(y\_0 + 4y\_1 + 2y\_2 + 4y\_3 + 2y\_4 + \dots + 2y\_{n-2} + 4y\_{n-1} + y\_n)
$$

where \\(h = (b - a) / n\\), for some even integer \\(n\\), and \\(y\_k = f(a + kh)\\).
(Increasing \\(n\\) increases the accuracy of the approximation.) Define a
procedure that takes as arguments \\(f\\), \\(a\\), \\(b\\), and \\(n\\) and returns the
value of the integral, computed using Simpson's Rule. Use your procedure to
integrate <span class="inline-src language-scheme" data-lang="scheme">`cube`</span> between 0 and 1 (with \\(n = 100\\) and \\(n = 1000\\)),
and compare the results to those of the <span class="inline-src language-scheme" data-lang="scheme">`integral`</span> procedure shown
above.


#### <span class="section-num">2.45.3</span> Answer {#answer}

<a id="code-snippet--int-simp"></a>
```scheme { linenos=true, linenostart=1 }
(define (int-simp f a b n)
  (define h
    (/ (- b a)
     n))
  (define (gety k)
    (f (+ a (* k h))))
  (define (series-y sum k) ;; start with sum = y_0
    (cond ((= k n) (+ sum (gety k)));; and k = 1
          ((even? k) (series-y
                      (+ sum (* 2 (gety k)))
                      (+ 1 k)))
          (else (series-y
                 (+ sum (* 4 (gety k)))
                 (+ 1 k)))))
  (define sum-of-series (series-y (gety a) 1)) ;; (f a) = y_0
  (* (/ h 3) sum-of-series))
```

Let's compare these at equal levels of computational difficulty.

```scheme { linenos=true, linenostart=1 }
<<mattbench2>>
<<print-table>>
(define (cube x)
  (* x x x))
<<sum>>
<<integral>>
<<int-simp>>

(define iterations 100000) ;; benchmark iterations
(define (run-test1)
  (integral cube 0.0 1.0 0.0008))
(define (run-test2)
  (int-simp cube 0.0 1.0 1000.0))
(print-table (list (list "integral dx:0.0008" "int-simp i:1000")
                   (list (run-test1) (run-test2))
                   (list (cadr (mattbench2 run-test1 iterations))
                         (cadr (mattbench2 run-test2 iterations))))
             #:colnames #t)
```

| integral dx:0.0008  | int-simp i:1000     |
|---------------------|---------------------|
| 0.24999992000001311 | 0.25000000000000006 |
| 321816.2755         | 330405.8918         |

So, more accurate for roughly the same effort or less.


### <span class="section-num">2.46</span> Exercise 1.30 {#exercise-1-dot-30}


#### <span class="section-num">2.46.1</span> Question {#question}

The <span class="inline-src language-scheme" data-lang="scheme">`sum`</span> procedure above generates a linear recursion. The procedure
can be rewritten so that the sum is performed iteratively. Show how to do this
by filling in the missing expressions in the following definition:


#### <span class="section-num">2.46.2</span> Answer {#answer}

<a id="code-snippet--sum-iter"></a>
```scheme { linenos=true, linenostart=1 }
(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))
```

Let's check the stats!

| recursive    | iterative    |
|--------------|--------------|
| 30051.080005 | 19568.685587 |


### <span class="section-num">2.47</span> Exercise 1.31 {#exercise-1-dot-31}


#### <span class="section-num">2.47.1</span> Question A.1 {#question-a-dot-1}

The <span class="inline-src language-scheme" data-lang="scheme">`sum`</span> procedure is only the simplest of a vast number of similar
abstractions that can be captured as higher-order procedures. Write an analogous
procedure called <span class="inline-src language-scheme" data-lang="scheme">`product`</span> that returns the product of the values of a
function at points over a given range.


#### <span class="section-num">2.47.2</span> Answer A.1 {#answer-a-dot-1}

<a id="code-snippet--product-iter"></a>
```scheme { linenos=true, linenostart=1 }
(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1)) ;; start at 1 so it's not always 0
```


#### <span class="section-num">2.47.3</span> Question A.2 {#question-a-dot-2}

Show how to define <span class="inline-src language-scheme" data-lang="scheme">`factorial`</span> in terms of <span class="inline-src language-scheme" data-lang="scheme">`product`</span>.


#### <span class="section-num">2.47.4</span> Answer A.2 {#answer-a-dot-2}

I was briefly stumped because <span class="inline-src language-scheme" data-lang="scheme">`product`</span> only counts upward. Then I
realized that's just how it's presented and it can go either direction, since
addition and multiplication are commutative. I look forward to building up a
more intuitive sense of numbers.

<a id="code-snippet--factorial-product"></a>
```scheme { linenos=true, linenostart=1 }
<<product-iter>>
(define (identity x)
  x)
(define (inc x)
  (1+ x))

(define (factorial n)
  (product-iter identity 1 inc n))

(display (factorial 7))
```


#### <span class="section-num">2.47.5</span> Question A.3 {#question-a-dot-3}

Also use <span class="inline-src language-scheme" data-lang="scheme">`product`</span> to compute approximations to \\(\pi\\) using the
formula

$$
\frac{\pi}{4} =
\frac{2\cdot 4\cdot 4\cdot 6\cdot 6\cdot 8\cdots}{3\cdot 3\cdot 5\cdot 5\cdot 7\cdot 7\cdots}
$$


#### <span class="section-num">2.47.6</span> Answer A.3 {#answer-a-dot-3}

Once this equation is encoded, you just need to multiply it by two to get \\(\pi\\).

Fun fact: the formula is slightly wrong, it should start the series with \\(\frac{1}{2}\\).

<a id="code-snippet--pi-product"></a>
```scheme { linenos=true, linenostart=1 }
<<product-iter>>
(define (pi-product n)
  (define (div x)
    (let ((x1 (- x 1))
          (x2 (+ x 1)))
      (* (/ x x1) (/ x x2))))
  (* 2.0 (product-iter div 2 (lambda (z) (+ z 2)) n)))

(display (pi-product 100000))
```

```text
3.1415769458228726
```


#### <span class="section-num">2.47.7</span> Question B {#question-b}

If your product procedure generates a recursive process, write one that
generates an iterative process. If it generates an iterative process, write one
that generates a recursive process.


#### <span class="section-num">2.47.8</span> Answer B {#answer-b}

<a id="code-snippet--product-rec"></a>
```scheme { linenos=true, linenostart=1 }
(define (product-rec term a next b)
  (if (> a b)
      1
      (* (term a)
         (product-rec term (next a) next b))))
```

<a id="code-snippet--product-bench"></a>
```scheme { linenos=true, linenostart=1 }
<<mattbench2>>
<<print-table>>
<<product-iter>>
(define (pi-product n)
  (define (div x)
    (let ((x1 (- x 1))
          (x2 (+ x 1)))
      (* (/ x x1) (/ x x2))))
  (* 2.0 (product-iter div 2 (lambda (z) (+ z 2)) n)))
<<product-rec>>
(define (pi-product-rec n)
  (define (div x)
    (let ((x1 (- x 1))
          (x2 (+ x 1)))
      (* (/ x x1) (/ x x2))))
  (* 2.0 (product-rec div 2 (lambda (z) (+ z 2)) n)))

(define iterations 50000)
(print-table
 (list (list "iterative" "recursive")
       (list (cadr (mattbench2 (lambda()(pi-product 1000)) iterations))
             (cadr (mattbench2 (lambda()(pi-product-rec 1000)) iterations))))
 #:colnames #t)
```

| iterative    | recursive    |
|--------------|--------------|
| 1267118.0538 | 3067085.5323 |


### <span class="section-num">2.48</span> Exercise 1.32 {#exercise-1-dot-32}


#### <span class="section-num">2.48.1</span> Question A {#question-a}

Show that <span class="inline-src language-scheme" data-lang="scheme">`sum`</span> and <span class="inline-src language-scheme" data-lang="scheme">`product`</span> are both special cases of a
still more general notion called <span class="inline-src language-scheme" data-lang="scheme">`accumulate`</span> that combines a
collection of terms, using some general accumulation function:

```scheme
(accumulate combiner null-value term a next b)
```

<span class="inline-src language-scheme" data-lang="scheme">`accumulate`</span> takes as arguments the same term and range specifications
as <span class="inline-src language-scheme" data-lang="scheme">`sum`</span> and <span class="inline-src language-scheme" data-lang="scheme">`product`</span>, together with a <span class="inline-src language-scheme" data-lang="scheme">`combiner`</span>
procedure (of two arguments) that specifies how the current term is to be
combined with the accumulation of the preceding terms and a
<span class="inline-src language-scheme" data-lang="scheme">`null-value`</span> that specifies what base value to use when the terms run
out. Write <span class="inline-src language-scheme" data-lang="scheme">`accumulate`</span> and show how <span class="inline-src language-scheme" data-lang="scheme">`sum`</span> and
<span class="inline-src language-scheme" data-lang="scheme">`product`</span> can both be defined as simple calls to
<span class="inline-src language-scheme" data-lang="scheme">`accumulate`</span>.


#### <span class="section-num">2.48.2</span> Answer A {#answer-a}

When I first did this question, I struggled a lot before realizing
<span class="inline-src language-scheme" data-lang="scheme">`accumulate`</span> was much closer to the exact definitions of sum/product
than I thought.

<a id="code-snippet--accumulate-iter"></a>
```scheme { linenos=true, linenostart=1 }
(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (combiner result (term a)))))
  (iter a null-value))
```

```scheme { linenos=true, linenostart=1 }
<<accumulate-iter>>

;; here you can see definitions in terms of accumulate
(define (sum term a next b)
  (accumulate-iter + 0 term a next b))
(define (product term a next b)
  (accumulate-iter * 1 term a next b))

(define (identity x)
  x)
(define (inc x)
  (1+ x))

;; accumulate in action
(define (factorial n)
  (accumulate-iter * 1 identity 1 inc n))

(display (factorial 7))
```

```text
5040
```


#### <span class="section-num">2.48.3</span> Question B {#question-b}

If your <span class="inline-src language-scheme" data-lang="scheme">`accumulate`</span> procedure generates a recursive process, write
one that generates an iterative process. If it generates an iterative process,
write one that generates a recursive process.


#### <span class="section-num">2.48.4</span> Answer B {#answer-b}

<a id="code-snippet--accumulate-rec"></a>
```scheme { linenos=true, linenostart=1 }
(define (accumulate-rec combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
         (accumulate-rec combiner null-value
                         term (next a) next b))))
```


### <span class="section-num">2.49</span> Exercise 1.33 {#exercise-1-dot-33}


#### <span class="section-num">2.49.1</span> Question A {#question-a}

You can obtain an even more general version of <span class="inline-src language-scheme" data-lang="scheme">`accumulate`</span> by
introducing the notion of a filter on the terms to be combined. That is, combine
only those terms derived from values in the range that satisfy a specified
condition. The resulting <span class="inline-src language-scheme" data-lang="scheme">`filtered-accumulate`</span> abstraction takes the
same arguments as accumulate, together with an additional predicate of one
argument that specifies the filter. Write <span class="inline-src language-scheme" data-lang="scheme">`filtered-accumulate`</span> as a
procedure.


#### <span class="section-num">2.49.2</span> Answer A {#answer-a}

<a id="code-snippet--filtered-accumulate-iter"></a>
```scheme { linenos=true, linenostart=1 }
(define (filtered-accumulate-iter
           predicate? combiner null-value
           term a next b)
  (define (iter a result)
    (cond ((> a b) result)
          ((predicate? a)
           (iter (next a)
                 (combiner result (term a))))
          (else (iter (next a)
                      result))))
  (iter a null-value))
```


#### <span class="section-num">2.49.3</span> Question B {#question-b}

Show how to express the following using <span class="inline-src language-scheme" data-lang="scheme">`filtered-accumulate`</span>:

<!--list-separator-->

1.  A

    Find the sum of the squares of the prime numbers in the interval \\(a\\) to \\(b\\)
    (assuming that you have a <span class="inline-src language-scheme" data-lang="scheme">`prime?`</span> predicate already written)

    ```scheme { linenos=true, linenostart=1 }
    (load "mattcheck.scm")
    (define (square x)
      (* x x))
    <<filtered-accumulate-iter>>
    <<expmod-mr2>>
    <<mr-test2>>
    <<mr-prime>>
    (define mr-times 100)
    (define (prime? x)
      (mr-prime? x mr-times))
    (define (prime-sum a b)
      (filtered-accumulate-iter prime? + 0
                                square a 1+ b))

    (mattcheck-equal "1 prime correct"
                     (prime-sum 1008 1010)
                     (square 1009)) ;; 1009
    (mattcheck-equal "many primes correct"
                     (prime-sum 1000 2001)
                     (apply +
                            (map square
                                 (filter prime? (iota (- 2001 1000)
                                                      1000)))))
    ```

    ```text
    SUCCEED at 1 prime correct
    SUCCEED at many primes correct
    ```

<!--list-separator-->

2.  B

    > Find the product of all the positive integers less than \\(n\\) that are
    > relatively prime to \\(n\\) (i.e., all positive integers \\(i < n\\) such that
    > \\(\textsc{gcd}(i, n) = 1\\).

    ```scheme { linenos=true, linenostart=1 }
    (load "mattcheck.scm")
    (define (square x)
      (* x x))
    (define (id x) x)
    <<filtered-accumulate-iter>>
    <<gcd>>
    (define (relative-prime? x y)
      (= 1 (gcd x y)))

    (define (Ex_1-33B n)
      (filtered-accumulate-iter
       (lambda(i) (relative-prime? i n))
       * 1 id
       1 1+ (1- n)))

    (define (alternate n)
      (apply *
             (filter (lambda(i) (relative-prime? i n))
                     (iota (- n 1) 1))))

    (mattcheck-equal "Ex_1-33B"
                     (Ex_1-33B 100)
                     (alternate 100))
    ```

    ```text
    SUCCEED at Ex_1-33B
    ```


### <span class="section-num">2.50</span> 1.3.2: Constructing Procedures Using lambda {#1-dot-3-dot-2-constructing-procedures-using-lambda}

A procedure that's only used once is more conveniently expressed as the special
form <span class="inline-src language-scheme" data-lang="scheme">`lambda`</span>.

Variables that are only briefly used in a limited scope can be specified with
the special form <span class="inline-src language-scheme" data-lang="scheme">`let`</span>. Variables in <span class="inline-src language-scheme" data-lang="scheme">`let`</span> blocks override
external variables. The authors recommend using <span class="inline-src language-scheme" data-lang="scheme">`define`</span> for
procedures and <span class="inline-src language-scheme" data-lang="scheme">`let`</span> for variables.


### <span class="section-num">2.51</span> Exercise 1.34 {#exercise-1-dot-34}


#### <span class="section-num">2.51.1</span> Question {#question}

> Suppose we define the procedure

```scheme
(define (f g) (g 2))
```

> Then, we have

```scheme
(f square)
; 4
(f (lambda (z) (* z (+ z 1))))
; 6
```

> What happens if we (perversely) ask the interpreter to evaluate the combination
> <span class="inline-src language-scheme" data-lang="scheme">`(f f)`</span>? Explain.


#### <span class="section-num">2.51.2</span> Answer {#answer}

It ends up trying to execute <span class="inline-src language-scheme" data-lang="scheme">`2`</span> as a function.

```scheme { linenos=true, linenostart=1 }
;; Will be evaluated like this:
;;   (f f)
;;   (f 2)
;;   (2 2)
(define (f g) (g 2))
(f f)
```

```text
ice-9/boot-9.scm:1685:16: In procedure raise-exception:
Wrong type to apply: 2
```


### <span class="section-num">2.52</span> 1.3.3 Procedures as General Methods {#1-dot-3-dot-3-procedures-as-general-methods}

The **half-interval method**: if \\(f(a)<0<f(b)\\), then \\(f\\) must have at least
one 0 between \\(a\\) and \\(b\\). To find 0, let \\(x\\) be the average of \\(a\\) and
\\(b\\), if \\(f(x) < 0\\) then 0 must be between \\(x\\) and \\(b\\), if \\(f(x)>0\\)
than 0 must be between \\(a\\) and \\(x\\).

The **fixed point** of a function satisfies the equation $$f(x)=x$$

For some functions, we can locate a fixed point by beginning with an initial
guess \\(y\\) and applying \\(f(y)\\) repeatedly until the value doesn't change
much.

**Average damping** can help converge fixed-point searches.

The symbol \\(\mapsto\\) ("maps to") can be considered equivalent to a lambda. For
example, \\(x \mapsto x+x\\) is equivalent to <span class="inline-src language-scheme" data-lang="scheme">`(lambda (x) (+ x x))`</span>. In
English, "the function whose value at \\(y\\) is \\(x/y\\)". _Though it seems like
\\(\mapsto\\) doesn't necessarily describe a function, but the value of a function
at a certain point? Or maybe that would just be \\(~\\), ie \\(f(x)~etc\\)_


### <span class="section-num">2.53</span> Exercise 1.35 {#exercise-1-dot-35}


#### <span class="section-num">2.53.1</span> Text {#text}

<a id="code-snippet--close-enough-txt"></a>
```scheme { linenos=true, linenostart=1 }
(define (close-enough? x y)
  (< (abs (- x y)) 0.001))
```

<a id="code-snippet--fixed-point-txt"></a>
```scheme { linenos=true, linenostart=1 }
(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))
```


#### <span class="section-num">2.53.2</span> Question {#question}

> Show that the golden ratio \\(\varphi\\) is a fixed point of the transformation
> \\(x \mapsto 1 + 1 / x\\), and use this fact to compute \\(\varphi\\) by means of
> the <span class="inline-src language-scheme" data-lang="scheme">`fixed-point`</span> procedure.


#### <span class="section-num">2.53.3</span> Answer {#answer}

<a id="code-snippet--golden-ratio"></a>
```scheme { linenos=true, linenostart=1 }
<<close-enough>>
<<fixed-point-txt>>
(define golden-ratio
  (fixed-point (lambda(x)(+ 1 (/ 1 x)))
               1.0))

(display golden-ratio)
```

```text
1.6180327868852458
```


### <span class="section-num">2.54</span> Exercise 1.36 {#exercise-1-dot-36}


#### <span class="section-num">2.54.1</span> Question {#question}

> Modify <span class="inline-src language-scheme" data-lang="scheme">`fixed-point`</span> so that it prints the sequence of approximations
> it generates, using the <span class="inline-src language-scheme" data-lang="scheme">`newline`</span> and <span class="inline-src language-scheme" data-lang="scheme">`display`</span> primitives
> shown in Exercise 1.22. Then find a solution to \\(x^x = 1000\\) by finding a
> fixed point of \\(x \mapsto \log(1000) / \log(x)\\). (Use Scheme's primitive
> <span class="inline-src language-scheme" data-lang="scheme">`log`</span> procedure, which computes natural logarithms.) Compare the
> number of steps this takes with and without average damping. (Note that you
> cannot start <span class="inline-src language-scheme" data-lang="scheme">`fixed-point`</span> with a guess of 1, as this would cause
> division by \\(\log(1) = 0\\).)


#### <span class="section-num">2.54.2</span> Answer {#answer}

Using the <span class="inline-src language-scheme" data-lang="scheme">`display`</span> and <span class="inline-src language-scheme" data-lang="scheme">`newline`</span> functions at any great
extent is pretty exhausting, so I'll use <span class="inline-src language-scheme" data-lang="scheme">`format`</span> instead.

<a id="code-snippet--fixed-point-debug"></a>
```scheme { linenos=true, linenostart=1 }
(use-modules (ice-9 format))
(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (format #t "~&~a~%" next)
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))
```

```scheme { linenos=true, linenostart=1 }
<<close-enough>>
<<fixed-point-debug>>
(fixed-point (lambda(x) (/ (log 1000) (log x))) 1.1)
```

Undamped, fixed-point makes 37 guesses.

```scheme { linenos=true, linenostart=1 }
<<close-enough>>
<<fixed-point-debug>>
(define (average x y)
  (/ (+ x y) 2))
(fixed-point (lambda(x) (average (log x) (/ (log 1000) (log x)))) 1.1)
```

Damped, it makes 21.


### <span class="section-num">2.55</span> Exercise 1.37 {#exercise-1-dot-37}


#### <span class="section-num">2.55.1</span> Question A {#question-a}

> An infinite continued fraction is an expression of the form
>
> $$ {f} = \cfrac{N\_1}{D\_1 + \cfrac{N\_2}{D\_2 + \cfrac{N\_3}{D\_3 + \dots}}} $$
>
> As an example, one can show that the infinite continued fraction expansion with
> the \\(N\_i\\) and the \\(D\_i\\) all equal to 1 produces \\(1 / \varphi\\), where
> \\(\varphi\\) is the golden ratio (described in 1.2.2). One way to approximate an
> infinite continued fraction is to truncate the expansion after a given number of
> terms. Such a truncation---a so-called \\(k\\)-term finite continued
> fraction}---has the form
>
> $$ \cfrac{N\_1}{D\_1 + \cfrac{N\_2}{\ddots + \cfrac{N\_k}{D\_k}}} $$
>
> Suppose that <span class="inline-src language-scheme" data-lang="scheme">`n`</span> and <span class="inline-src language-scheme" data-lang="scheme">`d`</span> are procedures of one argument (the
> term index \\(i\\)) that return the \\(N\_i\\) and \\(D\_i\\) of the terms of the
> continued fraction. Define a procedure <span class="inline-src language-scheme" data-lang="scheme">`cont-frac`</span> such that
> evaluating <span class="inline-src language-scheme" data-lang="scheme">`(cont-frac n d k)`</span> computes the value of the \\(k\\)-term
> finite continued fraction.


#### <span class="section-num">2.55.2</span> Answer A {#answer-a}

A note: the "golden ratio" this code estimates is exactly `1.0` less than the
golden ratio anyone else seems to be talking about.

<a id="code-snippet--cont-frac"></a>
```scheme { linenos=true, linenostart=1 }
(define (cont-frac n d k)
  (define (iter i result)
    (if (= i 0)
        result
        (iter (1- i) (/ (n i) (+ (d i) result)))))

  (iter (1- k) (/ (n k) (d k))))
```


#### <span class="section-num">2.55.3</span> Question B {#question-b}

Check your procedure by approximating \\(1 / \varphi\\) using

```scheme
(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           k)
```

for successive values of <span class="inline-src language-scheme" data-lang="scheme">`k`</span>. How large must you make <span class="inline-src language-scheme" data-lang="scheme">`k`</span> in
order to get an approximation that is accurate to 4 decimal places?


#### <span class="section-num">2.55.4</span> Answer B {#answer-b}

| 1  | -0.3819660112501051     |
|----|-------------------------|
| 2  | 0.1180339887498949      |
| 3  | -0.04863267791677173    |
| 4  | 0.018033988749894814    |
| 5  | -0.0069660112501050975  |
| 6  | 0.0026493733652794837   |
| 7  | -0.0010136302977241662  |
| 8  | 0.00038692992636546464  |
| 9  | -0.00014782943192326314 |
| 10 | 5.6460660007306984e-05  |

{{< figure src="/ox-hugo/1-36-1.png" >}}

\\(k\\) must be at least 10 to get precision of 4 decimal places.


#### <span class="section-num">2.55.5</span> Question C {#question-c}

> If your <span class="inline-src language-scheme" data-lang="scheme">`cont-frac`</span> procedure generates a recursive process, write one
> that generates an iterative process. If it generates an iterative process, write
> one that generates a recursive process.


#### <span class="section-num">2.55.6</span> Answer C {#answer-c}

<a id="code-snippet--cont-frac-rec"></a>
```scheme { linenos=true, linenostart=1 }
(define (cont-frac-rec n d k)
  (define (rec i)
    (if (= i k)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (rec (1+ i))))))

  (rec 1))
```

```scheme { linenos=true, linenostart=1 }
<<cont-frac>>
<<cont-frac-rec>>
(define (golden-ratio k)
  (cont-frac (lambda(i) 1.0)(lambda(i)1.0) k))
(define (golden-ratio-rec k)
  (cont-frac-rec (lambda(i) 1.0)(lambda(i)1.0) k))

(load "mattcheck.scm")
(mattcheck-equal "cont-frac iter and recursive equivalence"
           (golden-ratio-rec 15)
           (golden-ratio 15))
```

```text
SUCCEED at cont-frac iter and recursive equivalence
```


### <span class="section-num">2.56</span> Exercise 1.38 {#exercise-1-dot-38}


#### <span class="section-num">2.56.1</span> Question {#question}

> In 1737, the Swiss mathematician Leonhard Euler published a memoir _De
> Fractionibus Continuis_, which included a continued fraction expansion for \\(e -
> 2\\), where \\(e\\) is the base of the natural logarithms. In this fraction, the
> \\(N\_i\\) are all 1, and the \\(D\_i\\) are successively 1, 2, 1, 1, 4, 1, 1, 6, 1,
> 1, 8, \\(\dots\\). Write a program that uses your <span class="inline-src language-scheme" data-lang="scheme">`cont-frac`</span> procedure
> from Exercise 1.37 to approximate \\(e\\), based on Euler's expansion.


#### <span class="section-num">2.56.2</span> Answer {#answer}

```scheme { linenos=true, linenostart=1 }
<<cont-frac>>
(define (euler k)
  (+ 2
     (cont-frac (lambda(i) 1.0)
             (lambda(i) (let ((j (1+ i)))
                     (if (= 0 (modulo j 3))
                         (* 2 (/ j 3))
                         1)))
             k)))

(euler 100)
```

```text
2.7182818284590455
```


### <span class="section-num">2.57</span> Exercise 1.39 {#exercise-1-dot-39}


#### <span class="section-num">2.57.1</span> Question {#question}

> A continued fraction representation of the tangent function was published in
> 1770 by the German mathematician J.H. Lambert:
>
> $$ {\tan x} = \cfrac{x}{1 - \cfrac{x^2}{3 - \cfrac{x^2}{5 - \dots}}} $$
>
> where \\(x\\) is in radians. Define a procedure <span class="inline-src language-scheme" data-lang="scheme">`(tan-cf x k)`</span> that
> computes an approximation to the tangent function based on Lambert's formula.
> <span class="inline-src language-scheme" data-lang="scheme">`k`</span> specifies the number of terms to compute, as in Exercise 1.37.


#### <span class="section-num">2.57.2</span> Answer {#answer}

```scheme { linenos=true, linenostart=1 }
<<cont-frac>>
(define (tan-cf x k)
  (cont-frac (lambda(i) (if (= i 1)
                       x
                       (* x x -1.0)))
             (lambda(i) (if (= i 1)
                       1.0
                       (- (* i 2.0) 1.0)))
             k))

(tan-cf 55 101)
```

```text
-45.1830879105221
```


### <span class="section-num">2.58</span> 1.3.4 Procedures as Returned Values {#1-dot-3-dot-4-procedures-as-returned-values}

Procedures can return other procedures, which opens up new ways to express
processes.

> Newton's Method: \\(g(x)=0\\) is a fixed point of the function \\(x \mapsto f(x)\\)
> where $$f(x)=x-\frac{g(x)}{Dg(x)}$$
>
> Where \\(x \mapsto g(x)\\) is a differentiable function and \\(Dg(x)\\) is the
> derivative of \\(g\\) evaluated at \\(x\\).


### <span class="section-num">2.59</span> Exercise 1.40 {#exercise-1-dot-40}


#### <span class="section-num">2.59.1</span> Text {#text}

<a id="code-snippet--average-damp"></a>
```scheme { linenos=true, linenostart=1 }
(define (average-damp f)
  (lambda (x) (average x (f x))))
```

<a id="code-snippet--dx"></a>
```scheme { linenos=true, linenostart=1 }
(define dx 0.00001)
```

<a id="code-snippet--deriv"></a>
```scheme { linenos=true, linenostart=1 }
(define (deriv g)
  (lambda (x) (/ (- (g (+ x dx)) (g x)) dx)))
```

<a id="code-snippet--newtons-method"></a>
```scheme { linenos=true, linenostart=1 }
(define (newton-transform g)
  (lambda (x) (- x (/ (g x) ((deriv g) x)))))
(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))
```

<a id="code-snippet--newtons-method-txt"></a>
```scheme { linenos=true, linenostart=1 }
<<average>>
<<average-damp>>
<<dx>>
<<deriv>>
<<newtons-method>>
```


#### <span class="section-num">2.59.2</span> Question {#question}

> Define a procedure <span class="inline-src language-scheme" data-lang="scheme">`cubic`</span> that can be used together with the
> <span class="inline-src language-scheme" data-lang="scheme">`newtons-method`</span> procedure in expressions of the form:

```scheme
(newtons-method (cubic a b c) 1)
```

> to approximate zeros of the cubic \\(x^3 + ax^2 + bx + c\\).


#### <span class="section-num">2.59.3</span> Answer {#answer}

<a id="code-snippet--cubic"></a>
```scheme { linenos=true, linenostart=1 }
(define (cubic a b c)
  (lambda (x)
    (+ (expt x 3)
       (* a (expt x 2))
       (* b x)
       c)))
```

<a id="code-snippet--cubic-zero"></a>
```scheme { linenos=true, linenostart=1 }
(define (cubic-zero a b c)
  (newtons-method (cubic a b c) 1))
```

```scheme { linenos=true, linenostart=1 }
<<fixed-point-txt>>
<<newtons-method-txt>>
<<cubic>>
<<cubic-zero>>

(cubic-zero 2 3 4)
```


### <span class="section-num">2.60</span> Exercise 1.41 {#exercise-1-dot-41}


#### <span class="section-num">2.60.1</span> Question {#question}

> Define a procedure <span class="inline-src language-scheme" data-lang="scheme">`double`</span> that takes a procedure of one argument as
> argument and returns a procedure that applies the original procedure twice. For
> example, if <span class="inline-src language-scheme" data-lang="scheme">`inc`</span> is a procedure that adds 1 to its argument, then
> <span class="inline-src language-scheme" data-lang="scheme">`(double inc)`</span> should be a procedure that adds 2. What value is
> returned by

<a id="code-snippet--Ex1-41"></a>
```scheme
(((double (double double)) inc) 5)
```


#### <span class="section-num">2.60.2</span> Answer {#answer}

<a id="code-snippet--double"></a>
```scheme
(define (double f)
  (lambda (x)
    (f (f x))))
```

```scheme
(define inc 1+)
<<double>>
<<Ex1-41>>
```

```text
21
```


### <span class="section-num">2.61</span> Exercise 1.42 {#exercise-1-dot-42}


#### <span class="section-num">2.61.1</span> Question {#question}

> Let \\(f\\) and \\(g\\) be two one-argument functions. The composition \\(f\\) after
> \\(g\\) is defined to be the function \\(x \mapsto f(g(x))\\). Define a procedure
> <span class="inline-src language-scheme" data-lang="scheme">`compose`</span> that implements composition.


#### <span class="section-num">2.61.2</span> Answer {#answer}

<a id="code-snippet--compose"></a>
```scheme
(define (compose f g)
  (lambda(x)
    (f (g x))))
```

```scheme
<<compose>>
<<square>>
(define inc 1+)
((compose square inc) 6)
```

```text
49
```


### <span class="section-num">2.62</span> Exercise 1.43 {#exercise-1-dot-43}


#### <span class="section-num">2.62.1</span> Question {#question}

> If \\(f\\) is a numerical function
> and \\(n\\) is a positive integer, then we can form the \\(n^{\mathrm{th}}\\) repeated
> application of \\(f\\), which is defined to be the function whose value at \\(x\\)
> is \\(f(f(\dots (f(x))\dots ))\\).  For example, if \\(f\\) is the
> function \\(x \mapsto x + 1\\), then the \\(n^{\mathrm{th}}\\) repeated application of \\(f\\) is
> the function \\(x \mapsto x + n\\).  If \\(f\\) is the operation of squaring a
> number, then the \\(n^{\mathrm{th}}\\) repeated application of \\(f\\) is the function that
> raises its argument to the \\(2^n\\)-th power.  Write a procedure that takes as
> inputs a procedure that computes \\(f\\) and a positive integer \\(n\\) and returns
> the procedure that computes the \\(n^{\mathrm{th}}\\) repeated application of \\(f\\).


#### <span class="section-num">2.62.2</span> Answer {#answer}

<a id="code-snippet--repeated"></a>
```scheme
<<compose>>
(define (repeated f n)
  (if (= n 1)
      f
      (repeated (compose f f)
                (- n 1))))
```

```scheme
<<square>>
<<repeated>>
(if (= ((repeated square 2) 5) 625)
    "Success"
    "Fail")
```

```text
Success
```


### <span class="section-num">2.63</span> Exercise 1.44 {#exercise-1-dot-44}


#### <span class="section-num">2.63.1</span> Question {#question}

> The idea of smoothing a function is an important concept in signal processing.
> If \\(f\\) is a function and \\(dx\\) is some small number, then the smoothed
> version of \\(f\\) is the function whose value at a point \\(x\\) is the average of
> \\(f(x - dx)\\), \\(f(x)\\), and \\(f(x + dx)\\). Write a procedure <span class="inline-src language-scheme" data-lang="scheme">`smooth`</span>
> that takes as input a procedure that computes \\(f\\) and returns a procedure that
> computes the smoothed \\(f\\). It is sometimes valuable to repeatedly smooth a
> function (that is, smooth the smoothed function, and so on) to obtain the
> \\(n\\)-fold smoothed function. Show how to generate the \\(n\\)-fold smoothed
> function of any given function using <span class="inline-src language-scheme" data-lang="scheme">`smooth`</span> and <span class="inline-src language-scheme" data-lang="scheme">`repeated`</span>
> from Exercise 1.43.


#### <span class="section-num">2.63.2</span> Answer {#answer}

<a id="code-snippet--smooth"></a>
```scheme
<<average-varargs>>
(define (smooth f)
  (lambda(x)
    (average (f (- x dx))
             (f x)
             (f (+ x dx)))))
(define (smooth-n f n)
  ((repeated smooth n) f))
```


### <span class="section-num">2.64</span> Exercise 1.45 {#exercise-1-dot-45}


#### <span class="section-num">2.64.1</span> Question {#question}

> We saw in 1.3.3 that attempting to compute square roots by naively finding a
> fixed point of \\(y \mapsto x / y\\) does not converge, and that this can be fixed
> by average damping. The same method works for finding cube roots as fixed points
> of the average-damped \\(y \mapsto x / y^2\\). Unfortunately, the process does not
> work for fourth roots---a single average damp is not enough to make a
> fixed-point search for \\(y \mapsto x / y^3\\) converge. On the other hand, if we
> average damp twice (i.e., use the average damp of the average damp of \\(y
> \mapsto x / y^3\\)) the fixed-point search does converge. Do some experiments to
> determine how many average damps are required to compute \\(n^{\mathrm{th}}\\)
> roots as a fixed-point search based upon repeated average damping of \\(y \mapsto
> x / y^{n-1}\\). Use this to implement a simple procedure for computing
> \\(n^{\mathrm{th}}\\) roots using <span class="inline-src language-scheme" data-lang="scheme">`fixed-point~, ~average-damp`</span>, and the
> <span class="inline-src language-scheme" data-lang="scheme">`repeated`</span> procedure of Exercise 1.43. Assume that any arithmetic
> operations you need are available as primitives.


#### <span class="section-num">2.64.2</span> Answer {#answer}

So this is strange. Back in my original workthrough of this book, I'd decided
that finding an \\(n\\)th root required \\(\lfloor\sqrt{n}\rfloor\\) dampings. With
a solution like this:

```scheme
<<fixed-point-txt>>
<<repeated>>
<<average-damp>>
(define (sqrt n)
  (fixed-point
   (average-damp
    (lambda (y)
      (/ x y)))
   1.0))
(define (nth-root x n)
  (fixed-point
   ((repeated average-damp (ceiling (sqrt n)))
    (lambda (y)
      (/ x (expt y (- n 1)))))
   1.0))
```

While this solution appears to work fine, my experiments are suggesting that it
takes _less_ than \\(\lfloor\sqrt{n}\rfloor\\). For example, I originally thought
powers of 16 required four dampings, but this code isn't failing until it
reaches powers of 32.

<a id="code-snippet--repeated-z"></a>
```scheme
;; Version of "repeated" that can handle being asked to repeat zero times.
<<compose>>
<<identity>>
(define (repeated f n)
  (define (rec m)
  (if (= n 1)
      f
      (repeated (compose f f)
                (- n 1))))
  (if (= n 0)
      identity
      (rec n)))
```

<a id="code-snippet--limited-fixed-point"></a>
```scheme
;; version of "fixed-point" that will give up after a certain number of guesses.
(define (limited-fixed-point f first-guess)
  (define limit 5000)
  (define tolerance 0.00000001)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess tries)
    (if (= tries limit)
        "LIMIT REACHED"
        (let ((next (f guess)))
          (if (close-enough? guess next)
              next
              (try next (+ 1 tries))))))
    (try first-guess 1))
```

Let's automatically find how many dampings are necessary. We can make a program
that finds higher and higher \\(n\\)th roots, and adds another layer of damping
when it hits the error. It returns a list of \\(n\\)th roots along with how many
dampings were needed to find them.

<a id="code-snippet--nthtester"></a>
```scheme
<<fixed-point-txt>>
<<limited-fixed-point>>
<<repeated>>
<<average-damp>>
<<average>>
<<print-table>>
(define (sqrt x)
  (fixed-point
   (average-damp
    (lambda (y) (/ x y)))
   1.0))
(define (nth-tester base n-max)
  (define (iter ll)
    (let ((n (+ 2 (length ll))))
      (define (try damps)
        (let ((x (limited-fixed-point
                  ((repeated average-damp damps)
                   (lambda (y)
                     (/ base (expt y (- n 1)))))
                  1.1)))
          (if (string? x)
              (try (1+ damps))
              (list base n x damps))))
      (if (> n n-max)
          ll
          (iter (cons (try 1) ll)))))

  (iter '()))
(let* ((t (reverse (nth-tester 3 65))))
  (cons '("root" "result" "damps needed" "floor(sqrt(root))" "floor(log2(root))")
        (map (lambda(x)
               (append x
                       (list (floor (sqrt (car x)))
                             (floor (/ (log (car x))(log 2))))))
             (map cdr t))))
```

{{< figure src="/ox-hugo/1-45-1.png" >}}

I've spent too much time on this problem already but I have to wonder about
floating-point issues, given that they are the core of the
<span class="inline-src language-scheme" data-lang="scheme">`good-enough`</span> procedure. I have to wonder whether a
<span class="inline-src language-scheme" data-lang="scheme">`fixed-point`</span> version that replaces the <span class="inline-src language-scheme" data-lang="scheme">`tolerance`</span> decision
making, and instead retains the last three guesses and checks for a loop. (TODO)


### <span class="section-num">2.65</span> Exercise 1.46 {#exercise-1-dot-46}


#### <span class="section-num">2.65.1</span> Question {#question}

> Several of the numerical methods described in this chapter are instances of an
> extremely general computational strategy known as _iterative improvement_.
> Iterative improvement says that, to compute something, we start with an initial
> guess for the answer, test if the guess is good enough, and otherwise improve
> the guess and continue the process using the improved guess as the new guess.
> Write a procedure <span class="inline-src language-scheme" data-lang="scheme">`iterative-improve`</span> that takes two procedures as
> arguments: a method for telling whether a guess is good enough and a method for
> improving a guess. <span class="inline-src language-scheme" data-lang="scheme">`iterative-improve`</span> should return as its value a
> procedure that takes a guess as argument and keeps improving the guess until it
> is good enough. Rewrite the <span class="inline-src language-scheme" data-lang="scheme">`sqrt`</span> procedure of 1.1.7 and the
> <span class="inline-src language-scheme" data-lang="scheme">`fixed-point`</span> procedure of 1.3.3 in terms of
> <span class="inline-src language-scheme" data-lang="scheme">`iterative-improve`</span>.


#### <span class="section-num">2.65.2</span> Answer {#answer}

<a id="code-snippet--iterative-improve"></a>
```scheme { linenos=true, linenostart=1 }
(define (iterative-improve good-enough? improve)
  (define (iter guess)
    (let ((next (improve guess)))
      (if (good-enough? guess next)
          next
          (iter next))))
  iter)
```

<a id="code-snippet--fixed-point-improve"></a>
```scheme { linenos=true, linenostart=1 }
<<iterative-improve>>
(define tolerance 0.00001)

(define (fixed-point-improve f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  ((iterative-improve
    close-enough?
    f)
   first-guess))
```

<a id="code-snippet--sqrt-improve"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
<<average>>
<<iterative-improve>>
(define (improve guess x)
  (average guess (/ x guess)))
(define (good-enough? next x)
  ;;   (= guess next)) ;; no longer works with this method
  (< (abs (- (square next) x)) 0.001))
(define (sqrt-improve x)
  ((iterative-improve
    (lambda(guess next)(good-enough? next x))
    (lambda(guess) (improve guess x)))
   1.0))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<fixed-point-txt>>
<<fixed-point-improve>>
(mattcheck "fixed-point-improve still working"
                 (fixed-point (lambda(x)(+ 1 (/ 1 x))) 1.1)
                 (fixed-point-improve (lambda(x)(+ 1 (/ 1 x))) 1.1))
<<sqrt>>
<<sqrt-improve>>
(mattcheck "sqrt-improve still working"
                 (sqrt 5)
                 (sqrt-improve 5))
```

```text
SUCCEED at fixed-point-improve still working
SUCCEED at sqrt-improve still working
```


## <span class="section-num">3</span> Chapter 2: Building Abstractions with Data {#chapter-2-building-abstractions-with-data}

The basic representations of data we've used so far aren't enough to deal with
complex, real-world phenomena. We need to combine these representations to form
**compound data**.

The technique of isolating how data objects are _represented_ from how they are
_used_ is called **data abstraction**.


### <span class="section-num">3.1</span> 2.1.1: Example: Arithmetic Operations for Rational Numbers {#2-dot-1-dot-1-example-arithmetic-operations-for-rational-numbers}

Lisp gives the procedures <span class="inline-src language-scheme" data-lang="scheme">`cons`</span>, <span class="inline-src language-scheme" data-lang="scheme">`car`</span>, and <span class="inline-src language-scheme" data-lang="scheme">`cdr`</span>
to create **pairs**. This is an easy system for representing rational numbers.

Note that the system proposed for representing and working with rational numbers
has **abstraction barriers** isolating different parts of the system. The parts
that use rational numbers don't know how the constructors and selectors for
rational numbers work, and the constructors and selectors use the underlying
Lisp interpreter's pair functions without caring how they work.

Note that these abstraction layers allow the developer to change the underlying
architecture without modifying the programs that depend on it.


### <span class="section-num">3.2</span> Exercise 2.1 {#exercise-2-dot-1}


#### <span class="section-num">3.2.1</span> Text {#text}

<a id="code-snippet--rat-ops-txt"></a>
```scheme { linenos=true, linenostart=1 }
(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))
```

<a id="code-snippet--make-rat-txt"></a>
```scheme { linenos=true, linenostart=1 }
(define (make-rat n d) (cons n d))
(define (numer x) (car x))
(define (denom x) (cdr x))
```

<a id="code-snippet--print-rat-txt"></a>
```scheme { linenos=true, linenostart=1 }
(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))
```

<a id="code-snippet--test-rats"></a>
```scheme { linenos=true, linenostart=1 }
(define one-half (make-rat 1 2))
(define one-third (make-rat 1 3))
(print-rat one-half)
(print-rat
 (mul-rat one-half one-third))
```

```text
1/2
1/6
```


#### <span class="section-num">3.2.2</span> Question {#question}

> Define a better version of <span class="inline-src language-scheme" data-lang="scheme">`make-rat`</span> that handles both positive and
> negative arguments. <span class="inline-src language-scheme" data-lang="scheme">`make-rat`</span> should normalize the sign so that if
> the rational number is positive, both the numerator and denominator are
> positive, and if the rational number is negative, only the numerator is
> negative.


#### <span class="section-num">3.2.3</span> Answer {#answer}

<a id="code-snippet--make-rat"></a>
```scheme { linenos=true, linenostart=1 }
<<abs>>
(define (make-rat n d)
  (cond ((not (or (< n 0)
              (< d 0)))
         (cons n d))
        ((and (< n 0)
              (< d 0))
         (cons (- n) (- d)))
        (else
         (cons (- (abs n)) (abs d)))))
(define (numer x) (car x))
(define (denom x) (cdr x))

;; Bonus: an attempt to optimize
(define (make-rat-opt n d)
  (let ((nn (< n 0))
        (dn (< d 0)))
    (cond ((not (or nn dn))
           (cons n d))
          ((and nn dn)
           (cons (- n) (- d)))
          (else
           (cons (- (abs n)) (abs d))))))
```

```scheme { linenos=true, linenostart=1 }
<<make-rat>>
<<print-rat-txt>>
<<rat-ops-txt>>
(load "mattcheck2.scm")
(mattcheck "make-rat double negative"
           (cons 1 2)
           (make-rat -1 -2))
(mattcheck "make-rat numerator negative"
           (cons -1 2)
           (make-rat -1 2))
(mattcheck "make-rat denominator negative"
           (cons -1 2)
           (make-rat 1 -2))
(mattcheck "make-rat-opt double negative"
           (cons 1 2)
           (make-rat-opt -1 -2))
(mattcheck "make-rat-opt numerator negative"
           (cons -1 2)
           (make-rat-opt -1 2))
(mattcheck "make-rat-opt denominator negative"
           (cons -1 2)
           (make-rat-opt 1 -2))
```

```text
SUCCEED at make-rat double negative
SUCCEED at make-rat numerator negative
SUCCEED at make-rat denominator negative
SUCCEED at make-rat-opt double negative
SUCCEED at make-rat-opt numerator negative
SUCCEED at make-rat-opt denominator negative
```

My "optimized" version shows no benefit at all:

```text
unoptimized make-rat: ((1 . 2) 231.74267794)
optimized make-rat: ((1 . 2) 233.99087033)
```


### <span class="section-num">3.3</span> Exercise 2.2 {#exercise-2-dot-2}


#### <span class="section-num">3.3.1</span> Question {#question}

> Consider the problem of representing line segments in a plane. Each segment is
> represented as a pair of points: a starting point and an ending point. Define a
> constructor <span class="inline-src language-scheme" data-lang="scheme">`make-segment`</span> and selectors <span class="inline-src language-scheme" data-lang="scheme">`start-segment`</span> and
> <span class="inline-src language-scheme" data-lang="scheme">`end-segment`</span> that define the representation of segments in terms of
> points. Furthermore, a point can be represented as a pair of numbers: the \\(x\\)
> coordinate and the \\(y\\) coordinate. Accordingly, specify a constructor
> <span class="inline-src language-scheme" data-lang="scheme">`make-point`</span> and selectors <span class="inline-src language-scheme" data-lang="scheme">`x-point`</span> and <span class="inline-src language-scheme" data-lang="scheme">`y-point`</span>
> that define this representation. Finally, using your selectors and constructors,
> define a procedure <span class="inline-src language-scheme" data-lang="scheme">`midpoint-segment`</span> that takes a line segment as
> argument and returns its midpoint (the point whose coordinates are the average
> of the coordinates of the endpoints). To try your procedures, you'll need a way
> to print points:

<a id="code-snippet--print-point"></a>
```scheme { linenos=true, linenostart=1 }
(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))
```


#### <span class="section-num">3.3.2</span> Answer {#answer}

<a id="code-snippet--make-point"></a>
```scheme { linenos=true, linenostart=1 }
<<average>>
(define (make-point x y)
  (cons x y))
(define (x-point p)
  (car p))
(define (y-point p)
  (cdr p))
(define (make-segment start end)
  (cons start end))
(define (start-segment seg)
  (car seg))
(define (end-segment seg)
  (cdr seg))
(define (midpoint-segment seg)
  (make-point (average (x-point (start-segment seg))
                       (x-point (end-segment seg)))
              (average (y-point (start-segment seg))
                       (y-point (end-segment seg)))))
(define (midpoint-segment-opt seg)
  (let ((ax (x-point (start-segment seg)))
        (bx (x-point (end-segment seg)))
        (ay (y-point (start-segment seg)))
        (by (y-point (end-segment seg))))
  (make-point (average ax
                       bx)
              (average ay
                       by))))
```

<a id="code-snippet--midpoint-segment-test"></a>
```scheme { linenos=true, linenostart=1 }
<<make-point>>
(load "mattcheck2.scm")
(mattcheck "make-point"
           (list 1 2)
           (let ((p (make-point 1 2)))
             (list (x-point p)
                   (y-point p))))
(let* ((p1 (make-point 1 2))
      (p2 (make-point -1 -2))
      (s (make-segment p1 p2)))
  (mattcheck "make-segment"
             (list p1 p2)
             (list (start-segment s)
                   (end-segment s)))
  (mattcheck "midpoint-segment"
              (make-point 0 0)
              (midpoint-segment s))
  (mattcheck "midpoint-segment-opt"
              (make-point 0 0)
              (midpoint-segment-opt s)))
```

```text
SUCCEED at make-point
SUCCEED at make-segment
SUCCEED at midpoint-segment
SUCCEED at midpoint-segment-opt
```

And once again my bikeshedding is revealed:

```text
unoptimized make-rat: ((0.0 . 0.0) 326.94653558)
optimized make-rat: ((0.0 . 0.0) 331.83410742)
```


### <span class="section-num">3.4</span> Exercise 2.3 {#exercise-2-dot-3}


#### <span class="section-num">3.4.1</span> Question {#question}

> Implement a representation for rectangles in a plane. (Hint: You may want to
> make use of Exercise 2.2.) In terms of your constructors and selectors, create
> procedures that compute the perimeter and the area of a given rectangle. Now
> implement a different representation for rectangles. Can you design your system
> with suitable abstraction barriers, so that the same perimeter and area
> procedures will work using either representation?


#### <span class="section-num">3.4.2</span> Answer 1 {#answer-1}

I don't really like the "wishful thinking" process the book advocates but since
this question specifically regards abstraction, I'll start by writing the two
requested procedures first.

<a id="code-snippet--rect-area-peri"></a>
```scheme { linenos=true, linenostart=1 }
(define (rect-area R)
  (* (rect-height R)
     (rect-width R)))

(define (rect-peri R)
  (* 2
     (+ (rect-height R)
        (rect-width R))))
```

So my "wishlist" is just for <span class="inline-src language-scheme" data-lang="scheme">`(rect-area R)`</span> and <span class="inline-src language-scheme" data-lang="scheme">`(rect-width R)`</span>.

So, my first implementation of a rectangle will be of a list of 3 points
\\(\mathrm{ABC}\\), with the fourth point \\(\mathrm{D}\\) being constructed from
the others. I haven't done geometry lessons in a while but logically I can
deduce that \\(\mathrm{D}\\) is as far from \\(\mathrm{A}\\) as \\(\mathrm{B}\\) is
from \\(\mathrm{C}\\), and as far from \\(\mathrm{C}\\) as \\(\mathrm{A}\\) is from
\\(\mathrm{B}\\). by experimentation I've figured out that
\\(\mathrm{D}=\mathrm{A} + (\mathrm{C}-\mathrm{B})=\mathrm{C} +
(\mathrm{A}-\mathrm{B})\\).

<a id="code-snippet--rect-4pt"></a>
```scheme { linenos=true, linenostart=1 }
;;   AB = width
;;(0,1) (1,1)
;; A-----B
;; |     | BC = height
;; D-----C
;;(0,0) (1,0)
;; could be rotated any direction
<<square>>
<<make-point>>
(define (make-rect a b c)
  (cons (cons a b) c))
(define (rect-a R)
  (caar R))
(define (rect-b R)
  (cdar R))
(define (rect-c R)
  (cdr R))
;(define (rect-d R)
;  (make-point (x-point (rect-a R))
;              (y-point (rect-c R))))
;; Wait, this won't work if the rectangle is angled.

(define (sub-points a b)
  (make-point (- (x-point a)
                 (x-point b))
              (- (y-point a)
                 (y-point b))))

(define (add-points a b)
  (make-point (+ (x-point a)
                 (x-point b))
              (+ (y-point a)
                 (y-point b))))

(define (rect-d R)
  (let ((a (rect-a R))
        (b (rect-b R))
        (c (rect-c R)))
    (add-points a
                (sub-points c b))))
(define (rect-d-alt R) ; should be mathematically identical.
  (let ((a (rect-a R))
        (b (rect-b R))
        (c (rect-c R)))
    (add-points c
                (sub-points a b))))

;; this is incorrect
;(define (length-points a b)
;  (let ((diffP (sub-points a b)))
;    (+ (abs (x-point diffP))
;       (abs (y-point diffP)))))
(define (length-points a b)
  (let ((ax (x-point a))
        (ay (y-point a))
        (bx (x-point b))
        (by (y-point b)))
    (sqrt (+ (square (- ax bx))
          (square (- ay by))))))

(define (rect-height R)
  (abs (length-points (rect-b R)
                 (rect-c R))))
(define (rect-width R)
  (abs (length-points (rect-b R)
                 (rect-a R))))

(define (length-segment seg)
  (abs (length-points (start-segment seg)
                 (end-segment seg))))
```

<a id="code-snippet--rect-test"></a>
```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")

<<rect-4pt>>
<<rect-area-peri>>

(let* ((a (make-point 13 14))
       (b (make-point 14 14))
       (c (make-point 14 13))
       (d (make-point 13 13))
       (ABC (make-rect a b c))
       (CDA (make-rect c d a))
       (w (make-point -2.0 -2.0))
       (x (make-point -0.5 -0.5))
       (y (make-point -1.5 0.5))
       (z (make-point -3.0 -1.0))
       (WXY (make-rect w x y)))
  (mattcheck "make-rect"
             ABC
             (cons (cons a b) c))
  (mattcheck "rect-d and rect-d-alt (ABCD)"
             (rect-d ABC)
             (rect-d-alt ABC)
             d)
  (mattcheck "rect-d and rect-d-alt (CDAB)"
             (rect-d CDA)
             (rect-d-alt CDA)
             b)
  (mattcheck "rect-d and rect-d-alt (WXYZ)"
             (rect-d WXY)
             (rect-d-alt WXY)
             z)
  (mattcheck "rect-d and rect-d-alt (XYZW)"
             (rect-d (make-rect x y z))
             w)
  (mattcheck "rect-height ABC"
             (rect-height ABC)
             1)
  (mattcheck "rect-width ABC"
             (rect-width ABC)
             1)
  (mattcheck "rect-height WXY"
             (rect-height WXY)
             1.4142135623730951)
  (mattcheck "rect-width WXY"
             (rect-width WXY)
             2.1213203435596424)
  (mattcheck "rect-area ABCD"
             (rect-area ABC)
             (rect-area CDA)
             1)
  (mattcheck "rect-area WXYZ"
             (rect-area WXY)
             3.0)
  (mattcheck "rect-peri ABCD"
             (rect-peri ABC)
             4)
  (mattcheck "rect-peri WXYZ"
             (rect-peri WXY)
             7.0710678118654755))
```

```text
SUCCEED at make-rect
SUCCEED at rect-d and rect-d-alt (ABCD)
SUCCEED at rect-d and rect-d-alt (CDAB)
SUCCEED at rect-d and rect-d-alt (WXYZ)
SUCCEED at rect-d and rect-d-alt (XYZW)
SUCCEED at rect-height ABC
SUCCEED at rect-width ABC
SUCCEED at rect-height WXY
SUCCEED at rect-width WXY
SUCCEED at rect-area ABCD
SUCCEED at rect-area WXYZ
SUCCEED at rect-peri ABCD
SUCCEED at rect-peri WXYZ
```


#### <span class="section-num">3.4.3</span> Answer 2 {#answer-2}

My second implementation will be of a rectangle as an origin, height, width, and
angle. Basically, height and width are two vectors originating from origin, with
width going straight right and height offset \\(90\deg\\) from width. Angle is
added during conversion from Polar to Cartesian coordinates. In relation to my
1st implementation, point D is where the origin is.

<a id="code-snippet--rect-ohwa"></a>
```scheme { linenos=true, linenostart=1 }
<<make-point>>
;; origin is a (make-point), hwa are floats
(define (make-rect origin height width angle)
  (cons (cons origin height)
        (cons width angle)))

(define (rect-origin R)
  (caar R))
(define rect-d rect-origin)
(define (rect-height R)
  (cdar R))
(define (rect-width R)
  (cadr R))
(define (rect-angle R)
  (cddr R))

;; I underestimated how much math this would take.
(define (add-points a b)
  (make-point (+ (x-point a)
                 (x-point b))
              (+ (y-point a)
                 (y-point b))))

(define pi (* 4 (atan 1.0)))
(define (radian deg)
  (* deg (/ pi 180.0)))
(define (vector-to-xy distance angle)
      ;; rect-c: (cos(Theta),sin(Theta)) * width
      (make-point (* (cos (radian angle))
                     distance)
                  (* (sin (radian angle))
                     distance)))
      ;; could also be rotated by 90 degrees just by using
      ;;   (-sin(Theta),cos(Theta)) * height
(define (rect-c R)
  (add-points
   (rect-origin R)
   (vector-to-xy (rect-width R) (rect-angle R))))
(define (rect-a R)
  (add-points
   (rect-origin R)
   (vector-to-xy (rect-height R)
                 (+ 90 (rect-angle R)))))
(define (rect-b R)
  (add-points
   (rect-origin R)
   (add-points
    (vector-to-xy (rect-width R) (rect-angle R))
    (vector-to-xy (rect-height R)
                  (+ 90 (rect-angle R))))))
```

<a id="code-snippet--rect-test2"></a>
```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")

<<rect-ohwa>>
<<rect-area-peri>>

(let* ((a (make-point 13.0 14.0))
       (b (make-point 14.0 14.0))
       (c (make-point 14.0 13.0))
       (d (make-point 13.0 13.0))
       (ABC (make-rect d 1 1 0))
       (CDA (make-rect b 1 1 180))
       (w (make-point -2.0 -2.0))
       (x (make-point -2.5 1.5))
       (y (make-point -1.5 0.5))
       (z (make-point -3.0 -1.0))
       (wxy-height 1.4142135623730951)
       (wxy-width 2.1213203435596424)
       (WXY (make-rect z wxy-height wxy-width 45)))
  (mattcheck "make-rect"
             ABC
             (cons (cons d 1) (cons 1 0)))
  (mattcheck "rect-b (ABCD)"
             (rect-b ABC)
             b)
  (mattcheck "rect-b (CDAB)"
             (rect-b CDA)
             d)
  (mattcheck "rect-b (WXYZ)"
             (rect-b WXY)
             x)
  (mattcheck "rect-height"
             (rect-height WXY)
             wxy-height)
  (mattcheck "rect-width"
             (rect-width WXY)
             wxy-width)
  (mattcheck "rect-area ABCD"
             (rect-area ABC)
             (rect-area CDA)
             1)
  (mattcheck "rect-area WXYZ"
             (rect-area WXY)
             3.0)
  (mattcheck "rect-peri ABCD"
             (rect-peri ABC)
             4)
  (mattcheck "rect-peri WXYZ"
             (rect-peri WXY)
             7.0710678118654755))
```

```text
SUCCEED at make-rect
SUCCEED at rect-b (ABCD)
SUCCEED at rect-b (CDAB)
SUCCEED at rect-b (WXYZ)
SUCCEED at rect-height
SUCCEED at rect-width
SUCCEED at rect-area ABCD
SUCCEED at rect-area WXYZ
SUCCEED at rect-peri ABCD
SUCCEED at rect-peri WXYZ
```


### <span class="section-num">3.5</span> 2.1.3: What Is Meant by Data? {#2-dot-1-dot-3-what-is-meant-by-data}

We can consider data as being a collection of selectors and constructors,
together with specific conditions that these procedures must fulfill in order to
be a valid representation. For example, in the case of our rational number
implementation, for rational number \\(x\\) made with numerator \\(n\\) and
denominator \\(d\\), dividing the result of <span class="inline-src language-scheme" data-lang="scheme">`(numer x)`</span> over the result
of <span class="inline-src language-scheme" data-lang="scheme">`(denom x)`</span> should be equivalent to dividing \\(n\\) over \\(d\\).


### <span class="section-num">3.6</span> Exercise 2.4 {#exercise-2-dot-4}


#### <span class="section-num">3.6.1</span> Question {#question}

> Here is an alternative procedural representation of pairs. For this
> representation, verify that <span class="inline-src language-scheme" data-lang="scheme">`(car (cons x y))`</span> yields <span class="inline-src language-scheme" data-lang="scheme">`x`</span> for any
> objects <span class="inline-src language-scheme" data-lang="scheme">`x`</span> and <span class="inline-src language-scheme" data-lang="scheme">`y`</span>.

<a id="code-snippet--alt-pairs-txt"></a>
```scheme { linenos=true, linenostart=1 }
(define (cons x y)
  (lambda (m) (m x y)))
(define (car z)
  (z (lambda (p q) p)))
```

> What is the corresponding definition of <span class="inline-src language-scheme" data-lang="scheme">`cdr`</span>? (Hint: To verify that
> this works, make use of the substitution model of 1.1.5.)


#### <span class="section-num">3.6.2</span> Answer {#answer}

First, let's explain with the substitution model.

```scheme { linenos=true, linenostart=1 }
(cons 0 1)
(lambda (m) (m 0 1))

(car (lambda (m) (m 0 1)))
((lambda (m) (m 0 1)) (lambda (p q) p))
(lambda (0 1) 0)
0
(cdr (lambda (m) (m 0 1)))
((lambda (m) (m 0 1)) (lambda (p q) q))
(lambda (0 1) 1)
1
```

Now for implementation.

<a id="code-snippet--alt-pairs"></a>
```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<alt-pairs-txt>>
(define (cdr z)
  (z (lambda (p q) q)))

(let ((pair (cons 0 1)))
  (mattcheck "car"
             (car pair)
             0)
  (mattcheck "cdr"
             (cdr pair)
             1))
```

```text
| (0 . 0) | (0 . 1) | (0 . 2) | (0 . 3) | (0 . 4) | (0 . 5) | (0 . 6) |
| (1 . 0) | (1 . 1) | (1 . 2) | (1 . 3) | (1 . 4) | (1 . 5) | (1 . 6) |
| (2 . 0) | (2 . 1) | (2 . 2) | (2 . 3) | (2 . 4) | (2 . 5) | (2 . 6) |
| (3 . 0) | (3 . 1) | (3 . 2) | (3 . 3) | (3 . 4) | (3 . 5) | (3 . 6) |
| (4 . 0) | (4 . 1) | (4 . 2) | (4 . 3) | (4 . 4) | (4 . 5) | (4 . 6) |
| (5 . 0) | (5 . 1) | (5 . 2) | (5 . 3) | (5 . 4) | (5 . 5) | (5 . 6) |
| (6 . 0) | (6 . 1) | (6 . 2) | (6 . 3) | (6 . 4) | (6 . 5) | (6 . 6) |
```


### <span class="section-num">3.7</span> Exercise 2.5 <span class="tag"><span class="optional">optional</span></span> {#exercise-2-dot-5}


#### <span class="section-num">3.7.1</span> Question {#question}

> Show that we can represent pairs of nonnegative integers using only numbers and
> arithmetic operations if we represent the pair \\(a\\) and \\(b\\) as the integer
> that is the product \\(2^a 3^b\\). Give the corresponding definitions of the
> procedures <span class="inline-src language-scheme" data-lang="scheme">`cons`</span>, <span class="inline-src language-scheme" data-lang="scheme">`car`</span>, and <span class="inline-src language-scheme" data-lang="scheme">`cdr`</span>.


#### <span class="section-num">3.7.2</span> Answer {#answer}

This one really blew my mind inside-out when I first did it. Basically, because
the two numbers are coprime, you can factor out the unwanted number and be left
with the desired one.

> Where \\(x\\) is the scrambled number, \\(p\\) is the base we want to remove, \\(q\\)
> is the base we want to retrieve from and \\(y\\) is the value exponentiating
> \\(p\\), the original number is retrieved by dividing \\(x\\) by \\(p\\) for \\(y\\)
> number of times, and then applying \\(\log\_{q}\\) to the result.

First, let's make <span class="inline-src language-scheme" data-lang="scheme">`cons`</span>.

<a id="code-snippet--cons-nnint"></a>
```scheme { linenos=true, linenostart=1 }
(define (cons-nnint a b)
  (* (expt 2 a) (expt 3 b)))
(define (cons-nnint-debug a b) ;; DEBUG
  (let* ((aa (expt 2 a))
         (bb (expt 3 b))
         (ab (* aa bb)))
    (display aa)
    (newline)
    (display bb)
    (newline)
    (display ab)
    (newline)
    ab))
```

Also, Guile doesn't have a function for custom logs so let's define that now.

<a id="code-snippet--logn"></a>
```scheme { linenos=true, linenostart=1 }
(define (logn b p)
  (/ (log p) (log b)))
```

Let's do some analysis to see how these numbers are related.

<a id="code-snippet--2-5-table"></a>
```scheme { linenos=true, linenostart=1 }
<<cons-nnint>>
(let*
    ((tablesize 7)
     (inputs (map (lambda(x)
                    (map (lambda(y)
                           (cons x y))
                         (iota tablesize)))
                  (iota tablesize)))
     (outputs (map (lambda(row)
                     (map (lambda(col)
                            (cons-nnint (car col) (cdr col)))
                          row))
                   inputs)))
  outputs)
```

| 1  | 3   | 9   | 27   | 81   | 243   | 729   |
|----|-----|-----|------|------|-------|-------|
| 2  | 6   | 18  | 54   | 162  | 486   | 1458  |
| 4  | 12  | 36  | 108  | 324  | 972   | 2916  |
| 8  | 24  | 72  | 216  | 648  | 1944  | 5832  |
| 16 | 48  | 144 | 432  | 1296 | 3888  | 11664 |
| 32 | 96  | 288 | 864  | 2592 | 7776  | 23328 |
| 64 | 192 | 576 | 1728 | 5184 | 15552 | 46656 |

Here are our scrambled numbers.

<a id="code-snippet--2-5-table2"></a>
```scheme { linenos=true, linenostart=1 }
;; To find a number of some base in some column,
;; First divide by unwantedbase for targetcol number of times
<<repeated>>
(let ((targetcol 2)
      (unwantedbase 3))
  (map (lambda(row)
         (map (lambda(item)
                ((repeated (lambda(x)
                             (/ x unwantedbase)) targetcol)
                 item))
                row))
       data))
```

| 1/9  | 1/3  | 1  | 3   | 9   | 27   | 81   |
|------|------|----|-----|-----|------|------|
| 2/9  | 2/3  | 2  | 6   | 18  | 54   | 162  |
| 4/9  | 4/3  | 4  | 12  | 36  | 108  | 324  |
| 8/9  | 8/3  | 8  | 24  | 72  | 216  | 648  |
| 16/9 | 16/3 | 16 | 48  | 144 | 432  | 1296 |
| 32/9 | 32/3 | 32 | 96  | 288 | 864  | 2592 |
| 64/9 | 64/3 | 64 | 192 | 576 | 1728 | 5184 |

The numbers from our target column onwards are integers, with the target column
being linearly exponentiated by 2 because the original numbers were linear.

<a id="code-snippet--2-5-table3"></a>
```scheme { linenos=true, linenostart=1 }
<<logn>>
(let ((wantedbase 2))
  (map (lambda(row)
         (map (lambda(item)
                (format #f "~6,3f" (logn 2 item)))
                row))
       data))
```

| -3.170 | -1.585 | 0.000 | 1.585 | 3.170 | 4.755  | 6.340  |
|--------|--------|-------|-------|-------|--------|--------|
| -2.170 | -0.585 | 1.000 | 2.585 | 4.170 | 5.755  | 7.340  |
| -1.170 | 0.415  | 2.000 | 3.585 | 5.170 | 6.755  | 8.340  |
| -0.170 | 1.415  | 3.000 | 4.585 | 6.170 | 7.755  | 9.340  |
| 0.830  | 2.415  | 4.000 | 5.585 | 7.170 | 8.755  | 10.340 |
| 1.830  | 3.415  | 5.000 | 6.585 | 8.170 | 9.755  | 11.340 |
| 2.830  | 4.415  | 6.000 | 7.585 | 9.170 | 10.755 | 12.340 |

Now the second column has recovered its original values. Although we didn't know
what the original integer values were, we can now tell which column has the
correct numbers by looking at which are integer values.

We can use this sign of a correct result in the proposed <span class="inline-src language-scheme" data-lang="scheme">`car`</span> and
<span class="inline-src language-scheme" data-lang="scheme">`cdr`</span> procedures.

<a id="code-snippet--nnint-test"></a>
```scheme { linenos=true, linenostart=1 }
<<cons-nnint>>
<<logn>>
(use-srfis '(1))
(define (all-your-base ab unwanted wanted)
  (if (equal? (modulo ab unwanted) 0)
      (all-your-base (/ ab unwanted) unwanted wanted)
      (if (equal? (modulo ab wanted) 0)
          (round (logn wanted ab))
          "This number isn't a factor!")))
(define (car-nnint ab)
  (all-your-base ab 3 2))
(define (cdr-nnint ab)
  (all-your-base ab 2 3))

(let* ((initvalues '((2 3) (4 5) (7 2)))
       (conslist (map (lambda(x)
                        (apply cons-nnint x))
                      initvalues))
       (carlist (map (lambda(x)
                       (car-nnint x))
                     conslist))
       (cdrlist (map (lambda(x)
                       (cdr-nnint x))
                     conslist)))
  (map (lambda(x y) (cons x y))
       (list "pairs" "cons'd" "car" "cdr")
       (list initvalues conslist carlist cdrlist)))
```

| pairs  | (2 3) | (4 5) | (7 2) |
|--------|-------|-------|-------|
| cons'd | 108   | 3888  | 1152  |
| car    | 2.0   | 4.0   | 7.0   |
| cdr    | 3.0   | 5.0   | 2.0   |


### <span class="section-num">3.8</span> Exercise 2.6 <span class="tag"><span class="optional">optional</span></span> {#exercise-2-dot-6}


#### <span class="section-num">3.8.1</span> Question {#question}

> In case representing pairs as procedures wasn't mind-boggling enough, consider
> that, in a language that can manipulate procedures, we can get by without
> numbers (at least insofar as nonnegative integers are concerned) by implementing
> 0 and the operation of adding 1 as

<a id="code-snippet--lc-zero-add1"></a>
```scheme { linenos=true, linenostart=1 }
(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))
```

> This representation is known as _Church numerals_, after its inventor, Alonzo
> Church, the logician who invented the &lambda;-calculus.
>
> Define <span class="inline-src language-scheme" data-lang="scheme">`one`</span> and <span class="inline-src language-scheme" data-lang="scheme">`two`</span> directly (not in terms of
> <span class="inline-src language-scheme" data-lang="scheme">`zero`</span> and <span class="inline-src language-scheme" data-lang="scheme">`add-1`</span>). (Hint: Use substitution to evaluate
> <span class="inline-src language-scheme" data-lang="scheme">`(add-1 zero)`</span>). Give a direct definition of the addition procedure
> <span class="inline-src language-scheme" data-lang="scheme">`+`</span> (not in terms of repeated application of <span class="inline-src language-scheme" data-lang="scheme">`add-1`</span>).


#### <span class="section-num">3.8.2</span> Answer {#answer}

First, let's check out <span class="inline-src language-scheme" data-lang="scheme">`(add-1 zero)`</span>.

```scheme { linenos=true, linenostart=1 }
(define zero (lambda (f) (lambda (x) x)))
(define (add-1 n)
  (lambda (f) (lambda (x)
           (f ((n f) x)))))

(add-1 zero)
((lambda (f) (lambda (x)
          (f ((zero f) x)))))
((lambda (f) (lambda (x)
          (f ((lambda (x) x) x)))))
((lambda (f) (lambda (x)
          (f x))))
```

So from this I believe the correct definition of one and two are:

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
(define one
  (lambda (f) (lambda (x)
           (f x))))
(define two
  (lambda (f) (lambda (x)
            (f (f x)))))

(mattcheck "1 = 1+0"
           1
           ((one 1+) 0))
(mattcheck "2 = 1+1+0"
           2
           ((two 1+) 0))

(define (add a b)
  (lambda (f) (lambda (x)
           ((a f) ((b f) x)))))

(mattcheck "3 = 1+2 = (1+0) + (1+1+0)"
           3
           (((add one two) 1+) 0))
```

```text
SUCCEED at 1 = 1+0
SUCCEED at 2 = 1+1+0
SUCCEED at 3 = 1+2 = (1+0) + (1+1+0)
```


### <span class="section-num">3.9</span> Exercise 2.7 {#exercise-2-dot-7}


#### <span class="section-num">3.9.1</span> Text {#text}

<a id="code-snippet--interval-txt"></a>
```scheme { linenos=true, linenostart=1 }
(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))
(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))
(define (div-interval x y)
  (mul-interval
   x
   (make-interval (/ 1.0 (upper-bound y))
                  (/ 1.0 (lower-bound y)))))
```


#### <span class="section-num">3.9.2</span> Question {#question}

> Alyssa's program is incomplete because she has not specified the implementation
> of the interval abstraction. Here is a definition of the interval constructor:

```scheme { linenos=true, linenostart=1 }
(define (make-interval a b) (cons a b))
```

> Define selectors <span class="inline-src language-scheme" data-lang="scheme">`upper-bound`</span> and <span class="inline-src language-scheme" data-lang="scheme">`lower-bound`</span> to complete
> the implementation.


#### <span class="section-num">3.9.3</span> Answer {#answer}

<a id="code-snippet--make-interval"></a>
```scheme { linenos=true, linenostart=1 }
<<interval-txt>>

;; Makes more sense to me to test
;; order in the constructor than selector
(define (make-interval a b)
  (if (> a b)
      (cons a b)
      (cons b a)))

(define (upper-bound i)
  (car i))
(define (lower-bound i)
  (cdr i))
```


### <span class="section-num">3.10</span> Exercise 2.8 {#exercise-2-dot-8}


#### <span class="section-num">3.10.1</span> Question {#question}

> Using reasoning analogous to Alyssa's, describe how the difference of two
> intervals may be computed. Define a corresponding subtraction procedure, called
> <span class="inline-src language-scheme" data-lang="scheme">`sub-interval`</span>.


#### <span class="section-num">3.10.2</span> Answer {#answer}

I would argue that with one interval subtracted from the other, the lowest
possible value is the lower of the first subtracted from the _upper_ of the
second, and the highest is the upper of the first subtracted from the lower of
the second.

<a id="code-snippet--sub-interval"></a>
```scheme { linenos=true, linenostart=1 }
(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))
```


### <span class="section-num">3.11</span> Exercise 2.9 {#exercise-2-dot-9}


#### <span class="section-num">3.11.1</span> Question {#question}

> The _width_ of an interval is half of the difference between its upper and lower
> bounds. The width is a measure of the uncertainty of the number specified by the
> interval. For some arithmetic operations the width of the result of combining
> two intervals is a function only of the widths of the argument intervals,
> whereas for others the width of the combination is not a function of the widths
> of the argument intervals. Show that the width of the sum (or difference) of two
> intervals is a function only of the widths of the intervals being added (or
> subtracted). Give examples to show that this is not true for multiplication or
> division.


#### <span class="section-num">3.11.2</span> Answer {#answer}

My first interpretation of the question was that it asked whether width
operations are _distributive_. For example, multiplication is distributive:

$$
  a(b+c) = (a \times b)+(a \times c)
$$

For this I wrote the following tests:

<a id="code-snippet--interval-width"></a>
```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<make-interval>>
<<sub-interval>>

(define (halve x)
  (/ x 2))

(define (width-interval I)
  (halve (- (upper-bound I)
            (lower-bound I))))

(let* ((ia (make-interval 10.1 9.9))
       (ib (make-interval 5.2 4.8))
       (Aab (add-interval ia ib))
       (Sab (sub-interval ia ib))
       (Mab (mul-interval ia ib))
       (Dab (div-interval ia ib)))
  (mattcheck-float "ia width = roughly .1"
                   0.1
                   (width-interval ia))
  (mattcheck-float "ib width = roughly .2"
                   0.2
                   (width-interval ib))
  (mattcheck-float "width addition is distributive"
                   (width-interval Aab)
                   (+ (width-interval ia)
                      (width-interval ib)))
  (mattcheck-float "width subtraction is distributive"
                   (width-interval Sab)
                   (- (width-interval ia)
                      (width-interval ib)))
  (mattcheck-float "width multiplication is distributive"
                   (width-interval Mab)
                   (* (width-interval ia)
                      (width-interval ib)))
  (mattcheck-float "width division is distributive"
                   (width-interval Dab)
                   (/ (width-interval ia)
                      (width-interval ib))))
```

```text
SUCCEED at ia width = roughly .1
SUCCEED at ib width = roughly .2
SUCCEED at width addition is distributive
FAIL at width subtraction is distributive
expected: -0.10000000000000053
returned: 0.2999999999999998
FAIL at width multiplication is distributive
expected: 0.01999999999999995
returned: 2.5
FAIL at width division is distributive
expected: 0.4999999999999978
returned: 0.10016025641025639
```

However upon rereading the question I see that it could be rephrased as "in what
operations can you calculate the resulting interval's width with only the widths
of the argument intervals?"

Basically, for argument interval \\(x\\) and \\(y\\) and result interval \\(z\\):

> `IF` \\(z = x + y\\) <br />
> `THEN` \\(z\_{width} = x\_{width} + y\_{width}\\) <br />
> `IF` \\(z = x - y\\) <br />
> `THEN` \\(z\_{width} = x\_{width} + y\_{width}\\) <br />
> Multiplied or divided widths cannot be determined from widths alone.

So, let's try that again.

<a id="code-snippet--interval-operations"></a>
```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<make-interval>>
<<sub-interval>>

(define (halve x)
  (/ x 2))

(define (width-interval I)
  (halve (- (upper-bound I)
            (lower-bound I))))

(let* ((ia (make-interval 10.1 9.9))
       (ib (make-interval 5.2 4.8))
       (Aab (add-interval ia ib))
       (Sab (sub-interval ia ib)))
  (mattcheck-float "ia width = roughly .1"
                   0.1
                   (width-interval ia))
  (mattcheck-float "ib width = roughly .2"
                   0.2
                   (width-interval ib))
  (mattcheck-float "width(ia+ib) = width(ia) + width(ib)"
                   (width-interval Aab)
                   (+ (width-interval ia)
                      (width-interval ib)))
  (mattcheck-float "width(ia-ib) = width(ia) + width(ib)"
                   (width-interval Sab)
                   (+ (width-interval ia)
                      (width-interval ib))))
```

```text
SUCCEED at ia width = roughly .1
SUCCEED at ib width = roughly .2
SUCCEED at width(ia+ib) = width(ia) + width(ib)
SUCCEED at width(ia-ib) = width(ia) + width(ib)
```


### <span class="section-num">3.12</span> Exercise 2.10 {#exercise-2-dot-10}


#### <span class="section-num">3.12.1</span> Question {#question}

> Ben Bitdiddle, an expert systems programmer, looks over Alyssa's shoulder and
> comments that it is not clear what it means to divide by an interval that spans
> zero. Modify Alyssa's code to check for this condition and to signal an error if
> it occurs.


#### <span class="section-num">3.12.2</span> Answer {#answer}

```scheme { linenos=true, linenostart=1 }
(define (interval-spans-zero? I)
  (and (> upper-bound 0)
       (< lower-bound 0)))
(define (div-interval x y)
  (if (interval-spans-zero? y)
      "DIV-INTERVAL ERROR: denominator spans zero"
      (mul-interval
       x
       (make-interval (/ 1.0 (upper-bound y))
                      (/ 1.0 (lower-bound y))))))
```


### <span class="section-num">3.13</span> Exercise 2.11 {#exercise-2-dot-11}


#### <span class="section-num">3.13.1</span> Question {#question}

> In passing, Ben also cryptically comments: \`\`By testing the signs of the
> endpoints of the intervals, it is possible to break <span class="inline-src language-scheme" data-lang="scheme">`mul-interval`</span>
> into nine cases, only one of which requires more than two multiplications.''
> Rewrite this procedure using Ben's suggestion.


#### <span class="section-num">3.13.2</span> Answer {#answer}

This problem doesn't appear to have a beautiful, elegant answer.

Let's examine the nine cases.

<a id="code-snippet--checking-multiples"></a>
```scheme { linenos=true, linenostart=1 }
(use-modules (ice-9 format))
(use-srfis '(1))
(load "mattcheck2.scm")
<<make-interval>>
<<sub-interval>>

(define (matt-examine-mult f)
  (let* ((pp (make-interval 3 2))
         (pn (make-interval 3 -5))
         (pn2 (make-interval 1 -0.5))
         (nn (make-interval -5 -7))
         (listofpairs (list
                       (list pp pp)
                       (list pp pn)
                       (list pp nn)
                       (list pn pp)
                       (list pn pn)
                       (list pn pn2) ;;<- edge case to catch incomplete
                       (list pn nn)  ;;   multiplication functions
                       (list nn pp)
                       (list nn pn)
                       (list nn nn)))
         (givesign (lambda(x)
                     (if (negative? x)
                         "-"
                         "+")))
         (print-sign (lambda(I)
                       (format #f "~a ~a"
                               (givesign (upper-bound I))
                               (givesign (lower-bound I)))))
         (print-int (lambda(I)
                      (format #f "~a/~a"
                              (upper-bound I)
                              (lower-bound I))))
         (print-ints (lambda(I J)
                       (format #f "~a times ~a"
                               (print-int I)
                               (print-int J))))
         (results (map (lambda(p)
                         (apply f p))
                       listofpairs)))
    (list
     (map (lambda(p)
            (apply print-ints p))
          listofpairs)
     (map print-int results)
     (map (lambda(I)
            (print-sign I))
          results)
     (map (lambda(p)
            (format #f "~a // ~a"
                    (print-sign (car p))
                    (print-sign (cadr p))))
          listofpairs))))
(cons
 (list "problem" "result" "signs" "problem signs")
 (apply zip
        (matt-examine-mult mul-interval)))
```

| problem           | result   | signs | problem signs |
|-------------------|----------|-------|---------------|
| 3/2 times 3/2     | 9/4      | + +   | + + // + +    |
| 3/2 times 3/-5    | 9/-15    | + -   | + + // + -    |
| 3/2 times -5/-7   | -10/-21  | - -   | + + // - -    |
| 3/-5 times 3/2    | 9/-15    | + -   | + - // + +    |
| 3/-5 times 3/-5   | 25/-15   | + -   | + - // + -    |
| 3/-5 times 1/-0.5 | 3.0/-5.0 | + -   | + - // + -    |
| 3/-5 times -5/-7  | 35/-21   | + -   | + - // - -    |
| -5/-7 times 3/2   | -10/-21  | - -   | - - // + +    |
| -5/-7 times 3/-5  | 35/-21   | + -   | - - // + -    |
| -5/-7 times -5/-7 | 49/25    | + +   | - - // - -    |

<a id="code-snippet--mul-interval-opt"></a>
```scheme { linenos=true, linenostart=1 }
(define (mul-interval-opt x y)
  (let ((xu (upper-bound x))
        (xl (lower-bound x))
        (yu (upper-bound y))
        (yl (lower-bound y)))
    (define p? positive?)
    (define n? negative?)
    (define (check-signs? a b x y) ;; pass functions
      (and (a xu)
           (b xl)
           (x yu)
           (y yl)))
    (define (same-signs?)
      (or (check-signs? p? p? p? p?)
          (check-signs? n? n? n? n?)))
    (define (alt-signs?)
      (or (check-signs? p? p? n? n?)
          (check-signs? n? n? p? p?)))
    (cond ((same-signs?)
           (make-interval (* xu yu)
                          (* xl yl)))
          ((alt-signs?)
           (make-interval (* xl yu)
                          (* xu yl)))
          ((check-signs? p? p? p? n?)
           (make-interval (* xu yu)
                          (* xu yl)))
          ((check-signs? p? n? p? p?)
           (make-interval (* xu yu)
                          (* xl yu)))
          ((check-signs? p? n? p? n?)
           (let ((p1 (* xu yu))
                 (p2 (* xu yl))
                 (p3 (* xl yu))
                 (p4 (* xl yl)))
             (make-interval (max p1 p2 p3 p4)
                            (min p1 p2 p3 p4))))
          ((check-signs? p? n? n? n?)
           (make-interval (* xl yl)
                          (* xu yl)))
          ((check-signs? n? n? p? n?)
           (make-interval (* xl yl)
                          (* xl yu))))))
```

<a id="code-snippet--checking-optimized"></a>
```scheme { linenos=true, linenostart=1 }
(use-modules (ice-9 format))
(use-srfis '(1))
(load "mattcheck2.scm")
<<make-interval>>
<<sub-interval>>
<<mul-interval-opt>>

(define (matt-mult-consistency f1 f2)
  (let* ((pp (make-interval 3 2))
         (pn (make-interval 3 -5))
         (pn2 (make-interval 1 -0.5))
         (nn (make-interval -5 -7))
         (listofpairs (list
                       (list "pp*nn" pp pp)
                       (list "pp*pn" pp pn)
                       (list "pp*nn" pp nn)
                       (list "pn*pp" pn pp)
                       (list "pn*pn" pn pn)
                       (list "pn*pn2" pn pn2) ;;<- edge case to catch incomplete
                       (list "pn*nn" pn nn)  ;;   multiplication functions
                       (list "nn*pp" nn pp)
                       (list "nn*pn" nn pn)
                       (list "nn*nn" nn nn))))
    (map (lambda(l)
           (mattcheck (car l)
                      (apply f1 (cdr l))
                      (apply f2 (cdr l))))
         listofpairs)))

(matt-mult-consistency mul-interval mul-interval-opt)
```

```text
SUCCEED at pp*nn
SUCCEED at pp*pn
SUCCEED at pp*nn
SUCCEED at pn*pp
SUCCEED at pn*pn
SUCCEED at pn*pn2
SUCCEED at pn*nn
SUCCEED at nn*pp
SUCCEED at nn*pn
SUCCEED at nn*nn
```

```text
Unoptimized mul-interval: (5231.8421225)
Optimized mul-interval: (2526.5896437)
```

So as expected, about twice as fast!


### <span class="section-num">3.14</span> Exercise 2.12 {#exercise-2-dot-12}


#### <span class="section-num">3.14.1</span> Question {#question}

After debugging her program, Alyssa shows it to a potential user, who complains
that her program solves the wrong problem. He wants a program that can deal with
numbers represented as a center value and an additive tolerance; for example, he
wants to work with intervals such as \\(3.5 \pm 0.15\\) rather than [3.35, 3.65].
Alyssa returns to her desk and fixes this problem by supplying an alternate
constructor and alternate selectors:

<a id="code-snippet--interval-center-width"></a>
```scheme { linenos=true, linenostart=1 }
(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))
(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))
(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))
```

Unfortunately, most of Alyssa's users are engineers. Real engineering situations
usually involve measurements with only a small uncertainty, measured as the
ratio of the width of the interval to the midpoint of the interval. Engineers
usually specify percentage tolerances on the parameters of devices, as in the
resistor specifications given earlier.

Define a constructor <span class="inline-src language-scheme" data-lang="scheme">`make-center-percent`</span> that takes a center and a
percentage tolerance and produces the desired interval. You must also define a
selector <span class="inline-src language-scheme" data-lang="scheme">`percent`</span> that produces the percentage tolerance for a given
interval. The <span class="inline-src language-scheme" data-lang="scheme">`center`</span> selector is the same as the one shown above.


#### <span class="section-num">3.14.2</span> Answer {#answer}

<a id="code-snippet--reciprocal"></a>
```scheme { linenos=true, linenostart=1 }
(define (reciprocal x)
  (/ 1 x))
```

<a id="code-snippet--interval-percent"></a>
```scheme { linenos=true, linenostart=1 }
<<reciprocal>>
<<make-interval>>
<<sub-interval>>
<<interval-center-width>>

(define (make-center-percent c pt)
  (let ((pp (* c
               (* pt 0.01))))
    (make-interval (- c pp) (+ c pp))))
(define (percent I)
  (* 100.0
     (/ (width I)
        (center I))))
```

<a id="code-snippet--checking-interval-percent"></a>
```scheme { linenos=true, linenostart=1 }
<<interval-percent>>
(load "mattcheck2.scm")
  (define (roughly-eq? a b)
    ;; error size varies with magnitude of fp
    ;; so dx must vary too.
    (define dx (* a 0.000001))
    (and (> a (- b dx))
         (< a (+ b dx))))
(define (interval-roughly-eq? I J)
  (and (roughly-eq? (upper-bound I) (upper-bound J))
       (roughly-eq? (lower-bound I) (lower-bound J))))

(let* ((i1 (make-interval 105.0 95.0))
      (i2 (make-center-width 100.0 5))
      (i3 (make-center-percent 100.0 5))
      (i1a (upper-bound i1)))
  (mattcheck "make-center-width"
             i1
             i2)
  (mattcheck "make-center-percent"
             i1
             i3)
  (mattcheck "percent"
             (percent i1)
             (percent i3)
             5.0)
  (mattcheck+ "make-center-percent is consistent"
              (list i1 i3)
              #:eql? interval-roughly-eq?))
```

```text
SUCCEED at make-center-width
SUCCEED at make-center-percent
SUCCEED at percent
SUCCEED at make-center-percent is consistent
```


### <span class="section-num">3.15</span> Exercise 2.13 <span class="tag"><span class="optional">optional</span></span> {#exercise-2-dot-13}


#### <span class="section-num">3.15.1</span> Question {#question}

> Show that under the assumption of small percentage tolerances there is a simple
> formula for the approximate percentage tolerance of the product of two intervals
> in terms of the tolerances of the factors. You may simplify the problem by
> assuming that all numbers are positive.


#### <span class="section-num">3.15.2</span> Answer {#answer}

I should've written this function a while ago.

<a id="code-snippet--echo"></a>
```scheme { linenos=true, linenostart=1 }
(use-modules (ice-9 format))
(define (stringit . args)
  (string-append
   (apply string-append
    (map (lambda(x)
          (format #f "~:a " x))
        args))))
(define (echo . args)
  (format #t "~&~:a~%" (apply stringit args)))
```

Now, let's examine how interval percents relate to each other.

<a id="code-snippet--checking-interval-relations"></a>
```scheme { linenos=true, linenostart=1 }
<<echo>>
<<interval-percent>>
<<mul-interval-opt>>

(let* ((i1 (make-center-width 100 5))
       (i2 (make-center-width 200 5))
       (M12 (mul-interval-opt i1 i2)))
  (echo "intervals 1 and 2:" i1 i2)
  (echo "width of 1 and 2:" (width i1) (width i2))
  (echo "percent of 1 and 2:" (percent i1) (percent i2))
  (echo "i1*i2 = " M12)
  (echo "width M12:" (width M12))
  (echo "percent M12:" (percent M12)))
```

```text
intervals 1 and 2: (105 . 95) (205 . 195)
width of 1 and 2: 5 5
percent of 1 and 2: 5.0 2.5
i1*i2 =  (21525 . 18525)
width M12 1500
percent M12 7.490636704119851
```

Perhaps percent\\((A\times B) =\\)percent\\((A)+\\)percent\\((B)\\)?

<a id="code-snippet--checking-interval-relations2"></a>
```scheme { linenos=true, linenostart=1 }
<<echo>>
<<interval-percent>>
<<mul-interval-opt>>

(let* ((i1 (make-center-percent 40 0.1))
       (i2 (make-center-percent 200 0.4))
       (M12 (mul-interval-opt i1 i2)))
  (echo "percent of 1 and 2:" (percent i1) (percent i2))
  (echo "percent M12:" (percent M12)))
```

```text
percent of 1 and 2: 0.09999999999999788 0.40000000000000563
percent M12: 0.499998000008
```


### <span class="section-num">3.16</span> Exercise 2.14 {#exercise-2-dot-14}


#### <span class="section-num">3.16.1</span> Question {#question}

> After considerable work, Alyssa P. Hacker delivers her finished system. Several
> years later, after she has forgotten all about it, she gets a frenzied call from
> an irate user, Lem E. Tweakit. It seems that Lem has noticed that the formula
> for parallel resistors can be written in two algebraically equivalent ways:
>
> $$
> \frac{R\_1 R\_2}{R\_1 + R\_2}
> $$
>
> and
>
> $$
> \frac{1}{\frac{1}{R\_1} + \frac{1}{R\_2}}
> $$
>
> He has written the following two programs, each of which computes the
> parallel-resistors formula differently:

<a id="code-snippet--par-resistors"></a>
```scheme { linenos=true, linenostart=1 }
(define (par1 r1 r2)
  (div-interval (mul-interval r1 r2)
                (add-interval r1 r2)))

(define (par2 r1 r2)
  (let ((one (make-interval 1 1)))
    (div-interval
     one (add-interval (div-interval one r1)
                       (div-interval one r2)))))
```

> Lem complains that Alyssa's program gives different answers for the two ways of
> computing. This is a serious complaint.
>
> Demonstrate that Lem is right. Investigate the behavior of the system on a
> variety of arithmetic expressions. Make some intervals \\(A\\) and \\(B\\), and use
> them in computing the expressions \\(A / A\\) and \\(A / B\\). You will get the most
> insight by using intervals whose width is a small percentage of the center
> value. Examine the results of the computation in center-percent form (see
> Exercise 2.12).


#### <span class="section-num">3.16.2</span> Answer {#answer}

<a id="code-snippet--resistor-testing"></a>
```scheme { linenos=true, linenostart=1 }
<<echo>>
<<interval-percent>>
<<mul-interval-opt>>
<<par-resistors>>

(let* ((A (make-center-percent 10 1))
       (B (make-center-percent 10 0.01))
       (p1 (par1 A B))
       (p2 (par2 A B)))
  (echo "A,B:" A B)
  (echo "par1(A,B):" p1)
  (echo "par2(A,B):" p2)
  (echo "percent(par1):" (percent p1))
  (echo "percent(par2):" (percent p2))
  (echo "center(par1):" (center p1))
  (echo "center(par2):" (center p2)))

(echo "So these two have inconsistent effects on the width.")
(newline)
(echo "It should also be noted that floating-point errors accumulate.")
(echo "Take a look at the error on these (correct answer is 1)")

(let* ((A (make-center-percent 10 1))
       (p1 (div-interval
            (div-interval
             (mul-interval A A)
             A)
            A))
       (p2 (div-interval
            (div-interval
             (div-interval
              (mul-interval
               (mul-interval A A)
               A)
              A)
             A)
            A)))
  (echo "p1:" (center p1))
  (echo "p2:" (center p2)))
```

```text
A,B: (10.1 . 9.9) (10.001 . 9.999)
par1(A,B): (5.076139504497713 . 4.924635590269141)
par2(A,B): (5.025128103079449 . 4.974626865671642)
percent(par1): 1.5149217214958663
percent(par2): 0.5050247487625606
center(par1): 5.000387547383427
center(par2): 4.999877484375546
So these two have inconsistent effects on the width.

It should also be noted that floating-point errors accumulate.
Take a look at the error on these (correct answer is 1)
p1: 1.0008001600240033
p2: 1.0018006601460259
```


### <span class="section-num">3.17</span> Exercise 2.15 {#exercise-2-dot-15}


#### <span class="section-num">3.17.1</span> Question {#question}

> Eva Lu Ator, another user, has also noticed the different intervals computed by
> different but algebraically equivalent expressions. She says that a formula to
> compute with intervals using Alyssa's system will produce tighter error bounds
> if it can be written in such a form that no variable that represents an
> uncertain number is repeated. Thus, she says, <span class="inline-src language-scheme" data-lang="scheme">`par2`</span> is a "better"
> program for parallel resistances than <span class="inline-src language-scheme" data-lang="scheme">`par1`</span>. Is she right? Why?


#### <span class="section-num">3.17.2</span> Answer {#answer}

If I am correct in understanding that "uncertain number" means "a number with an
error tolerance", than <span class="inline-src language-scheme" data-lang="scheme">`par2`</span> _is_ better -- it only uses two
instances of variables with error tolerance, while <span class="inline-src language-scheme" data-lang="scheme">`par1`</span> uses four.

It should be noted that this system does not directly translate to algebraic
expressions. For example, take these expressions:

$$A + A = 2A$$
$$A - A = 0$$
$$A / A = 1$$

Note that these do not hold up in practice with uncertain numbers:

<a id="code-snippet--EX2-15"></a>
```scheme { linenos=true, linenostart=1 }
<<echo>>
<<interval-percent>>
<<mul-interval-opt>>

(define A (make-center-percent 10 1))
(echo "A+A = 2A !=" (add-interval A A))
(echo "A-A = 0 !=" (sub-interval A A))
(echo "A/A = 1 !=" (div-interval A A))
```

```text
A+A = 2A != (20.2 . 19.8)
A-A = 0 != (0.1999999999999993 . -0.1999999999999993)
A/A = 1 != (1.02020202020202 . 0.9801980198019803)
```


### <span class="section-num">3.18</span> Exercise 2.16 <span class="tag"><span class="optional">optional</span></span> {#exercise-2-dot-16}


#### <span class="section-num">3.18.1</span> Question {#question}

> Explain, in general, why equivalent algebraic expressions may lead to different
> answers. Can you devise an interval-arithmetic package that does not have this
> shortcoming, or is this task impossible? (Warning: This problem is very
> difficult.)


#### <span class="section-num">3.18.2</span> Answer {#answer}

It is _indeed_ very difficult, because from what I'm seeing online, no interval
system without these issues exists. To avoid these issues, interval mathematics
would need to satisfy the conditions for a **field** -- and failing that, needs to
only use each variable once, which becomes impossible as soon as you encounter
an expression as simple as \\(x^2\\).

GitHub user "`diiq`" has an incredible analysis of this, which can be found here:
<https://gist.github.com/diiq/1f39df0e54b2137bb07e7e04b11cb075>


### <span class="section-num">3.19</span> 2.2: Hierarchical Data and the Closure Property {#2-dot-2-hierarchical-data-and-the-closure-property}

<span class="inline-src language-scheme" data-lang="scheme">`cons`</span> pairs can be used to construct more complex data-types.

{{< figure src="/ox-hugo/cons-cells.jpeg" >}}

The ability to combine things using an operation, then combine those results
using the same operation, can be called the **closure property**. <span class="inline-src language-scheme" data-lang="scheme">`cons`</span> can
create pairs whose elements are pairs, which satisfies the closure property.
This property enables you to create hierarchical structures. We've already
regularly used the closure property in creating procedures composed of other
procedures.

> **Definitions of "closure"**
>
> The use of the word "closure" here comes from abstract algebra, where a set of
> elements is said to be closed under an operation if applying the operation to
> elements in the set produces an element that is again an element of the set.
> The Lisp community also (unfortunately) uses the word "closure" to describe a
> totally unrelated concept: A closure is an implementation technique for
> representing procedures with free variables. We do not use the word "closure"
> in this second sense in this book.


### <span class="section-num">3.20</span> 2.2.1: Representing Sequences {#2-dot-2-dot-1-representing-sequences}

**sequence**
: An ordered collection of data objects.

**list**
: A sequence of <span class="inline-src language-scheme" data-lang="scheme">`cons`</span> pairs.

<!--listend-->

```scheme
(cons 1
      (cons 2
            (cons 3
                  (cons 4 nil))))
(list 1 2 3 4)
;; both evaluate to '(1 2 3 4)
```

An aside: many parts of this book have covered ways to solve problems by
splitting problems into simple recursive solutions. I may be getting ahead of
myself, but I wanted to note how the <span class="inline-src language-scheme" data-lang="scheme">`cons`</span> pair system goes
hand-in-hand with this. For example, when going over a list <span class="inline-src language-scheme" data-lang="scheme">`l`</span> with
function <span class="inline-src language-scheme" data-lang="scheme">`f`</span>:

```scheme
(define (map f l)
  (if (null? l)
      #nil
      (cons (f (car l))
            (map f (cdr l)))))

(map (lambda(x)(* x 2))
     (list 1 2 3 4))
```

```text
| 2 | 4 | 6 | 8 |
```


### <span class="section-num">3.21</span> Exercise 2.17 {#exercise-2-dot-17}


#### <span class="section-num">3.21.1</span> Question {#question}

> Define a procedure
> <span class="inline-src language-scheme" data-lang="scheme">`last-pair`</span> that returns the list that contains only the last element of a
> given (nonempty) list:

```scheme
(last-pair (list 23 72 149 34))
;; (34)
```


#### <span class="section-num">3.21.2</span> Answer {#answer}

<a id="code-snippet--last-pair"></a>
```scheme
(define (last-pair l)
  (let ((a (car l))
        (d (cdr l)))
    (if (= 1 (length d))
        d
        (last-pair d))))
```

```scheme
<<last-pair>>
(last-pair (list 23 72 149 34))
```

```text
| 34 |
```


### <span class="section-num">3.22</span> Exercise 2.18 {#exercise-2-dot-18}


#### <span class="section-num">3.22.1</span> Question {#question}

> Define a procedure <span class="inline-src language-scheme" data-lang="scheme">`reverse`</span> that takes a list as argument and returns
> a list of the same elements in reverse order:

```scheme
(reverse (list 1 4 9 16 25))
;; (25 16 9 4 1)
```


#### <span class="section-num">3.22.2</span> Answer {#answer}

<a id="code-snippet--reverse"></a>
```scheme
(define (reverse l)
  (define len (length l))
  (define (iter i result)
    (if (< (1- len) i)
        result
        (iter (+ i 1)
              (cons (list-ref l i)
                    result))))
  (iter 0 '()))
```

```scheme
<<reverse>>
(reverse (list 23 72 149 34))
```

|    |     |    |    |
|----|-----|----|----|
| 34 | 149 | 72 | 23 |


### <span class="section-num">3.23</span> Exercise 2.19 {#exercise-2-dot-19}


#### <span class="section-num">3.23.1</span> Question {#question}

> Consider the change-counting program of 1.2.2. It would be nice to be able to
> easily change the currency used by the program, so that we could compute the
> number of ways to change a British pound, for example. As the program is
> written, the knowledge of the currency is distributed partly into the procedure
> <span class="inline-src language-scheme" data-lang="scheme">`first-denomination`</span> and partly into the procedure
> <span class="inline-src language-scheme" data-lang="scheme">`count-change`</span> (which knows that there are five kinds of U.S. coins).
> It would be nicer to be able to supply a list of coins to be used for making
> change.
>
> We want to rewrite the procedure <span class="inline-src language-scheme" data-lang="scheme">`cc`</span> so that its second argument is a
> list of the values of the coins to use rather than an integer specifying which
> coins to use. We could then have lists that defined each kind of currency:

```scheme
(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))
```

> We could then call <span class="inline-src language-scheme" data-lang="scheme">`cc`</span> as follows:

```scheme
(cc 100 us-coins)
; 292
```

> To do this will require changing the program <span class="inline-src language-scheme" data-lang="scheme">`cc`</span> somewhat. It will
> still have the same form, but it will access its second argument differently, as
> follows:

<a id="code-snippet--cc-lists"></a>
```scheme { linenos=true, linenostart=1 }
(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination
                 coin-values))
            (cc (- amount
                   (first-denomination
                    coin-values))
                coin-values)))))
```

> Define the procedures <span class="inline-src language-scheme" data-lang="scheme">`first-denomination`</span>,
> <span class="inline-src language-scheme" data-lang="scheme">`except-first-denomination`</span>, and <span class="inline-src language-scheme" data-lang="scheme">`no-more?`</span> in terms of
> primitive operations on list structures. Does the order of the list
> <span class="inline-src language-scheme" data-lang="scheme">`coin-values`</span> affect the answer produced by <span class="inline-src language-scheme" data-lang="scheme">`cc`</span>? Why or why
> not?


#### <span class="section-num">3.23.2</span> Answer {#answer}

<a id="code-snippet--Ex-2-19"></a>
```scheme
<<cc-lists>>

(define us-coins
  (list 50 25 10 5 1))
(define uk-coins
  (list 100 50 20 10 5 2 1 0.5))

(define first-denomination car)
(define except-first-denomination cdr)
(define no-more? null?)
```

```scheme
<<Ex-2-19>>
(list
 (cc 100 us-coins)
 (cc 100 (reverse us-coins))
 (cc 100 (list 50 10 25 5 1)))
```

```text
| 292 | 292 | 292 |
```

Apparently, the order of the list does _not_ affect the value. However, it does effect the execution time, with small-to-large coin lists taking more time than large-to-small.

```text
decreasing values: (357503.80704)
increasing values: (823460.64376)
```


### <span class="section-num">3.24</span> Exercise 2.20 {#exercise-2-dot-20}


#### <span class="section-num">3.24.1</span> Question {#question}

> Use `[dotted-pair]` notation to write a procedure <span class="inline-src language-scheme" data-lang="scheme">`same-parity`</span> that takes one or
> more integers and returns a list of all the arguments that have the same
> even-odd parity as the first argument.  For example,

```scheme
(same-parity 1 2 3 4 5 6 7)
; (1 3 5 7)
(same-parity 2 3 4 5 6 7)
; (2 4 6)
```


#### <span class="section-num">3.24.2</span> Answer {#answer}

<a id="code-snippet--same-parity"></a>
```scheme { linenos=true, linenostart=1 }
(define (same-parity . rest)
  (define same?
    (if (even? (car rest))
        even?
        odd?))
  (define (iter l results)
    (if (null? l)
         results
        (let ((a (car l)))
          (iter (cdr l)
                (if (same? a)
                    (cons a results)
                    results)))))
  (iter (reverse rest) '()))

;; Attempting to remove the reversing
(define (same-parity2 . args)
  (define first (car args))
  (define same?
    (if (even? first)
        even?
        odd?))
  (define (iter l results)
    (if (null? l)
        results
        (let ((a (car l))
              (d (cdr l)))
          (if (same? a)
              (iter d (append results
                              (cons a #nil)))
              (iter d results)))))
  (iter (cdr args) (cons first #nil)))
```

```scheme { linenos=true, linenostart=1 }
<<same-parity>>
(list
 (same-parity 1 2 3 4 5 6 7)
 (same-parity2 2 3 4 5 6 7))
```

```text
| 1 | 3 | 5 | 7 |
| 2 | 4 | 6 |   |
```

```text
same-parity: (10003.483436)
same-parity2: (56007.042334)
```

Once again, my attempts to optimize are a complete failure. I'm guessing that
the act of traversing the whole list in the call to <span class="inline-src language-scheme" data-lang="scheme">`append`</span> is the
problem.


### <span class="section-num">3.25</span> Exercise 2.21 {#exercise-2-dot-21}


#### <span class="section-num">3.25.1</span> Question {#question}

> The procedure <span class="inline-src language-scheme" data-lang="scheme">`square-list`</span> takes a list of numbers as argument and
> returns a list of the squares of those numbers.

```scheme
(square-list (list 1 2 3 4))
;; (1 4 9 16)
```

> Here are two different definitions of <span class="inline-src language-scheme" data-lang="scheme">`square-list`</span>. Complete both of
> them by filling in the missing expressions:

```scheme { linenos=true, linenostart=1 }
(define (square-list items)
  (if (null? items)
      nil
      (cons <??> <??>)))
(define (square-list items)
  (map <??> <??>))
```


#### <span class="section-num">3.25.2</span> Answer {#answer}

<a id="code-snippet--square-list"></a>
```scheme { linenos=true, linenostart=1 }
<<square>>
(define (square-list-manual items)
  (if (null? items)
      #nil
      (cons (square (car items))
            (square-list-manual (cdr items)))))
(define (square-list items)
  (map square items))
```

```scheme { linenos=true, linenostart=1 }
<<square-list>>
(let ((l (list 2 3 4 5 6)))
  (list l
        (square-list-manual l)
        (square-list l)))
```

```text
| 2 | 3 |  4 |  5 |  6 |
| 4 | 9 | 16 | 25 | 36 |
| 4 | 9 | 16 | 25 | 36 |
```


### <span class="section-num">3.26</span> Exercise 2.22 {#exercise-2-dot-22}


#### <span class="section-num">3.26.1</span> Questions {#questions}

> Louis Reasoner tries to rewrite the first <span class="inline-src language-scheme" data-lang="scheme">`square-list`</span> procedure of
> Exercise 2.21 so that it evolves an iterative process:

```scheme { linenos=true, linenostart=1 }
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items nil))
```

> Unfortunately, defining <span class="inline-src language-scheme" data-lang="scheme">`square-list`</span> this way produces the answer
> list in the reverse order of the one desired. Why?
>
> Louis then tries to fix his bug by interchanging the arguments to
> <span class="inline-src language-scheme" data-lang="scheme">`cons`</span>:

```scheme { linenos=true, linenostart=1 }
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square (car things))))))
  (iter items nil))
```

> This doesn't work either.  Explain.


#### <span class="section-num">3.26.2</span> Answer {#answer}

I'm positive I've made this exact mistake before, though this is likely not
recorded.

The first form of <span class="inline-src language-scheme" data-lang="scheme">`square-list`</span> produces a correct list in reverse order:

```scheme
(square-list (iota 6))
(25 16 9 4 1 0)
```

This is because he is prepending to the list every iteration.

While the second produces a broken list, which is literally backwards:

```scheme { linenos=true, linenostart=1 }
(square-list (iota 6))
((((((#nil . 0) . 1) . 4) . 9) . 16) . 25)
;; Equivalent to:
(cons (cons (cons (cons (cons (cons #nil
                                    0)
                              1)
                        4)
                  9)
            16)
      25)
```

Since Lisp was designed with the `cons pair` structure of list-building, it
needed to define a "correct" direction for the pairs to go. Since the Western
world thinks left-to-right, they made it so that the left (first) cell is for
content, and the right is for the pointer to the next pair. However, this means
that you can't append to a list without first traveling its length and changing
the <span class="inline-src language-scheme" data-lang="scheme">`nil`</span> marking the end to a pointer to your new pair. Since that is
a lot of list traveling, it makes more sense to <span class="inline-src language-scheme" data-lang="scheme">`cons`</span> your list
together in reverse and then calling <span class="inline-src language-scheme" data-lang="scheme">`reverse`</span> only once at the end of
the procedure.


### <span class="section-num">3.27</span> Exercise 2.23 {#exercise-2-dot-23}


#### <span class="section-num">3.27.1</span> Question {#question}

> The procedure <span class="inline-src language-scheme" data-lang="scheme">`for-each`</span> is similar to <span class="inline-src language-scheme" data-lang="scheme">`map`</span>. It takes as
> arguments a procedure and a list of elements. However, rather than forming a
> list of the results, <span class="inline-src language-scheme" data-lang="scheme">`for-each`</span> just applies the procedure to each of
> the elements in turn, from left to right. The values returned by applying the
> procedure to the elements are not used at all---<span class="inline-src language-scheme" data-lang="scheme">`for-each`</span> is used
> with procedures that perform an action, such as printing. For example,

```scheme { linenos=true, linenostart=1 }
(for-each (lambda (x)
            (newline)
            (display x))
          (list 57 321 88))
;; 57
;; 321
;; 88
```

> The value returned by the call to <span class="inline-src language-scheme" data-lang="scheme">`for-each`</span> (not illustrated above)
> can be something arbitrary, such as true. Give an implementation of
> <span class="inline-src language-scheme" data-lang="scheme">`for-each`</span>.


#### <span class="section-num">3.27.2</span> Answer {#answer}

<a id="code-snippet--for-each-mine"></a>
```scheme { linenos=true, linenostart=1 }
(define (for-each-mine proc items)
  (define (iter l)
    (if (null? l)
        #t
        (begin (proc (car l))
               (iter (cdr l)))))
  (iter items))
```

```scheme { linenos=true, linenostart=1 }
<<for-each-mine>>
(for-each-mine (lambda(x)(display x)(display " ")) (list "all" "your" "base"))
(for-each (lambda(x)(display x)(display " ")) (list "are" "belong" "to" "us"))
```

```text
all your base are belong to us
```


### <span class="section-num">3.28</span> Exercise 2.24 {#exercise-2-dot-24}


#### <span class="section-num">3.28.1</span> Text Definitions {#text-definitions}

<a id="code-snippet--count-leaves"></a>
```scheme { linenos=true, linenostart=1 }
(define (count-leaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (count-leaves (car x))
                 (count-leaves (cdr x))))))
```


#### <span class="section-num">3.28.2</span> Question {#question}

> Suppose we evaluate the expression <span class="inline-src language-scheme" data-lang="scheme">`(list 1 (list 2 (list 3 4)))`</span>.
> Give the result printed by the interpreter, the corresponding box-and-pointer
> structure, and the interpretation of this as a tree (as in Figure 2.6).


#### <span class="section-num">3.28.3</span> Answer {#answer}

This is sort of a trick question -- on first reading, I read it like a series of
<span class="inline-src language-scheme" data-lang="scheme">`cons`</span> statements. Looking again, though, I can see that the correct
formulation is as follows:

```scheme { linenos=true, linenostart=1 }
<<echo>>
(let ((l1 (list 1 (list 2 (list 3 4))))
      (l2 (cons 1
                (cons
                 (cons 2
                       (cons
                        (cons 3
                              (cons 4
                                    #nil))
                        #nil))
                 #nil))))
  (echo "textbook version:" l1)
  (echo "cons'd version:" l2))
```

```text
textbook version: (1 (2 (3 4)))
cons'd version: (1 (2 (3 4)))
```

Dot and box version:

{{< figure src="/ox-hugo/24-dotandbox.png" >}}

Tree version:

{{< figure src="/ox-hugo/24-tree.png" >}}


### <span class="section-num">3.29</span> Exercise 2.25 {#exercise-2-dot-25}


#### <span class="section-num">3.29.1</span> Question {#question}

> Give combinations of <span class="inline-src language-scheme" data-lang="scheme">`car`</span>s and <span class="inline-src language-scheme" data-lang="scheme">`cdr`</span>s that will pick 7 from
> each of the following lists:

```scheme
(1 3 (5 7) 9)
((7))
(1 (2 (3 (4 (5 (6 7))))))
```

```scheme { linenos=true, linenostart=1 }
<<echo>>
(let ((l1 (list 1 3 (list 5 7) 9))
      (l2 (list (list 7)))
      (l3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7))))))))
  (echo (car (cdaddr l1))
        (caar l2)
        (cadadr (cadadr (cadadr l3)))))
```

```text
7 7 7
```


### <span class="section-num">3.30</span> Exercise 2.26 {#exercise-2-dot-26}


#### <span class="section-num">3.30.1</span> Question {#question}

> Suppose we define <span class="inline-src language-scheme" data-lang="scheme">`x`</span> and <span class="inline-src language-scheme" data-lang="scheme">`y`</span> to be two lists:

```scheme
(define x (list 1 2 3))
(define y (list 4 5 6))
```

> What result is printed by the interpreter in response to evaluating each of the
> following expressions:

```scheme
(append x y)
(cons x y)
(list x y)
```


#### <span class="section-num">3.30.2</span> Answer {#answer}

```scheme { linenos=true, linenostart=1 }
<<echo>>
(let* ((x (list 1 2 3))
      (y (list 4 5 6))
      (e1 (append x y))
      (e2 (cons x y))
      (e3 (list x y)))
  (echo "(append x y):" e1)
  (echo "(cons x y):" e2)
  (echo "(list x y):" e3))
```

```text
(append x y): (1 2 3 4 5 6)
(cons x y): ((1 2 3) 4 5 6)
(list x y): ((1 2 3) (4 5 6))
```


### <span class="section-num">3.31</span> Exercise 2.27 {#exercise-2-dot-27}


#### <span class="section-num">3.31.1</span> Question {#question}

Modify your <span class="inline-src language-scheme" data-lang="scheme">`reverse`</span> procedure of Exercise 2.18 to produce a
<span class="inline-src language-scheme" data-lang="scheme">`deep-reverse`</span> procedure that takes a list as argument and returns as
its value the list with its elements reversed and with all sublists
deep-reversed as well. For example,

```scheme
(define x (list (list 1 2) (list 3 4)))
x
;; ((1 2) (3 4))
(reverse x)
;; ((3 4) (1 2))
(deep-reverse x)
;; ((4 3) (2 1))
```


#### <span class="section-num">3.31.2</span> Answer {#answer}

<a id="code-snippet--deep-reverse"></a>
```scheme
(define (deep-reverse l)
  (define len (length l))
  (define (iter i result)
    (if (< (1- len) i)
        result
        (iter (+ i 1)
              (cons (let ((here (list-ref l i)))
                      (if (pair? here)
                          (deep-reverse here)
                          here))
                    result))))
  (iter 0 '()))
```

```scheme
<<deep-reverse>>
(deep-reverse (list (list 1 2) (list 3 4)))
```

```scheme
((4 3) (2 1))
```


### <span class="section-num">3.32</span> Exercise 2.28 {#exercise-2-dot-28}


#### <span class="section-num">3.32.1</span> Question {#question}

Write a procedure <span class="inline-src language-scheme" data-lang="scheme">`fringe`</span> that takes as argument a tree (represented
as a list) and returns a list whose elements are all the leaves of the tree
arranged in left-to-right order. For example,

```scheme
(define x (list (list 1 2) (list 3 4)))
(fringe x)
;; (1 2 3 4)
(fringe (list x x))
;; (1 2 3 4 1 2 3 4)
```


#### <span class="section-num">3.32.2</span> Answer {#answer}

<a id="code-snippet--fringe"></a>
```scheme
(define (fringe l)
  (if (null? l)
      #nil
      (let ((a (car l))
            (d (cdr l)))
        (append (if (pair? a)
                    (fringe a)
                    (list a))
                (fringe d)))))
```

```scheme
<<fringe>>
(fringe (list (list 1 (list 2 3)) (list 4 5)))
```

```nil
(1 2 3 4 5)
```


### <span class="section-num">3.33</span> Exercise 2.29: Binary Mobiles {#exercise-2-dot-29-binary-mobiles}


#### <span class="section-num">3.33.1</span> Text Definitions {#text-definitions}

<a id="code-snippet--mobile-constructors-list"></a>
```scheme
(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))
```


#### <span class="section-num">3.33.2</span> Question A: Selectors {#question-a-selectors}

> Write the corresponding selectors <span class="inline-src language-scheme" data-lang="scheme">`left-branch`</span> and
> <span class="inline-src language-scheme" data-lang="scheme">`right-branch`</span>, which return the branches of a mobile, and
> <span class="inline-src language-scheme" data-lang="scheme">`branch-length`</span> and <span class="inline-src language-scheme" data-lang="scheme">`branch-structure`</span>, which return the
> components of a branch.


#### <span class="section-num">3.33.3</span> Answer A {#answer-a}

<a id="code-snippet--mobile-selectors-list"></a>
```scheme
<<mobile-constructors-list>>
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (cadr mobile))
(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (cadr branch))
```


#### <span class="section-num">3.33.4</span> Question B: total-weight {#question-b-total-weight}

> Using your selectors, define a procedure <span class="inline-src language-scheme" data-lang="scheme">`total-weight`</span> that returns
> the total weight of a mobile.


#### <span class="section-num">3.33.5</span> Answer B {#answer-b}

<a id="code-snippet--mobile-total-weight"></a>
```scheme
(define (total-weight mobile)
  (let ((leftS (branch-structure (left-branch mobile)))
        (rightS (branch-structure (right-branch mobile))))
    (+ (if (number? leftS)
           leftS
           (total-weight leftS))
       (if (number? rightS)
           rightS
           (total-weight rightS)))))
```

```scheme
<<mobile-selectors-list>>
<<mobile-total-weight>>

(let ((M1 (make-mobile
           (make-branch 5 5)
           (make-branch 1
                        (make-mobile (make-branch 2 2)
                                     (make-branch 2 3)))))
      (M2 (make-mobile
           (make-branch 2
                        (make-mobile
                         (make-branch 2 2)
                         (make-branch 2 2)))
           (make-branch 2
                        (make-mobile
                         (make-branch 2 2)
                         (make-branch 2 2))))))
  (list (total-weight M1)
        (total-weight M2)))
```

```text
| 10 | 8 |
```


#### <span class="section-num">3.33.6</span> Question C: Balancing {#question-c-balancing}

A mobile is said to be **balanced** if the torque applied by its top-left branch is
equal to that applied by its top-right branch (that is, if the length of the
left rod multiplied by the weight hanging from that rod is equal to the
corresponding product for the right side) and if each of the submobiles hanging
off its branches is balanced. Design a predicate that tests whether a binary
mobile is balanced.


#### <span class="section-num">3.33.7</span> Answer C {#answer-c}

I can imagine a ton of ways I could shoot myself in the foot by starting with
optimization, so let's just try to nail down exactly what needs to happen.

<a id="code-snippet--mobile-balanced-dumb"></a>
```scheme
(define (total-torque branch)
  (let ((len (branch-length branch))
        (struct (branch-structure branch)))
    (* len
       (if (number? struct)
           struct
           (let ((lbs (branch-structure (left-branch struct)))
                 (rbs (branch-structure (right-branch struct))))
             (+ (total-weight lbs)
                (total-weight rbs)))))))
(define (balanced? mobile)
  (let* ((l (left-branch mobile))
         (ls (branch-structure l))
         (r (right-branch mobile))
         (rs (branch-structure r))
         (l-balanced (if (number? ls)
                         #t
                         (balanced? ls)))
         (r-balanced (if (number? rs)
                         #t ;; Fixed: accidentally used ls again.
                         (balanced? rs))))
    (if (and l-balanced r-balanced)
        (= (total-torque l)
           (total-torque r))
        #f)))
```

I'll also need a modified <span class="inline-src language-scheme" data-lang="scheme">`total-weight`</span> that can notice when its
argument is a non-mobile and just return the value.

<a id="code-snippet--mobile-total-weight-2"></a>
```scheme
(define (total-weight mobile)
  (if (number? mobile)
      mobile ;; this is a weight, just return it
      (let ((leftS (branch-structure (left-branch mobile)))
            (rightS (branch-structure (right-branch mobile))))
        (+ (if (number? leftS)
               leftS
               (total-weight leftS))
           (if (number? rightS)
               rightS
               (total-weight rightS))))))
```

```scheme
<<echo>>
<<mobile-selectors-list>>
<<mobile-total-weight-2>>
<<mobile-balanced-dumb>>
(define M1 ;; all segments unbalanced
  (make-mobile
   (make-branch 5 5) ;; torque 25 = 5*5
   (make-branch 1 ;; torque 5 = (2 + 3) * 1
                (make-mobile (make-branch 2 2)
                             (make-branch 2 3)))))
(define M2 ;; all segments balanced as they are duplicates
  (make-mobile
   (make-branch 2 ;; torque 8 = 2*(2+2)
                (make-mobile
                 (make-branch 2 2)
                 (make-branch 2 2)))
   (make-branch 2
                (make-mobile
                 (make-branch 2 2)
                 (make-branch 2 2)))))
(define M3 ;; equal torque, but one segment is unbalanced.
  (make-mobile
   (make-branch 2 ;; torque 12 = 2*(4+2)
                (make-mobile
                 (make-branch 2 4) ;; torque 8 = 2*4
                 (make-branch 4 2))) ;torque 8 = 4*2
   (make-branch 3 ;; torque 12 = 3*(1+3)
                (make-mobile
                 (make-branch 1 1) ;; torque 1
                 (make-branch 1 3))))) ;; torque 3
(define M4 ;; equal torque
  (make-mobile
   (make-branch 2 ;; torque 12 = 2*(4+2)
                (make-mobile
                 (make-branch 2 4) ;; torque 8 = 2*4
                 (make-branch 4 2))) ;torque 8 = 4*2
   (make-branch 3 ;; torque 12 = 3*(1+3)
                (make-mobile
                 (make-branch 3 1) ;; torque 3
                 (make-branch 1 3))))) ;; torque 3
(define (isbalanced? Name Status)
  (define Success "is balanced!")
  (define Failure "is not balanced!")
  (if (eq? Status #t)
      (echo Name Success)
      (echo Name Failure)))
(isbalanced? "M1" (balanced? M1))
(isbalanced? "M2" (balanced? M2))
(isbalanced? "M3" (balanced? M3))
(isbalanced? "M4" (balanced? M4))
```

```text
M1 is not balanced!
M2 is balanced!
M3 is not balanced!
M4 is balanced!
```

This one took quite some fiddling. First I struggled to figure out exactly how I
should juggle of torque, weight, and balance. For example, a mobile is balanced
if the torques of its branches are equal, and if every submobile is also
balanced, with torque being defined as length\\(\times\\)weight. Note that it's
the _weight_, not its submobile's _torque_.

TODO: I'd like to come back and make an optimized version that doesn't have to
crawl the tree multiple times. Maybe getting torque/weight/balanced status at
the same time?


#### <span class="section-num">3.33.8</span> Question D: Implementation shakeup {#question-d-implementation-shakeup}

> Suppose we change the representation of mobiles so that the constructors are

<a id="code-snippet--mobile-constructors-cons"></a>
```scheme
(define (make-mobile left right)
  (cons left right))

(define (make-branch length structure)
  (cons length structure))
```

> How much do you need to change your programs to convert to the new representation?


#### <span class="section-num">3.33.9</span> Answer D {#answer-d}

Ideally I should only need to change the selectors, like this:

<a id="code-snippet--mobile-selectors-cons"></a>
```scheme
<<mobile-constructors-cons>>
(define (left-branch mobile)
  (car mobile))
(define (right-branch mobile)
  (cdr mobile))
(define (branch-length branch)
  (car branch))
(define (branch-structure branch)
  (cdr branch))
```

Now, if I run the same code, I should get the same result:

```scheme
<<echo>>
<<mobile-selectors-cons>>
<<mobile-total-weight-2>>
<<mobile-balanced-dumb>>
(define M1 ;; all segments unbalanced
  (make-mobile
   (make-branch 5 5) ;; torque 25 = 5*5
   (make-branch 1 ;; torque 5 = (2 + 3) * 1
                (make-mobile (make-branch 2 2)
                             (make-branch 2 3)))))
(define M2 ;; all segments balanced as they are duplicates
  (make-mobile
   (make-branch 2 ;; torque 8 = 2*(2+2)
                (make-mobile
                 (make-branch 2 2)
                 (make-branch 2 2)))
   (make-branch 2
                (make-mobile
                 (make-branch 2 2)
                 (make-branch 2 2)))))
(define M3 ;; equal torque, but one segment is unbalanced.
  (make-mobile
   (make-branch 2 ;; torque 12 = 2*(4+2)
                (make-mobile
                 (make-branch 2 4) ;; torque 8 = 2*4
                 (make-branch 4 2))) ;torque 8 = 4*2
   (make-branch 3 ;; torque 12 = 3*(1+3)
                (make-mobile
                 (make-branch 1 1) ;; torque 1
                 (make-branch 1 3))))) ;; torque 3
(define M4 ;; equal torque
  (make-mobile
   (make-branch 2 ;; torque 12 = 2*(4+2)
                (make-mobile
                 (make-branch 2 4) ;; torque 8 = 2*4
                 (make-branch 4 2))) ;torque 8 = 4*2
   (make-branch 3 ;; torque 12 = 3*(1+3)
                (make-mobile
                 (make-branch 3 1) ;; torque 3
                 (make-branch 1 3))))) ;; torque 3
(define (isbalanced? Name Status)
  (define Success "is balanced!")
  (define Failure "is not balanced!")
  (if (eq? Status #t)
      (echo Name Success)
      (echo Name Failure)))
(isbalanced? "M1" (balanced? M1))
(isbalanced? "M2" (balanced? M2))
(isbalanced? "M3" (balanced? M3))
(isbalanced? "M4" (balanced? M4))
```

```text
M1 is not balanced!
M2 is balanced!
M3 is not balanced!
M4 is balanced!
```


### <span class="section-num">3.34</span> Exercise 2.30 {#exercise-2-dot-30}


#### <span class="section-num">3.34.1</span> Question {#question}

Define a procedure
<span class="inline-src language-scheme" data-lang="scheme">`square-tree`</span> analogous to the <span class="inline-src language-scheme" data-lang="scheme">`square-@/list`</span> procedure of
[3.25](#exercise-2-dot-21).  That is, <span class="inline-src language-scheme" data-lang="scheme">`square-tree`</span> should behave as follows:

```scheme { linenos=true, linenostart=1 }
(square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))
;; (1 (4 (9 16) 25) (36 49))
```

Define <span class="inline-src language-scheme" data-lang="scheme">`square-tree`</span> both directly (i.e., without using any higher-order
procedures) and also by using <span class="inline-src language-scheme" data-lang="scheme">`map`</span> and recursion.


#### <span class="section-num">3.34.2</span> Answer {#answer}

<a id="code-snippet--square-tree"></a>
```scheme
<<square>>
(define (square-tree-discrete tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (square tree))
        (else (cons (square-tree-discrete (car tree))
                    (square-tree-discrete (cdr tree))))))

(define (square-tree-map tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (square-tree-map sub-tree)
             (square sub-tree)))
       tree))
```

```scheme
(load "mattcheck2.scm")
<<square-tree>>
(let ((testlist
       (list 1
             (list 2 (list 3 4) 5)
             (list 6 7)))
      (answer
       (list 1
             (list 4 (list 9 16) 25)
             (list 36 49))))
  (mattcheck "square-tree-discrete"
             (square-tree-discrete testlist)
             answer)
  (mattcheck "square-tree-map"
             (square-tree-map testlist)
             answer))
```

```text
SUCCEED at square-tree-discrete
SUCCEED at square-tree-map
```

While writing that, I ran headfirst into a lesson I've had to repeatedly learn: default Guile functions end their lists with <span class="inline-src language-scheme" data-lang="scheme">`'()`</span> which does not match equality with lists ended with <span class="inline-src language-scheme" data-lang="scheme">`#nil`</span>.

```scheme
(let ((parens-list (cons 1 (cons 2 (cons 3 '()))))
      (nil-list (cons 1 (cons 2 (cons 3 #nil)))))
  (display parens-list)(display " <== ends with '()")
  (newline)
  (display nil-list)(display " <== ends with #nil")
  (newline)
  (display "Are these two lists equal? > ")
  (display (equal? parens-list nil-list))
  (newline)
  (display "Does Guile consider #nil and '() equal? > ")
  (display (equal? #nil '()))
  (newline)
  (display "What about #nil and #f? > ")
  (display (equal? #nil #f)))
```

```text
(1 2 3) <== ends with '()
(1 2 3) <== ends with #nil
Are these two lists equal? > #f
Does Guile consider #nil and '() equal? > #f
What about #nil and #f? > #f
```


### <span class="section-num">3.35</span> Exercise 2.31 {#exercise-2-dot-31}


#### <span class="section-num">3.35.1</span> Question {#question}

> Abstract your answer to [3.34](#exercise-2-dot-30) to produce a procedure
> <span class="inline-src language-scheme" data-lang="scheme">`tree-map`</span> with the property that <span class="inline-src language-scheme" data-lang="scheme">`square-tree`</span> could be
> defined as

```scheme
(define (square-tree tree) (tree-map square tree))
```


#### <span class="section-num">3.35.2</span> Answer {#answer}

<a id="code-snippet--tree-map"></a>
```scheme
(define (tree-map f tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (f tree))
        (else (cons (tree-map f (car tree))
                    (tree-map f (cdr tree))))))
```

```scheme
(load "mattcheck2.scm")
<<tree-map>>
<<square>>
(define (square-tree-tm tree)
  (tree-map square tree))
(let ((testlist
       (list 1
             (list 2 (list 3 4) 5)
             (list 6 7)))
      (answer
       (list 1
             (list 4 (list 9 16) 25)
             (list 36 49))))
  (mattcheck "square-tree-tm"
             (square-tree-tm testlist)
             answer))
```

```text
SUCCEED at square-tree-tm
```


### <span class="section-num">3.36</span> Exercise 2.32 {#exercise-2-dot-32}


#### <span class="section-num">3.36.1</span> Question {#question}

> We can represent a set as a list of distinct elements, and we can represent the
> set of all subsets of the set as a list of lists. For example, if the set is
> <span class="inline-src language-scheme" data-lang="scheme">`(1 2 3)`</span>, then the set of all subsets is <span class="inline-src language-scheme" data-lang="scheme">`(() (3) (2) (2 3) (1) (1 3) (1 2) (1 2 3))`</span>. Complete the following definition of a procedure that
> generates the set of subsets of a set and give a clear explanation of why it
> works:

```scheme
(define (subsets s)
  (if (null? s)
      (list nil)
      (let ((rest (subsets (cdr s))))
        (append rest (map <??> rest)))))
```


#### <span class="section-num">3.36.2</span> Answer {#answer}

<a id="code-snippet--subsets"></a>
```scheme
(define (subsets s)
  (if (null? s)
      (list '())
      (let ((rest (subsets (cdr s))))
        (append rest (map (lambda(x)
                            (cons (car s) x))
                          rest)))))
```

```scheme
<<subsets>>
(load "mattcheck2.scm")
(let ((answer
       (list '()
             (list 3)
             (list 2) (list 2 3)
             (list 1) (list 1 3)
             (list 1 2) (list 1 2 3))))
  (mattcheck "subsets"
             (subsets (list 1 2 3))
             answer))
```

```text
SUCCEED at subsets
```

Essentially, <span class="inline-src language-scheme" data-lang="scheme">`subsets`</span> is rotating through members of the list in a
similar way that a counter incrementing rotates through all numbers in its base.
For a list with items \\(1\\) to \\(n\\), <span class="inline-src language-scheme" data-lang="scheme">`subsets`</span> makes a list with the
last item, \\([n]\\), then lists \\([n-1]\\) and \\([n-1, n]\\), then lists
\\([n-2][n-2, n-1][n-2,n]\\), then \\([n-3][n-3,n-2][n-3,n-1][n-3,n]\\) and so on.

I'd like to try adding some debugging statements to subsets and see if it might
help clarify the operation.

<a id="code-snippet--echo-return"></a>
```scheme
<<echo>>
(define (doit f x)
  (f x) ;; this probably has a formal lambda calculus name
  x)    ;; but I don't know what it is
(define (echo-return x)
  (doit echo x))
(define (echo-y-return-x x . y)
  (apply echo y)
  x)
```

```scheme
<<subsets>>
<<echo-return>>
(define (subsets-debug s)
  (echo "Enter with" s "{")
  (let ((a1
         (if (null? s)
             (echo-return (list '()))
             (let ((rest (subsets-debug (cdr s))))
               (echo "[ iter" (car s) "over" rest "]")
               (append rest (map (lambda(x)
                                   (let ((y (cons (car s) x)))
                                     (format #t "~a " y)
                                     y))
                                 rest))))))
    (echo "} end" s)
    a1))
(let ((answer
       (list '()
             (list 3)
             (list 2) (list 2 3)
             (list 1) (list 1 3)
             (list 1 2) (list 1 2 3))))
  (subsets-debug (list 1 2 3))
  answer)
```

```text
Enter with (1 2 3) {
Enter with (2 3) {
Enter with (3) {
Enter with () {
(())
} end ()
[ iter 3 over (()) ]
(3)
} end (3)
[ iter 2 over (() (3)) ]
(2) (2 3)
} end (2 3)
[ iter 1 over (() (3) (2) (2 3)) ]
(1) (1 3) (1 2) (1 2 3)
} end (1 2 3)
```


### <span class="section-num">3.37</span> 2.2.3: Sequences as Conventional Interfaces {#2-dot-2-dot-3-sequences-as-conventional-interfaces}

Abstractions are an important part of making code clearer and more easy to
understand. One beneficial manner of abstraction is making available
conventional interfaces for working with compound data, such as
<span class="inline-src language-scheme" data-lang="scheme">`filter`</span> and <span class="inline-src language-scheme" data-lang="scheme">`map`</span>.

This allows for easily making "signal-flow" conceptions of processes:

{{< figure src="/ox-hugo/t_2-2-3.png" >}}


### <span class="section-num">3.38</span> Exercise 2.33: The flexibility of `accumulate` {#exercise-2-dot-33-the-flexibility-of-accumulate}


#### <span class="section-num">3.38.1</span> Text Definitions {#text-definitions}

<a id="code-snippet--accumulate"></a>
```scheme
(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op
                      initial
                      (cdr sequence)))))
```


#### <span class="section-num">3.38.2</span> Question {#question}

> Fill in the missing expressions to complete the following definitions of some basic list-manipulation operations as accumulations.

```scheme
(define (map p sequence)
  (accumulate (lambda (x y) <??>) nil sequence))
(define (append seq1 seq2)
  (accumulate cons <??> <??>))
(define (length sequence)
  (accumulate <??> 0 sequence))
```


#### <span class="section-num">3.38.3</span> Answer {#answer}

<a id="code-snippet--accumulate-forms"></a>
```scheme { linenos=true, linenostart=1 }
(define (map-acc p sequence)
  (accumulate (lambda (x y)
                (cons (p x) y))
              '() sequence))
(define (append-acc seq1 seq2)
  (accumulate cons seq2 seq1))
(define (length-acc sequence)
  (accumulate (lambda(x y)
                (1+ y))
              0 sequence))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<accumulate>>
<<accumulate-forms>>
<<square>>
(let ((l (list 1 2 3 4)))
  (mattcheck "map"
             (map square l)
             (map-acc square l))
  (mattcheck "append"
             (append l l)
             (append-acc l l))
  (mattcheck "length"
             (length l)
             (length-acc l)))
```

```text
SUCCEED at map
SUCCEED at append
SUCCEED at length
```


### <span class="section-num">3.39</span> Exercise 2.34 {#exercise-2-dot-34}


#### <span class="section-num">3.39.1</span> Question {#question}

> Evaluating a polynomial in \\(x\\) at a given value of \\(x\\) can be formulated as
> an accumulation. We evaluate the polynomial
>
> $$ a\_n x^n + a\_{n-1} x^{n-1} + \dots + a\_1 x + a\_0 $$
>
> using a well-known algorithm called _Horner's rule_, which structures the
> computation as
>
> $$ (\dots (a\_n x + a\_{n-1}) x + \dots + a\_1) x + a\_0. $$
>
> In other words, we start with \\(a\_n\\), multiply by \\(x\\), add \\(a\_{n-1}\\),
> multiply by \\(x\\), and so on, until we reach \\(a\_0\\).
>
> Fill in the following template to produce a procedure that evaluates a
> polynomial using Horner's rule. Assume that the coefficients of the polynomial
> are arranged in a sequence, from \\(a\_0\\) through \\(a\_n\\).

```scheme
(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms) <??>)
              0
              coefficient-sequence))
```

> For example, to compute \\(1 + 3x + 5x^3 + x^5\\) at \\(x = 2\\) you
> would evaluate

```scheme
(horner-eval 2 (list 1 3 0 5 0 1))
```


#### <span class="section-num">3.39.2</span> Answer {#answer}

<a id="code-snippet--horner-eval"></a>
```scheme { linenos=true, linenostart=1 }
(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                (+ this-coeff
                   (* higher-terms x)))
              0
              coefficient-sequence))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<accumulate>>
<<horner-eval>>
(mattcheck "horner-eval"
           (horner-eval 2 (list 1 3 0 5 0 1))
           79)
```

```text
SUCCEED at horner-eval
```

This one was very satisfying. It essentially "delays" the exponentiation, carrying it out per stage, by rewriting this:

\\(1 + 3 \times 2 + 5 \times 2^3 + 2^5\\)

Into this operation, left to right:

$$ 0+1\*2+0\*2+0\*2+3\*2+1 $$


### <span class="section-num">3.40</span> Exercise 2.35 {#exercise-2-dot-35}


#### <span class="section-num">3.40.1</span> Question {#question}

> Redefine <span class="inline-src language-scheme" data-lang="scheme">`count-leaves`</span> from
> 2.2.2 as an accumulation:


#### <span class="section-num">3.40.2</span> Answer {#answer}

<a id="code-snippet--count-leaves-acc"></a>
```scheme { linenos=true, linenostart=1 }
(define (count-leaves-acc t)
  (accumulate (lambda(i total)
                (+ i total))
              0 (map (lambda(x)
                       (if (pair? x)
                           (count-leaves-acc x)
                           1))
                     t)))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<accumulate>>
<<count-leaves>>
<<count-leaves-acc>>
(let ((l (list (list (list 1 2 3) 4) (list 5 (list 6 7) 8))))
  (mattcheck "count-leaves-acc"
              (count-leaves l)
              (count-leaves-acc l)))
```

```text
SUCCEED at count-leaves-acc
```


### <span class="section-num">3.41</span> Exercise 2.36: Accumulate across multiple lists {#exercise-2-dot-36-accumulate-across-multiple-lists}


#### <span class="section-num">3.41.1</span> Question {#question}

> The procedure <span class="inline-src language-scheme" data-lang="scheme">`accumulate-n`</span> is similar to <span class="inline-src language-scheme" data-lang="scheme">`accumulate`</span>
> except that it takes as its third argument a sequence of sequences, which are
> all assumed to have the same number of elements. It applies the designated
> accumulation procedure to combine all the first elements of the sequences, all
> the second elements of the sequences, and so on, and returns a sequence of the
> results. For instance, if <span class="inline-src language-scheme" data-lang="scheme">`s`</span> is a sequence containing four sequences,
> <span class="inline-src language-scheme" data-lang="scheme">`((1 2 3) (4 5 6) (7 8 9) (10 11 12))`</span>, then the value of
> <span class="inline-src language-scheme" data-lang="scheme">`(accumulate-n + 0 s)`</span> should be the sequence <span class="inline-src language-scheme" data-lang="scheme">`(22 26 30)`</span>.
> Fill in the missing expressions in the following definition of
> <span class="inline-src language-scheme" data-lang="scheme">`accumulate-n`</span>:

```scheme
(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      nil
      (cons (accumulate op init <??>)
            (accumulate-n op init <??>))))
```


#### <span class="section-num">3.41.2</span> Answers {#answers}

<a id="code-snippet--accumulate-n"></a>
```scheme { linenos=true, linenostart=1 }
(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate op init
                        (map car seqs))
            (accumulate-n op init
                          (map cdr seqs)))))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<accumulate>>
<<accumulate-n>>
(let ((s (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12))))
  (mattcheck "accumulate-n"
             (accumulate-n + 0 s)
             (list 22 26 30)))
```

```text
SUCCEED at accumulate-n
```


### <span class="section-num">3.42</span> Exercise 2.37: Enter the matrices {#exercise-2-dot-37-enter-the-matrices}


#### <span class="section-num">3.42.1</span> Question {#question}

_See full quote in book._

Suppose we represent vectors as lists, and matrices as lists of vectors. For example:

\left(

\begin{array}{cccc}
  1 & 2 & 3 & 4 \\\\
  4 & 5 & 6 & 6 \\\\
  6 & 7 & 8 & 9
\end{array}

\right)

<span class="inline-src language-scheme" data-lang="scheme">`'((1 2 3 4) (4 5 6 6) (6 7 8 9))`</span>

Define these operations:

```scheme { linenos=true, linenostart=1 }
(define (dot-product v w)
  (accumulate + 0 (map * v w)))
(define (matrix-*-vector m v)
  (map <??> m))
(define (transpose mat)
  (accumulate-n <??> <??> mat))
(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map <??> m)))
```


#### <span class="section-num">3.42.2</span> Answer {#answer}

<a id="code-snippet--matrix-ops"></a>
```scheme { linenos=true, linenostart=1 }
(define (dot-product v w)
  (accumulate + 0 (map * v w)))
(define (matrix-*-vector m v)
  (map (lambda(row)
         (dot-product v row))
       m))
(define (transpose mat)
  (accumulate-n cons '() mat))
(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map (lambda(row)
           (map (lambda(col)
                  (dot-product row col))
                cols))
           m)))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<echo>>
<<accumulate>>
<<accumulate-n>>
<<matrix-ops>>
(let* ((v1 (list 1 2 3 4))
      (v2 (list 5 6 7 8))
      (m1 (list v1 v2))
      (m1t (list (list 1 5)
                (list 2 6)
                (list 3 7)
                (list 4 8)))
      (m1-*-m1t (list (list 30 70)
                      (list 70 174))))
  (mattcheck "transpose"
             (transpose m1)
             m1t)
  (mattcheck "dot-product"
             (dot-product v1 v2)
             70)
  (mattcheck "matrix-*-vector"
             (matrix-*-vector m1 v1)
             (list 30 70))
  (mattcheck "matrix-*-matrix"
             (matrix-*-matrix m1 m1t)
             m1-*-m1t))
```

```text
SUCCEED at transpose
SUCCEED at dot-product
SUCCEED at matrix-*-vector
SUCCEED at matrix-*-matrix
```

I struggled a lot with what order things should be processed and applied in.
Some of that came from never having done matrix multiplication before now. I
would probably still not understand it if I hadn't found [Herb Gross' lecture
regarding matrix operations](https://youtu.be/MfN1lqArwAg)[^fn:2].

The other issue is nested map operations. I find it easy to read Python-ish
code like this:

```python
# Pseudocode
for row in m1:
    for column in m2t:
        for a,b in row,column:
            answer[i:j] += a*b
```

But much harder to comprehend Lisp code like this:

```scheme
(map (lambda(row)
       (map (lambda(col)
              (dot-product row col))
            m1t))
     m1)
```

I must have a mental block in the way I think about map operations.


### <span class="section-num">3.43</span> Exercise 2.38: fold-right {#exercise-2-dot-38-fold-right}


#### <span class="section-num">3.43.1</span> Question A {#question-a}

> The <span class="inline-src language-scheme" data-lang="scheme">`accumulate`</span> procedure
> is also known as <span class="inline-src language-scheme" data-lang="scheme">`fold-right`</span>, because it combines the first element of
> the sequence with the result of combining all the elements to the right.  There
> is also a <span class="inline-src language-scheme" data-lang="scheme">`fold-left`</span>, which is similar to <span class="inline-src language-scheme" data-lang="scheme">`fold-right`</span>, except that
> it combines elements working in the opposite direction:

<a id="code-snippet--fold-left"></a>
```scheme
(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))
```

> What are the values of

```scheme
(fold-right / 1 (list 1 2 3))
(fold-left / 1 (list 1 2 3))
(fold-right list nil (list 1 2 3))
(fold-left list nil (list 1 2 3))
```


#### <span class="section-num">3.43.2</span> Answer A {#answer-a}

```scheme { linenos=true, linenostart=1 }
<<accumulate>>
(define fold-right accumulate)
<<fold-left>>
<<echo>>
(echo "(fold-right / 1 (list 1 2 3)):" (fold-right / 1 (list 1 2 3)))
(echo "(fold-left / 1 (list 1 2 3)):" (fold-left / 1 (list 1 2 3)))
(echo "(fold-right list nil (list 1 2 3))" (fold-right list '() (list 1 2 3)))
(echo "(fold-left list nil (list 1 2 3))" (fold-left list '() (list 1 2 3)))
```

```text
(fold-right / 1 (list 1 2 3)): 3/2
(fold-left / 1 (list 1 2 3)): 1/6
(fold-right list nil (list 1 2 3)) (1 (2 (3 ())))
(fold-left list nil (list 1 2 3)) (((() 1) 2) 3)
```


#### <span class="section-num">3.43.3</span> Question B {#question-b}

> Give a property that <span class="inline-src language-scheme" data-lang="scheme">`op`</span> should satisfy to guarantee that
> <span class="inline-src language-scheme" data-lang="scheme">`fold-right`</span> and <span class="inline-src language-scheme" data-lang="scheme">`fold-left`</span> will produce the same values
> for any sequence.


#### <span class="section-num">3.43.4</span> Answer B {#answer-b}

They would need to be commutative, like addition and multiplication.

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<accumulate>>
(define fold-right accumulate)
<<fold-left>>
<<echo>>

(let* ((l (list 1 2 3 4 5))
      (lr (reverse l)))
  (mattcheck "commutative addition"
             (fold-right + 0 l)
             (fold-right + 0 lr)
             (fold-left + 0 l)
             (fold-left + 0 lr))
  (mattcheck "commutative multiplication"
             (fold-right * 1 l)
             (fold-right * 1 lr)
             (fold-left * 1 l)
             (fold-left * 1 lr)))
```

```text
SUCCEED at commutative addition
SUCCEED at commutative multiplication
```


### <span class="section-num">3.44</span> Exercise 2.39: reverse via fold {#exercise-2-dot-39-reverse-via-fold}


#### <span class="section-num">3.44.1</span> Question {#question}

> Complete the following
> definitions of <span class="inline-src language-scheme" data-lang="scheme">`reverse`</span> (Exercise 2.18) in terms of
> <span class="inline-src language-scheme" data-lang="scheme">`fold-right`</span> and <span class="inline-src language-scheme" data-lang="scheme">`fold-left`</span> from Exercise 2.38:

```scheme
(define (reverse sequence)
  (fold-right (lambda (x y) <??>) nil sequence))
(define (reverse sequence)
  (fold-left (lambda (x y) <??>) nil sequence))
```


#### <span class="section-num">3.44.2</span> Answer {#answer}

First, I'd like to start using the SRFI folds instead. This is my little "compatibility module".

<a id="code-snippet--fold-compat"></a>
```scheme { linenos=true, linenostart=1 }
;; SICP compat
(use-srfis '(1))
(define accumulate fold-right)
(define fold-left fold)
```

Now to the problem.

<a id="code-snippet--reverse-fold"></a>
```scheme { linenos=true, linenostart=1 }
<<fold-compat>>
(define (reverse-fr sequence)
  (fold-right (lambda (x y)
                (append  y (list x)))
              '() sequence))
(define (reverse-fl sequence)
  (fold-left (lambda (x y)
               (append (list x) y))
             '() sequence))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<reverse-fold>>
(let ((l (iota 5))
      (lr (reverse (iota 5))))
  (mattcheck "reverse-fr"
             (reverse-fr l)
             lr)
  (mattcheck "reverse-fl"
             (reverse-fl l)
             lr))
```

```text
SUCCEED at reverse-fr
SUCCEED at reverse-fl
```


### <span class="section-num">3.45</span> Exercise 2.40: `unique-pairs` {#exercise-2-dot-40-unique-pairs}


#### <span class="section-num">3.45.1</span> Text Definitions {#text-definitions}

<a id="code-snippet--enumerate-interval"></a>
```scheme { linenos=true, linenostart=1 }
(define (enumerate-interval low high)
  (if (> low high)
      '()
      (cons low
            (enumerate-interval
             (+ low 1)
             high))))
```

<a id="code-snippet--flatmap"></a>
```scheme { linenos=true, linenostart=1 }
<<fold-compat>>
(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))
```

<a id="code-snippet--prime-sum-txt"></a>
```scheme { linenos=true, linenostart=1 }
<<flatmap>>
<<enumerate-interval>>
<<prime-smallest-divisor>>
(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))
(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))
(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter prime-sum? (flatmap
                           (lambda (i)
                             (map (lambda (j) (list i j))
                                  (enumerate-interval 1 (- i 1))))
                           (enumerate-interval 1 n)))))
```


#### <span class="section-num">3.45.2</span> Question {#question}

> Define a procedure <span class="inline-src language-scheme" data-lang="scheme">`unique-pairs`</span> that, given an integer \\(n\\),
> generates the sequence of pairs \\((i, j)\\) with \\(1 \le j < i \le n\\). Use
> <span class="inline-src language-scheme" data-lang="scheme">`unique-pairs`</span> to simplify the definition of
> <span class="inline-src language-scheme" data-lang="scheme">`prime-sum-pairs`</span> given above.


#### <span class="section-num">3.45.3</span> Answer {#answer}

<a id="code-snippet--unique-pairs"></a>
```scheme { linenos=true, linenostart=1 }
<<fold-compat>>
<<enumerate-interval>>
<<flatmap>>
(define (unique-pairs n)
  (flatmap
   (lambda (i)
     (map (lambda (j) (list i j))
          (enumerate-interval 1 (- i 1))))
   (enumerate-interval 1 n)))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<unique-pairs>>
(let ((target 5)
      (answer (list (list 2 1)(list 3 1)(list 3 2)(list 4 1)
                    (list 4 2)(list 4 3)(list 5 1)(list 5 2)
                    (list 5 3)(list 5 4))))
  (mattcheck "unique-pairs"
             (unique-pairs target)
             answer))
<<echo>>
<<prime-sum-txt>>
(define (prime-sum-pairs-mine n)
  (map make-pair-sum
       (filter prime-sum?
               (unique-pairs n))))
(let ((answer (list (list 2 1 3) (list 3 2 5)
                    (list 4 1 5) (list 4 3 7)
                    (list 5 2 7)) ))
  (mattcheck "prime-sum-pairs with unique-pairs"
             (prime-sum-pairs-mine 5)
             answer))
```

```text
SUCCEED at unique-pairs
SUCCEED at prime-sum-pairs with unique-pairs
```


### <span class="section-num">3.46</span> Exercise 2.41: Ordered triples of positive integers {#exercise-2-dot-41-ordered-triples-of-positive-integers}


#### <span class="section-num">3.46.1</span> Question {#question}

> Write a procedure to find all ordered triples of distinct positive integers
> \\(i\\), \\(j\\), and \\(k\\) less than or equal to a given integer \\(n\\) that sum to
> a given integer \\(s\\).


#### <span class="section-num">3.46.2</span> Answer {#answer}

<a id="code-snippet--unique-triplets"></a>
```scheme { linenos=true, linenostart=1 }
<<fold-compat>>
<<enumerate-interval>>
<<flatmap>>
(define (unique-triplets n)
  (flatmap (lambda(i)
             (flatmap (lambda(j)
                        (map (lambda(k) (list i j k))
                             (enumerate-interval 1 (- j 1))))
                      (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))
```

<a id="code-snippet--triplets-sum"></a>
```scheme { linenos=true, linenostart=1 }
(define (triplets-sum n s)
  (filter (lambda(triplet)
            (= s (fold + 0 triplet)))
          (unique-triplets n)))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<unique-triplets>>
<<triplets-sum>>
(let ((answer-a
       (list (list 3 2 1) (list 4 2 1)
             (list 4 3 1) (list 4 3 2)
             (list 5 2 1) (list 5 3 1)
             (list 5 3 2) (list 5 4 1)
             (list 5 4 2) (list 5 4 3)))
      (answer-b
       (list (list 5 3 2) (list 5 4 1)
             (list 6 3 1) (list 7 2 1))))
  (mattcheck "unique-triplets"
             (unique-triplets 5)
             answer-a)
  (mattcheck "triplets-sum"
             (triplets-sum 7 10)
             answer-b))
```

```text
SUCCEED at unique-triplets
SUCCEED at triplets-sum
```


### <span class="section-num">3.47</span> Exercise 2.42: Eight Queens {#exercise-2-dot-42-eight-queens}


#### <span class="section-num">3.47.1</span> Question {#question}

> The \`\`eight-queens puzzle'' asks how to place eight queens on a chessboard so
> that no queen is in check from any other.

<a id="code-snippet--queens-txt"></a>
```scheme { linenos=true, linenostart=1 }
<<flatmap>>
<<enumerate-interval>>
(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position
                    new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))
```

> Complete the program by writing the following:
>
> -   representation for sets of board positions, including:
>     -   <span class="inline-src language-scheme" data-lang="scheme">`adjoin-position`</span>, which adjoins a new row-column position to a
>         set of positions
>     -   <span class="inline-src language-scheme" data-lang="scheme">`empty-board`</span>, which represents an empty set of positions.
> -   <span class="inline-src language-scheme" data-lang="scheme">`safe?`</span>, which determines for a set of positions, whether the queen
>     in the \\(k^{\mathrm{th}}\\) column is safe with respect to the others. (Note
>     that we need only check whether the new queen is safe---the other queens are
>     already guaranteed safe with respect to each other.)


#### <span class="section-num">3.47.2</span> Answer {#answer}

<a id="code-snippet--queens-mine"></a>
```scheme { linenos=true, linenostart=1 }
(define empty-board '())
(define (adjoin-position new-row column rest-of-queens)
  (cons (list new-row column) rest-of-queens))
(define (newer-position board)
  (car board))
(define (older-positions board)
  (cdr board))
(define (get-row position)
  (car position))
(define (get-column position)
  (cadr position))
(define (safe? k board)
  (define (same-row? a b)
    (= (get-row a) (get-row b)))
  (define (diagonal? a b)
    (let ((row-diff (abs (- (get-row a) (get-row b))))
          (col-diff (abs (- (get-column a) (get-column b)))))
      (= row-diff col-diff)))
  (let* ((new (newer-position board))
         (compare (older-positions board)))
    (and-map (lambda(pos)
               (not (or (same-row? new pos)
                   (diagonal? new pos))))
             compare)))
```

```scheme { linenos=true, linenostart=1 }
<<queens-txt>>
<<queens-mine>>
(load "mattcheck2.scm")
(let ((q4 '(((3 4) (1 3) (4 2) (2 1))
            ((2 4) (4 3) (1 2) (3 1))))
       (q11l 2680))
  (mattcheck "queens"
             (list (queens 4)
                   (length (queens 11)))
             (list q4 q11l)))
```

```text
SUCCEED at queens
```


### <span class="section-num">3.48</span> Exercise 2.43: Louis' `queens` {#exercise-2-dot-43-louis-queens}


#### <span class="section-num">3.48.1</span> Question {#question}

> Louis Reasoner is having a terrible time doing Exercise 2.42. His
> <span class="inline-src language-scheme" data-lang="scheme">`queens`</span> procedure seems to work, but it runs extremely slowly. (Louis
> never does manage to wait long enough for it to solve even the \\(6\times6\\)
> case.) When Louis asks Eva Lu Ator for help, she points out that he has
> interchanged the order of the nested mappings in the <span class="inline-src language-scheme" data-lang="scheme">`flatmap`</span>,
> writing it as

```scheme
(flatmap
 (lambda (new-row)
   (map (lambda (rest-of-queens)
          (adjoin-position new-row k rest-of-queens))
        (queen-cols (- k 1))))
 (enumerate-interval 1 board-size))
```

> Explain why this interchange makes the program run slowly. Estimate how long it
> will take Louis's program to solve the eight-queens puzzle, assuming that the
> program in Exercise 2.42 solves the puzzle in time \\(T\\).


#### <span class="section-num">3.48.2</span> Answer {#answer}

The biggest contributor to the slowdown is likely the location of the
<span class="inline-src language-scheme" data-lang="scheme">`queen-cols`</span> recursive call. This call being inside of the loop means
it is being called \\(k\\) more times, all returning the same answer. But my math reasoning skills limit me from going further .Let's check
with benchmarks.

<a id="code-snippet--queens-benched"></a>
```scheme { linenos=true, linenostart=1 }
<<queens-txt>>
<<queens-mine>>
(load "../mattbench.scm")

(define (queens-louis board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) (safe? k positions))
         (flatmap
          (lambda (new-row)
            (map (lambda (rest-of-queens)
                   (adjoin-position new-row k rest-of-queens))
                 (queen-cols (- k 1))))
          (enumerate-interval 1 board-size)))))
  (queen-cols board-size))

(define (test size)
  (format #t "~&normal queens x~a: ~a" size
          (mattbench (lambda()(queens size)) 10000))
  (format #t "~&swapped queens x~a: ~a" size
          (mattbench (lambda()(queens-louis size)) 1000)))

(map (lambda(n)
       (test n))
     (enumerate-interval 5 8))
```

```text
normal queens x5: 135424.6151
swapped queens x5: 5487381.643
normal queens x6: 538798.604
swapped queens x6: 85704466.218
normal queens x7: 2210394.5659
swapped queens x7: 1255288880.717
normal queens x8: 8067290.5992
swapped queens x8: 25384464494.259
```

{{< figure src="/ox-hugo/2-43.png" >}}

So that's 40 times worse at 5x5, 159 times worse at 6x6, 568 times worse at 7x7,
and 3146 times at 8x8.

after checking online with posts like this one&nbsp;[^fn:3] It looks
like the big-O notation could be considered \\(\Theta((N^N)\*T)\\) at its simplest.
I don't have a good grasp on how to reason out the time complexity of a
non-trivial algorithm. I aim to eventually do "How to Solve It" and "How to
Prove It" and possibly that will fill in the missing gaps before trying more
serious comp-sci literature.


### <span class="section-num">3.49</span> 2.2.4: Example: A Picture Language {#2-dot-2-dot-4-example-a-picture-language}

Authors describe a possible implementation of a "picture language" that tiles,
patterns, and warps images according to a specification. This language consists
of:

-   a **painter** which makes an image within a specified parallelogram shaped
    frame. This is the most primitive element.
-   **Operations** which make new painters from other painters. For example:
    -   _beside_ takes two painters, producing a new painter that puts one in the
        left half and one in the right half.
    -   _flip-horiz_ takes one painter and produces another to draw its image
        right-to-left reversed. These are defined as Scheme procedures and therefore
        have all the properties of Scheme procedures.

I'm going to have to get a little messy in order to make the picture language a
reality. First I need a support library called [guile-picture-language](https://git.elephly.net/gitweb.cgi?p=software/guile-picture-language.git;a=blob;f=pict.scm;h=54f0ce09f4ac33c3ecc3340f038d4c9da5f4a443;hb=HEAD)[^fn:4] I
installed Guix on my system and ran <span class="inline-src language-bash" data-lang="bash">`guix shell guile-picture-language guile`</span>. Now the <span class="inline-src language-scheme" data-lang="scheme">`pict`</span> module is availale to me.

```scheme { linenos=true, linenostart=1 }
(use-modules (pict))
(pict->file (triangle 50 70)
           "2/pict/test.svg")
```

{{< figure src="/ox-hugo/test.png" >}}

So that works.

How about this?

```scheme { linenos=true, linenostart=1 }
(use-modules (pict))
(let* ((p (pict-from-file "2/pict/Potato.png"))
       (pr (rotate p 180)))
(pict->file
 (scale (ht-append (vl-append pr p) pr p (vc-append pr p))
        0.5)
 "2/pict/Rotato.svg")) ;; must be SVG
```

{{< figure src="/ox-hugo/Rotato.png" >}}

And I just realized there's no flip/mirror function in this library. Racket's
picture language is more complete, but it won't integrate with org-mode how I
need. Maybe I can mock up a text-based version, similar to the binary mobile,
and simultaneously check my work with Racket.

```scheme { linenos=true, linenostart=1 }
;; tilting at windmills trying to make a text-only picture language
;; TODO, probably won't finish
(define pl-defaultsize 32)
(define (make-painter orientation height width)
  (cons orientation (cons a b)))
(define (p-orientation p)
  (car p))
(define (p-height p)
  (cadr p))
(define (p-width p)
  (cddr p))
(define (opposite orientation)
  (cond ((eq? orientation 'down) 'up)
        ((eq? orientation 'up ) 'down)
        ((eq? orientation 'left) 'right)
        ((eq? orientation 'right) 'left)))
(define (flip-p p)
  (make-painter (opposite (p-orientation p))))
(define (below a b)
  (make-painter 'down a b))
(define (beside a b)
  (make-painter 'right a b))
(define (flip-vert p)
  (if (pair? p)
      (make-painter ))
(define (paint pict)
  (define (rect p x y)
    (cond ((string? p)
           )))
  (rec p pl-defaultsize pl-defaultsize))
(define (beside a b)
  (hc-append a b))
(define (below a b)
  (vc-append a b))
```


### <span class="section-num">3.50</span> Exercise 2.44: `up-split` {#exercise-2-dot-44-up-split}


#### <span class="section-num">3.50.1</span> Text Definitions {#text-definitions}

```scheme { linenos=true, linenostart=1 }
(define (right-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (right-split painter
                                  (- n 1))))
        (beside painter
                (below smaller smaller)))))
```


#### <span class="section-num">3.50.2</span> Question {#question}

> Define the procedure <span class="inline-src language-scheme" data-lang="scheme">`up-split`</span> used by <span class="inline-src language-scheme" data-lang="scheme">`corner-split`</span>. It
> is similar to <span class="inline-src language-scheme" data-lang="scheme">`right-split`</span>, except that it switches the roles of
> <span class="inline-src language-scheme" data-lang="scheme">`below`</span> and <span class="inline-src language-scheme" data-lang="scheme">`beside`</span>.


#### <span class="section-num">3.50.3</span> Answer {#answer}

```scheme { linenos=true, linenostart=1 }
(define (up-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (up-split painter
                               (- n 1))))
        (below painter
               (beside smaller smaller)))))
```


### <span class="section-num">3.51</span> Exercise 2.45: Generalized splitting {#exercise-2-dot-45-generalized-splitting}


#### <span class="section-num">3.51.1</span> Question {#question}

> <span class="inline-src language-scheme" data-lang="scheme">`right-split`</span> and <span class="inline-src language-scheme" data-lang="scheme">`up-split`</span> can be expressed as instances
> of a general splitting operation. Define a procedure <span class="inline-src language-scheme" data-lang="scheme">`split`</span> with the
> property that evaluating

```scheme { linenos=true, linenostart=1 }
(define right-split (split beside below))
(define up-split (split below beside))
```

> produces procedures <span class="inline-src language-scheme" data-lang="scheme">`right-split`</span> and <span class="inline-src language-scheme" data-lang="scheme">`up-split`</span> with the
> same behaviors as the ones already defined.


#### <span class="section-num">3.51.2</span> Answer {#answer}

<a id="code-snippet--splits-generalized"></a>
```scheme { linenos=true, linenostart=1 }
(define (split f1 f2)
  (define (rec painter n)
    (if (= n 0)
        painter
        (let ((smaller (rec painter
                            (- n 1))))
          (f1 painter
              (f2 smaller smaller)))))
  rec)
(define right-split (split beside below))
;; This one goes down for some reason?
;(define up-split (split below beside))
(define (up-split painter n)
  (if (= n 0)
      painter
      (let ((smaller (up-split painter
                               (- n 1))))
        (below painter
               (beside smaller smaller)))))
```


### <span class="section-num">3.52</span> Exercise 2.46: Defining vectors {#exercise-2-dot-46-defining-vectors}


#### <span class="section-num">3.52.1</span> Question {#question}

> A two-dimensional vector \\(\hbox{\bf v}\\) running from the origin to a point can
> be represented as a pair consisting of an \\(x\\)-coordinate and a
> \\(y\\)-coordinate. Implement a data abstraction for vectors by giving a
> constructor <span class="inline-src language-scheme" data-lang="scheme">`make-vect`</span> and corresponding selectors
> <span class="inline-src language-scheme" data-lang="scheme">`xcor-vect`</span> and <span class="inline-src language-scheme" data-lang="scheme">`ycor-vect`</span>. In terms of your selectors and
> constructor, implement procedures <span class="inline-src language-scheme" data-lang="scheme">`add-vect`</span>, <span class="inline-src language-scheme" data-lang="scheme">`sub-vect`</span>,
> and <span class="inline-src language-scheme" data-lang="scheme">`scale-vect`</span> that perform the operations vector addition, vector
> subtraction, and multiplying a vector by a scalar:
>
> $$
>
> \begin{array}{r@{{}={}}l}
> 	(x\_1, y\_1) + (x\_2, y\_2) 	& (x\_1 + x\_2, y\_1 + y\_2), \\\\
> 	(x\_1, y\_1) - (x\_2, y\_2) 	& (x\_1 - x\_2, y\_1 - y\_2), \\\\
> 	s \cdot (x, y) 			& (sx, sy).
> \end{array}
>
> $$


#### <span class="section-num">3.52.2</span> Answer {#answer}

This is pretty close to the <span class="inline-src language-scheme" data-lang="scheme">`make-point`</span> work done in Exercise 2.2, as well as my 2nd implementation of a rectangle in Exercise 2.3. Let's start there. Also, _aren't these points and not vectors since they don't have direction??_

<a id="code-snippet--force-float"></a>
```scheme { linenos=true, linenostart=1 }
;; Guarentee x is a float
(define (float x)
  (if (inexact? x)
      x
      (exact->inexact x)))
```

<a id="code-snippet--make-vect"></a>
```scheme { linenos=true, linenostart=1 }
<<force-float>>
(define (make-vect x y)
  (cons (float x)
        (float y))) ;; make-point
(define (xcor-vect v)
  (car v)) ;; x-point
(define (ycor-vect v)
  (cdr v)) ;; y-point
(define (add-vect v w)
  (make-vect (+ (xcor-vect v)
                (xcor-vect w))
             (+ (ycor-vect v)
                (ycor-vect w))))
(define (sub-vect v w)
  (make-vect (- (xcor-vect v)
                (xcor-vect w))
             (- (ycor-vect v)
                (ycor-vect w))))
(define (scale-vect s v)
  (make-vect (* s (xcor-vect v))
             (* s (ycor-vect v))))
```

I originally got the definition for <span class="inline-src language-scheme" data-lang="scheme">`scale-vect`</span> wrong by making it
<span class="inline-src language-scheme" data-lang="scheme">`(scale v s)`</span>, then modified <span class="inline-src language-scheme" data-lang="scheme">`frame-coord-map`</span> when that
broke. I realized my mistake once I went to write <span class="inline-src language-scheme" data-lang="scheme">`beside`</span>.


### <span class="section-num">3.53</span> Exercise 2.47: Defining frames {#exercise-2-dot-47-defining-frames}


#### <span class="section-num">3.53.1</span> Question {#question}

> Here are two possible
> constructors for frames:

```scheme { linenos=true, linenostart=1 }
(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))
(define (make-frame origin edge1 edge2)
  (cons origin (cons edge1 edge2)))
```

> For each constructor supply the appropriate selectors to produce an
> implementation for frames.


#### <span class="section-num">3.53.2</span> Answer {#answer}

```scheme { linenos=true, linenostart=1 }
(define (make-frame origin edge1 edge2)
  (list origin edge1 edge2))
(define (origin-frame F)
  (car F))
(define (edge1-frame F)
  (cadr F))
(define (edge2-frame F)
  (caddr F))
```

<a id="code-snippet--make-frame"></a>
```scheme { linenos=true, linenostart=1 }
(define (make-frame origin edge1 edge2)
  (cons origin (cons edge1 edge2)))
(define (origin-frame F)
  (car F))
(define (edge1-frame F)
  (cadr F))
(define (edge2-frame F)
  (cddr F))
```


### <span class="section-num">3.54</span> Exercise 2.48: Line segments {#exercise-2-dot-48-line-segments}


#### <span class="section-num">3.54.1</span> Question {#question}

> A directed line segment in the plane can be represented as a pair of
> vectors---the vector running from the origin to the start-point of the segment,
> and the vector running from the origin to the end-point of the segment. Use your
> vector representation from Exercise 2.46 to define a
> representation for segments with a constructor <span class="inline-src language-scheme" data-lang="scheme">`make-segment`</span> and
> selectors <span class="inline-src language-scheme" data-lang="scheme">`start-segment`</span> and <span class="inline-src language-scheme" data-lang="scheme">`end-segment`</span>.


#### <span class="section-num">3.54.2</span> Answer {#answer}

Again reminding me of Exercise 2.2.

<a id="code-snippet--make-segment"></a>
```scheme { linenos=true, linenostart=1 }
(define (make-segment start end)
  (cons start end))
(define (start-segment seg)
  (car seg))
(define (end-segment seg)
  (cdr seg))
```


### <span class="section-num">3.55</span> Exercise 2.49: Primitive painters {#exercise-2-dot-49-primitive-painters}


#### <span class="section-num">3.55.1</span> Text Definitions {#text-definitions}

<a id="code-snippet--segments-painter"></a>
```scheme { linenos=true, linenostart=1 }
(define (frame-coord-map frame)
  (lambda (v)
    (add-vect
     (origin-frame frame)
     (add-vect
      (scale-vect (xcor-vect v)
                  (edge1-frame frame))
      (scale-vect (ycor-vect v)
                  (edge2-frame frame))))))
(define (segments->painter segment-list)
  (lambda (frame)
    (for-each
     (lambda (segment)
       (draw-line
        ((frame-coord-map frame)
         (start-segment segment))
        ((frame-coord-map frame)
         (end-segment segment))))
     segment-list)))
```


#### <span class="section-num">3.55.2</span> Question {#question}

> Use <span class="inline-src language-scheme" data-lang="scheme">`segments->painter`</span>
> to define the following primitive painters:
>
> 1.  The painter that draws the outline of the designated frame.
> 2.  The painter that draws an `X` by connecting opposite corners of the frame.
> 3.  The painter that draws a diamond shape by connecting the midpoints of the
>     sides of the frame.
> 4.  The <span class="inline-src language-scheme" data-lang="scheme">`wave`</span> painter.


#### <span class="section-num">3.55.3</span> Answer {#answer}

In the past I would need to constantly execute my code to "see" what I'm doing.
But I'm starting to think in larger chunks and need the feedback less.

<a id="code-snippet--painters"></a>
```scheme { linenos=true, linenostart=1 }
<<continuous-lines>>
(define outline
  (segments->painter (list
   (make-segment (make-vect 0 0)
                 (make-vect 0 1))
   (make-segment (make-vect 0 1)
                 (make-vect 1 1))
   (make-segment (make-vect 1 1)
                 (make-vect 1 0))
   (make-segment (make-vect 1 0)
                 (make-vect 0 0)))))
(define frame-X
  (segments->painter (list
   (make-segment (make-vect 0 0)
                 (make-vect 1 1))
   (make-segment (make-vect 0 1)
                 (make-vect 1 0)))))
(define diamond
  (segments->painter (list
   (make-segment (make-vect 0.5 0)
                 (make-vect 1 0.5))
   (make-segment (make-vect 1 0.5)
                 (make-vect 0.5 1))
   (make-segment (make-vect 0.5 1)
                 (make-vect 0 0.5))
   (make-segment (make-vect 0 0.5)
                 (make-vect 0.5 0)))))
```

I'll make the wave painter once I have some graph paper in front of me.

Ok, how can I verify this? I guess I could rewrite <span class="inline-src language-scheme" data-lang="scheme">`segments->painter`</span>
for <span class="inline-src language-scheme" data-lang="scheme">`pict`</span>. Since this isn't a drawing system with imperative
procedures, I should make it return a list of lines to be superimposed.

<a id="code-snippet--linepainter-pict"></a>
```scheme { linenos=true, linenostart=1 }
(use-modules (pict))
<<make-frame>>
<<make-vect>>
<<make-segment>>
(define (frame-coord-map frame)
  ;; Returns a function for adjusting a frame by a vector
  (lambda (v)
    (add-vect
     (origin-frame frame)
     (add-vect
      (scale-vect (xcor-vect v)
                  (edge1-frame frame))
      (scale-vect (ycor-vect v)
                  (edge2-frame frame))))))
(define (draw-line start end)
  ;; take two vectors, returns a line SVG object for pict
  (line (xcor-vect start)
        (ycor-vect start)
        (xcor-vect end)
        (ycor-vect end)))
(define (segments->painter segment-list)
  ;; takes a list of segments, returns a "painter" lambda, which applies a frame
  ;; to those segments and then maps over the result with draw-line to make a
  ;; list of SVG line objects which pict can combine.
  (lambda (frame)
    (map
     (lambda (segment)
       (draw-line
        ((frame-coord-map frame)
         (start-segment segment))
        ((frame-coord-map frame)
         (end-segment segment))))
     segment-list)))
;; NOTE: in the text, draw-line is a function which triggers an action in
;; some graphics driver, and returns nothing. Because of this, (map) was
;; originally (for-each). Thus the final result would have been thrown away.

<<painters>>

(define (paint-lines painter)
  ;; use pict to compile an SVG with the elements described by painter
  (let ((Frame (make-frame (make-vect 0 0)
                           (make-vect 500 0)
                           (make-vect 0 500))))
    (apply lt-superimpose
           (painter Frame))))
```

```scheme { linenos=true, linenostart=1 }
<<linepainter-pict>>
(pict->file (paint-lines diamond)
            "2/pict/testline.svg")
; #:maxw 100 #:maxh 100) <- FIXME: This procedure should take these arguments
; but I can't get it to work.
```

{{< figure src="/ox-hugo/testline.png" >}}

Holy moly it actually works.


### <span class="section-num">3.56</span> Exercise 2.50: Transforming painters {#exercise-2-dot-50-transforming-painters}


#### <span class="section-num">3.56.1</span> Text Definitions {#text-definitions}

<a id="code-snippet--frame-transforms-txt"></a>
```scheme { linenos=true, linenostart=1 }
(define (transform-painter
         painter origin corner1 corner2)
  (lambda (frame)
    (let ((m (frame-coord-map frame)))
      (let ((new-origin (m origin)))
        (painter (make-frame new-origin
                             (sub-vect (m corner1)
                                       new-origin)
                             (sub-vect (m corner2)
                                       new-origin)))))))

(define (flip-vert painter)
  (transform-painter
   painter
   (make-vect 0.0 1.0)   ; new origin
   (make-vect 1.0 1.0)   ; new end of edge1
   (make-vect 0.0 0.0))) ; new end of edge2

(define (rotate90 painter)
  (transform-painter painter
                     (make-vect 1.0 0.0)
                     (make-vect 1.0 1.0)
                     (make-vect 0.0 0.0)))

(define (squash-inwards painter)
  (transform-painter painter
                     (make-vect 0.0 0.0)
                     (make-vect 0.65 0.35)
                     (make-vect 0.35 0.65)))
(define (beside painter1 painter2)
  (let ((split-point (make-vect 0.5 0.0)))
    (let ((paint-left  (transform-painter
                        painter1
                        (make-vect 0.0 0.0)
                        split-point
                        (make-vect 0.0 1.0)))
          (paint-right (transform-painter
                        painter2
                        split-point
                        (make-vect 1.0 0.0)
                        (make-vect 0.5 1.0))))
      (lambda (frame)
        (append
         (paint-left frame)
         (paint-right frame))))))
```

```scheme { linenos=true, linenostart=1 }
<<linepainter-pict>>
<<frame-transforms-txt>>
(define topleft-tri
  (segments->painter (list
                      (make-segment (make-vect 0 0)
                                    (make-vect 0 0.4))
                      (make-segment (make-vect 0 0.4)
                                    (make-vect 0.4 0))
                      (make-segment (make-vect 0.4 0)
                                    (make-vect 0 0)))))
(let ((picture (beside (beside topleft-tri
                               topleft-tri)
                       (rotate90 topleft-tri))))
(pict->file (paint-lines picture)
            "2/pict/rotatetest.svg"))
```

{{< figure src="/ox-hugo/rotatetest.png" >}}


#### <span class="section-num">3.56.2</span> Question {#question}

> Define the transformation <span class="inline-src language-scheme" data-lang="scheme">`flip-horiz`</span>, which flips painters
> horizontally, and transformations that rotate painters counterclockwise by 180
> degrees and 270 degrees.


#### <span class="section-num">3.56.3</span> Answer {#answer}

<a id="code-snippet--flip-rotate2"></a>
```scheme { linenos=true, linenostart=1 }
(define (flip-horiz painter)
  (transform-painter
   painter
   (make-vect 1.0 0.0)   ; new origin
   (make-vect 0.0 0.0)   ; new end of edge1
   (make-vect 1.0 1.0))) ; new end of edge2

(define (rotate180 painter)
  (transform-painter painter
                     (make-vect 1.0 1.0)
                     (make-vect 0.0 1.0)
                     (make-vect 1.0 0.0)))
(define (rotate270 painter)
  (transform-painter painter
                     (make-vect 0.0 1.0)
                     (make-vect 0.0 0.0)
                     (make-vect 1.0 1.0)))
```

```scheme { linenos=true, linenostart=1 }
<<linepainter-pict>>
<<frame-transforms-txt>>
<<flip-rotate2>>
(define topleft-tri
  (segments->painter (list
                      (make-segment (make-vect 0 0)
                                    (make-vect 0 0.4))
                      (make-segment (make-vect 0 0.4)
                                    (make-vect 0.8 0))
                      (make-segment (make-vect 0.8 0)
                                    (make-vect 0 0)))))
(let ((picture (beside (beside
                        (flip-vert topleft-tri)
                        (rotate90 topleft-tri))
                       (beside
                        (rotate180 topleft-tri)
                        (rotate270 topleft-tri)))))
  (pict->file (paint-lines picture)
              "2/pict/rotate2.svg"))
```

{{< figure src="/ox-hugo/rotate2.png" >}}


### <span class="section-num">3.57</span> Exercise 2.51 {#exercise-2-dot-51}


#### <span class="section-num">3.57.1</span> Question {#question}

> Define the <span class="inline-src language-scheme" data-lang="scheme">`below`</span> operation
> for painters.  <span class="inline-src language-scheme" data-lang="scheme">`below`</span> takes two painters as arguments.  The resulting
> painter, given a frame, draws with the first painter in the bottom of the frame
> and with the second painter in the top.  Define <span class="inline-src language-scheme" data-lang="scheme">`below`</span> in two different
> ways---first by writing a procedure that is analogous to the <span class="inline-src language-scheme" data-lang="scheme">`beside`</span>
> procedure given above, and again in terms of <span class="inline-src language-scheme" data-lang="scheme">`beside`</span> and suitable
> rotation operations (from @ref{Exercise 2.50}).


#### <span class="section-num">3.57.2</span> Answer {#answer}

<a id="code-snippet--below"></a>
```scheme { linenos=true, linenostart=1 }
(define (below painter1 painter2)
  (let ((split-point (make-vect 0.0 0.5)))
    (let ((paint-left  (transform-painter
                        painter1
                        (make-vect 0.0 0.0)
                        (make-vect 1.0 0.0)
                        split-point))
          (paint-right (transform-painter
                        painter2
                        split-point
                        (make-vect 1.0 0.5)
                        (make-vect 0.0 1.0))))
      (lambda (frame)
        (append
         (paint-left frame)
         (paint-right frame))))))
(define (below-rotate painter1 painter2)
  (rotate270 (beside
              (rotate90 painter2)
              (rotate90 painter1))))
```

```scheme { linenos=true, linenostart=1 }
<<linepainter-pict>>
<<frame-transforms-txt>>
<<flip-rotate2>>
<<below>>
(define topleft-tri
  (segments->painter (list
                      (make-segment (make-vect 0 0)
                                    (make-vect 0 0.4))
                      (make-segment (make-vect 0 0.4)
                                    (make-vect 0.8 0))
                      (make-segment (make-vect 0.8 0)
                                    (make-vect 0 0)))))
(let ((p1 (below (beside
                        topleft-tri
                        (rotate90 topleft-tri))
                       (beside
                        (rotate180 topleft-tri)
                        (rotate270 topleft-tri))))
      (p2 (below-rotate (beside
                        topleft-tri
                        (rotate90 topleft-tri))
                       (beside
                        (rotate180 topleft-tri)
                        (rotate270 topleft-tri)))))
  (pict->file (paint-lines (beside p1 p2))
              "2/pict/rotate3.svg"))
```

{{< figure src="/ox-hugo/rotate3.png" >}}

An aside: I'm beginning to see what makes Lisp-style programming different from
C style. In C, the pictures would be described with separate data structures
specified up front, but in Lisp you can use the code to create the data
structure. Off the top of my head, the biggest players here would be first-level
functions, and how statements evaluate to specific values rather than being
imperative commands that cause something to happen elsewhere.


### <span class="section-num">3.58</span> 2.2.4 continued {#2-dot-2-dot-4-continued}

stratified design
: is the notion that complex systems should be structured
    as a sequence of levels with a sequence of languages. See how electronic
    components are described in EE terms, the binary gates they form are described
    in digital logic terms, the programs they run described in programming
    language terms, the networks of programs described in network architecture
    terms, etc.

This stratified design can be seen in our picture language. We use lines and
points to specify painters, use painters to make arrangements with beside/below,
arrange these arrangements into higher-level arrangements like
<span class="inline-src language-scheme" data-lang="scheme">`up-split`</span>.


### <span class="section-num">3.59</span> Exercise 2.52 {#exercise-2-dot-52}


#### <span class="section-num">3.59.1</span> Question A {#question-a}

Make changes to the square limit of <span class="inline-src language-scheme" data-lang="scheme">`wave`</span> shown in Figure 2.9 by
working at each of the levels described above. In particular:

-   Add some segments to the primitive <span class="inline-src language-scheme" data-lang="scheme">`wave`</span> painter of Exercise 2.49 (to add a smile, for example).


#### <span class="section-num">3.59.2</span> Answer A {#answer-a}

I need to do what I've been slacking off on: actually making the <span class="inline-src language-scheme" data-lang="scheme">`wave`</span> painter.
First, I want a helper function to make inputting shapes easier.

<a id="code-snippet--unwrap-if-needed"></a>
```scheme { linenos=true, linenostart=1 }
(define (unwrap-if-needed args)
  ;; commonly needed in vararg functions
  (if (and (= 1 (length args))
           (list? (car args)))
      (car args) ; assume we were passed a list, unwrap it
      args))
```

<a id="code-snippet--continuous-lines"></a>
```scheme { linenos=true, linenostart=1 }
<<unwrap-if-needed>>
(define (continuous-lines . vectors)
  ;; Given a list of vectors, return a series of line segments
  ;; that continuously follow the vectors until there are no more,
  ;; at which point connect the last vector to the first.
  (define (iter vecs lines)
    (if (> 2 (length vecs))
        lines
        (let* ((first (car vecs))
               (rest (cdr vecs))
               (second (car rest))
               (new-line (make-segment first second)))
          (iter rest (cons new-line lines)))))
  (let ((input (unwrap-if-needed vectors)))
    (iter (append input (list (car input))) ;; Connect to start
          '())))
(define (numbers-to-vectors . numbers)
  (define (iter input output)
    (if (> 2 (length input))
        output
        (let* ((first (car input))
              (d (cdr input))
              (second (car d))
              (dd (cdr d)))
          (iter dd
                (cons (make-vect first second)
                      output)))))
  (reverse (iter numbers '())))
```

```scheme { linenos=true, linenostart=1 }
<<linepainter-pict>>
<<frame-transforms-txt>>
<<flip-rotate2>>
<<below>>
<<continuous-lines>>
(define topleft-tri
  (segments->painter (list
                      (make-segment (make-vect 0 0)
                                    (make-vect 0 0.4))
                      (make-segment (make-vect 0 0.4)
                                    (make-vect 0.8 0))
                      (make-segment (make-vect 0.8 0)
                                    (make-vect 0 0)))))
(define topleft-tri2
  (segments->painter (continuous-lines
                      (make-vect 0 0)
                      (make-vect 0 0.4)
                      (make-vect 0.8 0))))
(define topleft-tri3
  (segments->painter (continuous-lines
                      (numbers-to-vectors
                       0 0
                       0 0.4
                       0.8 0))))
(let ((p1 (below (beside topleft-tri topleft-tri2)
                 (beside topleft-tri topleft-tri3))))
  (pict->file (paint-lines p1)
              "2/pict/cl-test.svg"))
```

{{< figure src="/ox-hugo/cl-test.png" >}}

Now, let's write the wave painter.

<a id="code-snippet--wave-painter"></a>
```scheme { linenos=true, linenostart=1 }
<<continuous-lines>>
;; Should be raising their left hand and
;; lowering their right. (I screwed up the axes)
(define wave
  (segments->painter
   (continuous-lines
    (numbers-to-vectors
    0.55 0
    0.5 0.15 ;; center-left side of head
    0.55 0.3
    0.45 0.275
    0.25 0.35
    0 0.25
    0 0.3
    0.25 0.45
    0.45 0.35
    0.5 0.65
    0.4 1
    0.45 1
    0.6 0.7
    0.75 1
    0.8 1
    0.7 0.65
    0.75 0.35
    1 0.675
    1 0.6
    0.75 0.275
    0.65 0.3
    0.7 0.15 ;; center-right side of head
    0.65 0))))
```

```scheme { linenos=true, linenostart=1 }
<<linepainter-pict>>
<<frame-transforms-txt>>
<<flip-rotate2>>
<<below>>
<<continuous-lines>>
<<wave-painter>>
(let ((p1 (beside wave (flip-vert wave))))
  (pict->file (paint-lines p1)
              "2/pict/wave-test.svg"))
```

The question needs me to overlay something new. So I need some way to add more
segments to a painter after it's already been written.

{{< figure src="/ox-hugo/wave-test.png" >}}

<a id="code-snippet--append-painters"></a>
```scheme { linenos=true, linenostart=1 }
<<unwrap-if-needed>>
(define (append-painters-rec . args)
  (lambda (frame)
    (define (rec painters)
      (if (null? painters)
          '()
          (append ((car painters) frame)
                  (rec (cdr painters)))))
    (rec (unwrap-if-needed args))))
(define (append-painters . args)
  (lambda (frame)
    (define (iter segments to-paint)
      (if (null? to-paint)
          segments
          (iter (append ((car to-paint) frame)
                      segments)
                      (cdr to-paint))))
    (iter '()
          (unwrap-if-needed args))))
```

```scheme { linenos=true, linenostart=1 }
<<linepainter-pict>>
<<frame-transforms-txt>>
<<flip-rotate2>>
<<below>>
<<continuous-lines>>
<<painters>>
<<wave-painter>>
<<append-painters>>
(let ((p1 (append-painters
           (beside wave (flip-vert wave))
           frame-X
           outline)))
  (pict->file (paint-lines p1)
              "2/pict/append-test.svg"))
```

{{< figure src="/ox-hugo/append-test.png" >}}

Now let's (try to) add a smile.

<a id="code-snippet--wave-smile"></a>
```scheme { linenos=true, linenostart=1 }
<<wave-painter>>
<<append-painters>>
(define wave-smile
  (append-painters
   wave
   (segments->painter
    (continuous-lines
     (numbers-to-vectors
      0.55 0.2
      0.6 0.225
      0.65 0.2)))))
```

```scheme { linenos=true, linenostart=1 }
<<linepainter-pict>>
<<frame-transforms-txt>>
<<flip-rotate2>>
<<below>>
<<continuous-lines>>
<<wave-smile>>
(pict->file (paint-lines wave-smile)
            "2/pict/wave-smile-test.svg")
```

{{< figure src="/ox-hugo/wave-smile-test.png" >}}


#### <span class="section-num">3.59.3</span> Question B {#question-b}

Change the pattern constructed by <span class="inline-src language-scheme" data-lang="scheme">`corner-split`</span> (for example, by
using only one copy of the <span class="inline-src language-scheme" data-lang="scheme">`up-split`</span> and <span class="inline-src language-scheme" data-lang="scheme">`right-split`</span>
images instead of two).

<a id="code-snippet--corner-split"></a>
```scheme { linenos=true, linenostart=1 }
(define (corner-split painter n)
  (if (= n 0)
      painter
      (let ((up (up-split painter (- n 1)))
            (right (right-split painter
                                (- n 1))))
        (let ((top-left (beside up up))
              (bottom-right (below right
                                   right))
              (corner (corner-split painter
                                    (- n 1))))
          (beside (below painter top-left)
                  (below bottom-right
                         corner))))))

(define (corner-split-mine painter n)
  (if (= n 0)
      painter
      (let ((up (up-split painter (- n 1)))
            (right (right-split painter
                                (- n 1))))
        (let ((top-left up)
              (bottom-right right)
              (corner (corner-split-mine painter
                                    (- n 1))))
          (beside (below painter top-left)
                  (below bottom-right
                         corner))))))
```

```scheme { linenos=true, linenostart=1 }
<<linepainter-pict>>
<<frame-transforms-txt>>
<<flip-rotate2>>
<<below>>
<<continuous-lines>>
<<painters>>
<<wave-smile>>
<<append-painters>>
<<splits-generalized>>
<<corner-split>>
(let ((p1 (beside (flip-horiz (corner-split wave-smile 5))
                  (corner-split-mine wave-smile 5))))
;(let ((p1 (up-split frame-X 5)))
  (pict->file (paint-lines p1)
              "2/pict/corner-splits.svg"))
```

{{< figure src="/ox-hugo/corner-splits.png" >}}

So my modified version doesn't split at the <span class="inline-src language-scheme" data-lang="scheme">`corner-split`</span> level, as
predicted. However <span class="inline-src language-scheme" data-lang="scheme">`up-split`</span> and <span class="inline-src language-scheme" data-lang="scheme">`right-split`</span> do, so the
effect is only delayed by one level. But more importantly:

_Why does it go down instead of up? I don't get it._

<span class="inline-src language-scheme" data-lang="scheme">`corner-split`</span> and <span class="inline-src language-scheme" data-lang="scheme">`up-split`</span> are even the same code as
every answer online. Could my <span class="inline-src language-scheme" data-lang="scheme">`paint-lines`</span> procedure be what's
causing issues?


#### <span class="section-num">3.59.4</span> Question C {#question-c}

> Modify the version of <span class="inline-src language-scheme" data-lang="scheme">`square-limit`</span> that uses <span class="inline-src language-scheme" data-lang="scheme">`square-of-four`</span> so as
> to assemble the corners in a different pattern.  (For example, you might make
> the big Mr. Rogers look outward from each corner of the square.)


#### <span class="section-num">3.59.5</span> Textbook Definitions {#textbook-definitions}

<a id="code-snippet--square-of-four-txt"></a>
```scheme { linenos=true, linenostart=1 }
(define (square-of-four tl tr bl br)
  (lambda (painter)
    (let ((top (beside (tl painter)
                       (tr painter)))
          (bottom (beside (bl painter)
                          (br painter))))
      (below bottom top))))
(define (square-limit painter n)
  (let ((combine4
         (square-of-four flip-horiz
                         identity
                         rotate180
                         flip-vert)))
    (combine4 (corner-split painter n))))
```


#### <span class="section-num">3.59.6</span> Answer C {#answer-c}

<a id="code-snippet--square-limit-mine"></a>
```scheme { linenos=true, linenostart=1 }
(define (square-limit-mine painter n)
  (let ((combine4
         (square-of-four identity
                         flip-horiz
                         flip-vert
                         rotate180)))
    (combine4 (corner-split painter n))))
```

```scheme { linenos=true, linenostart=1 }
<<linepainter-pict>>
<<frame-transforms-txt>>
<<flip-rotate2>>
<<below>>
<<continuous-lines>>
<<wave-smile>>
<<splits-generalized>>
<<corner-split>>
<<square-of-four-txt>>
<<square-limit-mine>>
(pict->file (paint-lines (beside (square-limit wave-smile 5)
                                 (square-limit-mine wave-smile 5)))
            "2/pict/square-limits.svg")
```

{{< figure src="/ox-hugo/square-limits.png" >}}

Ok, I'm confused. Shouldn't the shape of <span class="inline-src language-scheme" data-lang="scheme">`square-limit`</span> be the same
regardless of the operators passed to it? It looks like the operators effect
each chunk separately.

```scheme { linenos=true, linenostart=1 }
<<linepainter-pict>>
<<frame-transforms-txt>>
<<flip-rotate2>>
<<below>>
<<continuous-lines>>
<<wave-smile>>
<<splits-generalized>>
<<corner-split>>
<<square-of-four-txt>>
(define (square-limit-mine painter n)
  (let ((combine4
         (square-of-four identity
                         identity
                         identity
                         identity)))
    (combine4 (corner-split painter n))))
(pict->file (paint-lines (square-limit-mine wave-smile 5))
            "2/pict/square-limit-identity.svg")
```

{{< figure src="/ox-hugo/square-limit-identity.png" >}}

I expected the operators would change the _image orientation_, not the
_structure_. Maybe this is because my <span class="inline-src language-scheme" data-lang="scheme">`draw-lines`</span> makes recursively
nested stacks of painter objects, rather than imperative calls to drawing
procedures? Looking on the internet I see [someone else having the same
results.](http://pipecode.blogspot.com/2013/04/sicp-exercise-252.html)[^fn:5]


### <span class="section-num">3.60</span> 2.3.1: Quotation {#2-dot-3-dot-1-quotation}

Syntactic vs semantic use in Lisp:

```scheme
(define dog 123)
(+ dog dog) ;; semantic usage
(quote dog) ;; syntactic usage
```

This was introduced by famous LISP scientists, Abbott and Costello.


### <span class="section-num">3.61</span> Exercise 2.53 {#exercise-2-dot-53}


#### <span class="section-num">3.61.1</span> Question {#question}

> What would the interpreter print
> in response to evaluating each of the following expressions?

```scheme { linenos=true, linenostart=1 }
(list 'a 'b 'c)
(list (list 'george))
(cdr '((x1 x2) (y1 y2)))
(cadr '((x1 x2) (y1 y2)))
(pair? (car '(a short list)))
(memq 'red '((red shoes) (blue socks)))
(memq 'red '(red shoes blue socks))
```


#### <span class="section-num">3.61.2</span> Answer {#answer}

```scheme { linenos=true, linenostart=1 }
(list 'a 'b 'c) ;; (a b c)
(list (list 'george)) ;; ((george))
(cdr '((x1 x2) (y1 y2))) ;; ((y1 y2))
(cadr '((x1 x2) (y1 y2))) ;; (y1 y2)
(pair? (car '(a short list))) ;; false
(memq 'red '((red shoes) (blue socks))) ;; false
(memq 'red '(red shoes blue socks)) ;; (red shoes blue socks)
```


### <span class="section-num">3.62</span> Exercise 2.54 {#exercise-2-dot-54}

> Two lists are said to be <span class="inline-src language-scheme" data-lang="scheme">`equal?`</span> if they contain equal elements
> arranged in the same order. For example,

```scheme
(equal? '(this is a list) '(this is a list))
```

> is true, but

```scheme
(equal? '(this is a list) '(this (is a) list))
```

> is false. To be more precise, we can define <span class="inline-src language-scheme" data-lang="scheme">`equal?`</span> recursively in
> terms of the basic <span class="inline-src language-scheme" data-lang="scheme">`eq?`</span> equality of symbols by saying that
> <span class="inline-src language-scheme" data-lang="scheme">`a`</span> and <span class="inline-src language-scheme" data-lang="scheme">`b`</span> are <span class="inline-src language-scheme" data-lang="scheme">`equal?`</span> if they are both symbols
> and the symbols are <span class="inline-src language-scheme" data-lang="scheme">`eq?`</span>, or if they are both lists such that
> <span class="inline-src language-scheme" data-lang="scheme">`(car a)`</span> is <span class="inline-src language-scheme" data-lang="scheme">`equal?`</span> to <span class="inline-src language-scheme" data-lang="scheme">`(car b)`</span> and
> <span class="inline-src language-scheme" data-lang="scheme">`(cdr a)`</span> is <span class="inline-src language-scheme" data-lang="scheme">`equal?`</span> to <span class="inline-src language-scheme" data-lang="scheme">`(cdr b)`</span>. Using this
> idea, implement <span class="inline-src language-scheme" data-lang="scheme">`equal?`</span> as a procedure.


#### <span class="section-num">3.62.1</span> Answer {#answer}

<a id="code-snippet--my-equal?"></a>
```scheme { linenos=true, linenostart=1 }
(define (equal? a b)
  (cond ((and (symbol? a)
              (symbol? b))
         (eq? a b))
        ((and (list? a)
              (list? b))
         (and (equal? (car a) (car b))
              (equal? (cdr a) (cdr b))))
        (else #f)))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
(let ((a '(this is a list))
      (aa '(this is a list))
      (b '(this (quote is a) list)))
  (mattcheck "equal? true"
             (equal? a a))
  (mattcheck "equal? trick question"
             (equal? a a))
  (mattcheck "equal? false"
             (equal? a b)
             #f))
```

```text
SUCCEED at equal? true
SUCCEED at equal? trick question
SUCCEED at equal? false
```


### <span class="section-num">3.63</span> Exercise 2.55 {#exercise-2-dot-55}


#### <span class="section-num">3.63.1</span> Question {#question}

Eva Lu Ator types to the interpreter the expression

```scheme
(car ''abracadabra)
```

To her surprise, the interpreter prints back <span class="inline-src language-scheme" data-lang="scheme">`quote`</span>. Explain.


#### <span class="section-num">3.63.2</span> Answer {#answer}

You're quoting quote, silly! Who's on first?


### <span class="section-num">3.64</span> 2.3.2: Example: Symbolic differentiator {#2-dot-3-dot-2-example-symbolic-differentiator}

I needed to get some help, but I think I have some understanding now.

The **derivative** of an expression \\(E\\), relative to the variable \\(x\\),
describes the rate of change (or \\(\delta\\) **delta**) of that expression with
relation to \\(x\\). Mathematicians symbolize it like this:

$$\frac{dE}{dx}$$

Two stumbling blocks about this notation:

1.  This is not division. I understand why this notation would make sense to an
    experienced mathematician, since you factor out things by dividing an
    expression. For example:
    $$\frac{3x}{x} = 3$$
    $$\frac{3x}{3} = x$$
    But it's still confusing.
2.  \\(dx\\) is not some variable \\(d\\) times some variable \\(x\\).
    \\(\frac{d(x+3)}{dx}\\) means "the derivative of \\(x+3\\) with respect to
    \\(x\\)."

The process of finding the derivative is called **differentiation**.

The rules the book puts forward, rephrased in plain English, are these:

-   If the expression is a constant, the derivative must be 0.
-   If the expression is \\(x\\), the derivative must be 1.
-   If the expression is \\(u + v\\), the derivative is the sum of two
    derivatives:
    1.  The derivative of \\(u\\) with respect to \\(x\\).
    2.  The derivative of \\(v\\) with respect to \\(x\\).
-   If the expression is \\(u \times v\\), the derivative is the sum of:
    1.  \\(u\\) times the derivative of \\(v\\) with respect to \\(x\\)
    2.  \\(v\\) times the derivative of \\(u\\) with respect to \\(x\\)

Later:

-   If the expression is \\(u^0\\), the result is 1, which is a constant, so the
    rate of change is 0.
-   If the expression is \\(u^1\\), the result is u, so the rate of change is 1.
-   Else, if the expression is \\(u^n\\), the derivative is the product of these:
    1.  \\(n\\)
    2.  \\(u\\) to the power of \\(n-1\\)
    3.  The derivative of \\(u\\) with respect to \\(x\\).


### <span class="section-num">3.65</span> Exercise 2.56: Differentiating exponentiation {#exercise-2-dot-56-differentiating-exponentiation}


#### <span class="section-num">3.65.1</span> Text definitions {#text-definitions}

<a id="code-snippet--deriv-basic-txt"></a>
```scheme
(define (variable? x) (symbol? x))
(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))
(define (sum? x) (and (pair? x) (eq? (car x) '+)))
(define (addend s) (cadr s))
(define (augend s) (caddr s))
(define (product? x) (and (pair? x) (eq? (car x) '*)))
(define (multiplier p) (cadr p))
(define (multiplicand p) (caddr p))
(define (make-sum a1 a2)
  (cond ((=number? a1 0) a2)
        ((=number? a2 0) a1)
        ((and (number? a1) (number? a2))
         (+ a1 a2))
        (else (list '+ a1 a2))))
(define (=number? exp num)
  (and (number? exp) (= exp num)))
(define (make-product m1 m2)
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        ((and (number? m1) (number? m2)) (* m1 m2))
        (else (list '* m1 m2))))
(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        ((sum? exp) (make-sum (deriv (addend exp) var)
                              (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
           (make-product (multiplier exp)
                         (deriv (multiplicand exp) var))
           (make-product (deriv (multiplier exp) var)
                         (multiplicand exp))))
        (else
         (error "unknown expression type: DERIV" exp))))
```


#### <span class="section-num">3.65.2</span> Question {#question}

> Show how to extend the basic differentiator to handle more kinds of expressions.
> For instance, implement the differentiation rule
>
> $$ \frac{\it d\\,(u^n\\,)}{\it dx} = nu^{n-1} \frac{\it du}{\it dx} $$
>
> by adding a new clause to the <span class="inline-src language-scheme" data-lang="scheme">`deriv`</span> program and defining appropriate
> procedures <span class="inline-src language-scheme" data-lang="scheme">`exponentiation?`</span>, <span class="inline-src language-scheme" data-lang="scheme">`base`</span>, <span class="inline-src language-scheme" data-lang="scheme">`exponent`</span>,
> and <span class="inline-src language-scheme" data-lang="scheme">`make-exponentiation`</span>. (You may use the symbol <span class="inline-src language-scheme" data-lang="scheme">`**`</span> to
> denote exponentiation.) Build in the rules that anything raised to the power 0
> is 1 and anything raised to the power 1 is the thing itself.


#### <span class="section-num">3.65.3</span> Answer {#answer}

<a id="code-snippet--deriv-exp"></a>
```scheme
(define (exponentiation? x) (and (pair? x) (eq? (car x) '**)))
(define (base e) (cadr e))
(define (exponent e) (caddr e))
(define (make-exponentiation b e)
  (cond ((=number? b 1) 1)
        ((=number? e 0) 1)
        ((=number? e 1) b)
        ((and (number? b) (number? e)) (expt b e))
        (else (list '** b e))))
(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        ((sum? exp) (make-sum (deriv (addend exp) var)
                              (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
          (make-product (multiplier exp)
                        (deriv (multiplicand exp) var))
          (make-product (deriv (multiplier exp) var)
                        (multiplicand exp))))
        ((exponentiation? exp)
         (make-product
          (make-product
           (exponent exp)
           (make-exponentiation (base exp)
                                (make-sum (exponent exp) -1)))
          (deriv (base exp) var)))
        (else
         (error "unknown expression type: DERIV" exp))))
```

First I'll make sure the textbook examples work as expected.

```scheme
<<deriv-basic-txt>>
<<deriv-exp>>
(load "mattcheck2.scm")
(mattcheck "deriv: basic addition"
           (deriv '(+ x 3) 'x)
           1)
(mattcheck "deriv: basic multiplication"
           (deriv '(* x y) 'x)
           'y)
(mattcheck "deriv: bad simplification"
           (deriv '(* (* x y) (+ x 3)) 'x)
           '(+ (* x y) (* y (+ x 3))))
;; Now, did I do my job right?
;; Checking against this guy's results:
;;   http://jots-jottings.blogspot.com/2011/11/sicp-exercise-256-differentiating.html
(mattcheck "make-exponentiation 1"
           (make-exponentiation 1 12)
           1)
(mattcheck "make-exponentiation 2"
           (make-exponentiation 2 12)
           4096)
(mattcheck "make-exponentiation 3"
           (make-exponentiation 'x 12)
           '(** x 12))
(mattcheck "deriv: exponentiation 1"
           (deriv (make-exponentiation 'a 5) 'a)
           '(* 5 (** a 4)))
(mattcheck "deriv: exponentiation 2"
           (deriv (make-exponentiation 'a 'b) 'a)
           '(* b (** a (+ b -1))))
```

```text
SUCCEED at deriv: basic addition
SUCCEED at deriv: basic multiplication
SUCCEED at deriv: bad simplification
SUCCEED at make-exponentiation 1
SUCCEED at make-exponentiation 2
SUCCEED at make-exponentiation 3
SUCCEED at deriv: exponentiation 1
SUCCEED at deriv: exponentiation 2
```


### <span class="section-num">3.66</span> Exercise 2.57: Differentiating arbitrary-length expressions {#exercise-2-dot-57-differentiating-arbitrary-length-expressions}


#### <span class="section-num">3.66.1</span> Question {#question}

Extend the differentiation program to handle sums and products of arbitrary
numbers of (two or more) terms. Then the last example above could be expressed
as

```scheme
(deriv '(* x y (+ x 3)) 'x)
```

Try to do this by changing only the representation for sums and products,
without changing the <span class="inline-src language-scheme" data-lang="scheme">`deriv`</span> procedure at all. For example, the
<span class="inline-src language-scheme" data-lang="scheme">`addend`</span> of a sum would be the first term, and the <span class="inline-src language-scheme" data-lang="scheme">`augend`</span>
would be the sum of the rest of the terms.


#### <span class="section-num">3.66.2</span> Answer {#answer}

<a id="code-snippet--deriv-longer"></a>
```scheme
(define (sum? x) (and (pair? x) (eq? (car x) '+)))
(define (addend s) (cadr s))
(define (augend s)
  (let ((rest (cddr s)))
    (if (null? (cdr rest))
        (car rest)
;        (make-sum (addend rest)
;                  (augend (cons '+ rest))))))
        (cons '+ rest))))
(define (product? x) (and (pair? x) (eq? (car x) '*)))
(define (multiplier p) (cadr p))
(define (multiplicand p)
  (let ((rest (cddr p)))
    (if (null? (cdr rest))
        (car rest)
;        (make-product (multiplier rest)
;                      (multiplicand (cons '* rest))))))
        (cons '* rest))))
(define (make-sum a1 a2)
  (cond ((=number? a1 0) a2)
        ((=number? a2 0) a1)
        ((and (number? a1) (number? a2))
         (+ a1 a2))
        (else (list '+ a1 a2))))
(define (make-product m1 m2)
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        ((and (number? m1) (number? m2))
         (* m1 m2))
        (else (list '* m1 m2))))
```

```scheme
<<deriv-basic-txt>>
<<deriv-exp>>
<<deriv-longer>>
(load "mattcheck2.scm")
(mattcheck "deriv: longer addition"
           (deriv '(+ x 3 6 z) 'x)
           1)
(mattcheck "deriv: longer multiplication"
           (deriv '(* x y (+ x 3)) 'x)
           '(+ (* x y) (* y (+ x 3))))
```

```text
SUCCEED at deriv: longer addition
SUCCEED at deriv: longer multiplication
```

I had to look up the solution for this one. The commented sections in
<span class="inline-src language-scheme" data-lang="scheme">`augend`</span> and <span class="inline-src language-scheme" data-lang="scheme">`multiplicand`</span> were the answers I was trying to
make work:

```scheme
(define (augend s)
  (let ((rest (cddr s)))
    (if (null? (cdr rest))
        (car rest)
;        (make-sum (addend rest)
;                  (augend (cons '+ rest))))))
        (cons '+ rest))))
```

It's taking a bunch of steps that weren't ultimately helping, but it didn't
occur to me that the solution was to go simpler rather than more complicated.
I'll have to keep watch for problem-solving dead-ends like this.


### <span class="section-num">3.67</span> Exercise 2.58: Processing expressions with infix notation {#exercise-2-dot-58-processing-expressions-with-infix-notation}


#### <span class="section-num">3.67.1</span> Question {#question}

Suppose we want to modify the differentiation program so that it works with
ordinary mathematical notation, in which <span class="inline-src language-scheme" data-lang="scheme">`+`</span> and <span class="inline-src language-scheme" data-lang="scheme">`*`</span> are
infix rather than prefix operators. Since the differentiation program is defined
in terms of abstract data, we can modify it to work with different
representations of expressions solely by changing the predicates, selectors, and
constructors that define the representation of the algebraic expressions on
which the differentiator is to operate.


#### <span class="section-num">3.67.2</span> Part 1 {#part-1}

Show how to do this in order to differentiate algebraic expressions presented
in infix form, such as <span class="inline-src language-scheme" data-lang="scheme">`(x + (3 * (x + (y + 2))))`</span>.  To simplify the task,
assume that <span class="inline-src language-scheme" data-lang="scheme">`+`</span> and <span class="inline-src language-scheme" data-lang="scheme">`*`</span> always take two arguments and that
expressions are fully parenthesized.


#### <span class="section-num">3.67.3</span> Answer 1 {#answer-1}

<a id="code-snippet--deriv-infix"></a>
```scheme
(define (variable? x) (symbol? x))
(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))
(define (sum? x) (and (pair? x) (eq? (cadr x) '+)))
(define (addend s) (car s))
(define (augend s) (caddr s))
(define (product? x) (and (pair? x) (eq? (cadr x) '*)))
(define (multiplier p) (car p))
(define (multiplicand p) (caddr p))
(define (make-sum a1 a2)
  (cond ((=number? a1 0) a2)
        ((=number? a2 0) a1)
        ((and (number? a1) (number? a2))
         (+ a1 a2))
        (else (list a1 '+ a2))))
(define (=number? exp num)
  (and (number? exp) (= exp num)))
(define (make-product m1 m2)
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        ((and (number? m1) (number? m2)) (* m1 m2))
        (else (list m1 '* m2))))
(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        ((sum? exp) (make-sum (deriv (addend exp) var)
                              (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
           (make-product (multiplier exp)
                         (deriv (multiplicand exp) var))
           (make-product (deriv (multiplier exp) var)
                         (multiplicand exp))))
        (else
         (error "unknown expression type: DERIV" exp))))
```

```scheme
<<deriv-infix>>
(load "mattcheck2.scm")
(mattcheck "deriv: basic addition"
           (deriv '(x + 3) 'x)
           1)
(mattcheck "deriv: basic multiplication"
           (deriv '(x * y) 'x)
           'y)
(mattcheck "deriv: bad simplification"
           (deriv '((x * y) * (x + 3)) 'x)
           '((x * y) + (y * (x + 3))))
```

```text
SUCCEED at deriv: basic addition
SUCCEED at deriv: basic multiplication
SUCCEED at deriv: bad simplification
```


#### <span class="section-num">3.67.4</span> Part 2 {#part-2}

The problem becomes substantially harder if we allow standard algebraic
notation, such as <span class="inline-src language-scheme" data-lang="scheme">`(x + 3 * (x + y + 2))`</span>, which drops unnecessary
parentheses and assumes that multiplication is done before addition. Can you
design appropriate predicates, selectors, and constructors for this notation
such that our derivative program still works?


#### <span class="section-num">3.67.5</span> Answer 2 {#answer-2}

Ok, I think I can do the long-form list objective, since that would be a
combination of two earlier exercises. But as I write I feel clueless how to
make multiplication happen before addition -- my first impulse is that this
would mean I would need to either:

1.  Change how Lisp's evaluation works (obviously overkill)
2.  Make statements be evaluated twice, once for multiplication and then once for
    addition. And I think that would require modifications to <span class="inline-src language-scheme" data-lang="scheme">`deriv`</span>.

I'll just start working on the long-form feature and see if I can think of
anything.

<a id="code-snippet--deriv-algebraic"></a>
```scheme
(define (variable? x) (symbol? x))
(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))
(define (sum? x) (and (pair? x) (eq? (cadr x) '+)))
(define (addend s) (car s))
(define (augend s)
  (let ((rest (cddr s)))
    (if (null? (cdr rest))
        (car rest)
        rest)))
(define (product? x) (and (pair? x) (eq? (cadr x) '*)))
(define (multiplier p) (car p))
(define (multiplicand p)
  (let ((rest (cddr p)))
    (if (null? (cdr rest))
        (car rest)
        rest)))
(define (make-sum a1 a2)
  (cond ((=number? a1 0) a2)
        ((=number? a2 0) a1)
        ((and (number? a1) (number? a2))
         (+ a1 a2))
        ((product? a2)
         (list a1 '+ ;; cross your fingers!
               (make-product (multiplier a2)
                             (multiplicand a2))))
        (else (list a1 '+ a2))))
(define (=number? exp num)
  (and (number? exp) (= exp num)))
(define (make-product m1 m2)
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        ((and (number? m1) (number? m2)) (* m1 m2))
        (else (list m1 '* m2))))
(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        ((sum? exp) (make-sum (deriv (addend exp) var)
                              (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
          (make-product (multiplier exp)
                        (deriv (multiplicand exp) var))
          (make-product (deriv (multiplier exp) var)
                        (multiplicand exp))))
        (else
         (error "unknown expression type: DERIV" exp))))
```

```scheme
<<deriv-algebraic>>
(load "mattcheck2.scm")
(mattcheck "deriv: basic addition"
           (deriv '(x + 3) 'x)
           1)
(mattcheck "deriv: basic multiplication"
           (deriv '(x * y) 'x)
           'y)
(mattcheck "deriv: bad simplification"
           (deriv '((x * y) * (x + 3)) 'x)
           '((x * y) + (y * (x + 3))))
(mattcheck "deriv: longer addition"
           (deriv '(x + 3 + 6 + z) 'x)
           1)
(mattcheck "deriv: longer multiplication"
           (deriv '(x * y * (x + 3)) 'x)
           '((x * y) + (y * (x + 3))))

;; Test cases from:
;; http://community.schemewiki.org/?sicp-ex-2.58
(mattcheck "deriv: mult prioritization 1"
           (deriv '(x + 3 * (x + y + 2)) 'x)
           4)
(mattcheck "deriv: mult prioritization 2"
           (deriv '(x * (y * (x + 3))) 'x)
           '((x * y) + (y * (x + 3))))
(mattcheck "deriv: mult prioritization 3"
           (deriv '((x * y) * (x + 3)) 'x)
           '((x * y) + (y * (x + 3))))
;; Checks from "future Matt"
(mattcheck "deriv: mult prioritization 4a"
           (deriv '(x + 3 + x + y * 2) 'x)
           2)
(mattcheck "deriv: mult prioritization 4b"
           (deriv '(y * 2 + x + 3 + x) 'x)
           2)
```

```text
<unknown-location>: warning: possibly unbound variable `mattcheck'
SUCCEED at deriv: basic addition
SUCCEED at deriv: basic multiplication
SUCCEED at deriv: bad simplification
SUCCEED at deriv: longer addition
SUCCEED at deriv: longer multiplication
SUCCEED at deriv: mult prioritization 1
SUCCEED at deriv: mult prioritization 2
SUCCEED at deriv: mult prioritization 3
SUCCEED at deriv: mult prioritization 4a
FAIL at deriv: mult prioritization 4b
expected: 2
returned: (y * 2)
```

Above is my first solution. I modified <span class="inline-src language-scheme" data-lang="scheme">`make-sum`</span> to
check the operator after the current one, see if it was a multiplication, and
if so to evaluate it with <span class="inline-src language-scheme" data-lang="scheme">`make-product`</span> before doing the current
addition. The "immutable variable" ways of problem solving makes this pretty
easy:

```scheme { linenos=true, linenostart=1 }
;; I want to do f to the first item of x, unless some-condition? in the second
;; item, in which case do g to the 2nd item before x to the first
(define (foo x)
  (if (some-condition? (cdr x))
      (f (cons (car x)
               (g (cdr x))))
      (f x)))
```

If I were doing this with mutable variables, where I needed to perform these
modifications in-place in one data structure, I might not have the tools to
solve that problem.

However, I came back to this problem after continuing on ahead so far as [Exercise 2.91: division of polynomials](#1-dot-3-dot-4-procedures-as-returned-values), when someone on the
Discord asked for help. Upon re-examination I realized that this first solution
does _not_ solve the problem in an algebraically equivalent way, as you can see
by the last two tests I added above. I had assumed that because addition and
multiplication were commutative, that I only needed to account for immediately
adjacent operations. This was not the case. I must solve the higher-priority
operations in a list first before starting any of the lower ones.

TODO:

<a id="code-snippet--deriv-algebraic-fixed"></a>
```scheme
(define func-list '(product? sum?))
(define priority-list '(* +))
(define (solve-in-order exp func-list)
  (if (< (length exp) 3)
      '()
      (cons (list-index (lambda(i)(eqv? i (cadr exp)))
                        priority-list)
            (find-solution-order (cddr exp)))))
(define (variable? x) (symbol? x))
(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))
(define (sum? x) (and (pair? x) (eq? (cadr x) '+)))
(define (addend s) (car s))
(define (augend s)
  (let ((rest (cddr s)))
    (if (null? (cdr rest))
        (car rest)
        rest)))
(define (product? x) (and (pair? x) (eq? (cadr x) '*)))
(define (multiplier p) (car p))
(define (multiplicand p)
  (let ((rest (cddr p)))
    (if (null? (cdr rest))
        (car rest)
        rest)))
(define (make-sum a1 a2)
  (cond ((=number? a1 0) a2)
        ((=number? a2 0) a1)
        ((and (number? a1) (number? a2))
         (+ a1 a2))
        ((product? a2)
         (list a1 '+ ;; cross your fingers!
               (make-product (multiplier a2)
                             (multiplicand a2))))
        (else (list a1 '+ a2))))
(define (=number? exp num)
  (and (number? exp) (= exp num)))
(define (make-product m1 m2)
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        ((and (number? m1) (number? m2)) (* m1 m2))
        (else (list m1 '* m2))))
(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        ((sum? exp) (make-sum (deriv (addend exp) var)
                              (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
          (make-product (multiplier exp)
                        (deriv (multiplicand exp) var))
          (make-product (deriv (multiplier exp) var)
                        (multiplicand exp))))
        (else
         (error "unknown expression type: DERIV" exp))))
```

```scheme
<<deriv-algebraic-fixed>>
(load "mattcheck2.scm")
(mattcheck "deriv: basic addition"
           (deriv '(x + 3) 'x)
           1)
(mattcheck "deriv: basic multiplication"
           (deriv '(x * y) 'x)
           'y)
(mattcheck "deriv: bad simplification"
           (deriv '((x * y) * (x + 3)) 'x)
           '((x * y) + (y * (x + 3))))
(mattcheck "deriv: longer addition"
           (deriv '(x + 3 + 6 + z) 'x)
           1)
(mattcheck "deriv: longer multiplication"
           (deriv '(x * y * (x + 3)) 'x)
           '((x * y) + (y * (x + 3))))

;; Test cases from:
;; http://community.schemewiki.org/?sicp-ex-2.58
(mattcheck "deriv: mult prioritization 1"
           (deriv '(x + 3 * (x + y + 2)) 'x)
           4)
(mattcheck "deriv: mult prioritization 2"
           (deriv '(x * (y * (x + 3))) 'x)
           '((x * y) + (y * (x + 3))))
(mattcheck "deriv: mult prioritization 3"
           (deriv '((x * y) * (x + 3)) 'x)
           '((x * y) + (y * (x + 3))))
;; Checks from "future Matt"
(mattcheck "deriv: mult prioritization 4a"
           (deriv '(x + 3 + x + y * 2) 'x)
           2)
(mattcheck "deriv: mult prioritization 4b"
           (deriv '(y * 2 + x + 3 + x) 'x)
           2)
```


### <span class="section-num">3.68</span> Exercise 2.59: Representing sets {#exercise-2-dot-59-representing-sets}


#### <span class="section-num">3.68.1</span> Text definitions {#text-definitions}

<a id="code-snippet--sets-txt"></a>
```scheme
(define (element-of-set?-manual x set)
  (cond ((null? set) #f)
        ((equal? x (car set)) #t)
        (else (element-of-set? x (cdr set)))))
(define element-of-set? member) ; builtins are faster :)

(define (adjoin-set x set)
  (if (element-of-set? x set)
      set
      (cons x set)))

(define (intersection-set set1 set2)
  (cond ((or (null? set1) (null? set2))
         '())
        ((element-of-set? (car set1) set2)
         (cons (car set1)
               (intersection-set (cdr set1)
                                 set2)))
        (else (intersection-set (cdr set1)
                                set2))))
```


#### <span class="section-num">3.68.2</span> Question {#question}

Implement the <span class="inline-src language-scheme" data-lang="scheme">`union-set`</span> operation for the unordered-list representation of sets.


#### <span class="section-num">3.68.3</span> Answer {#answer}

<span class="inline-src language-scheme" data-lang="scheme">`union-set`</span> at a first glance looks like the opposite of
<span class="inline-src language-scheme" data-lang="scheme">`intersection-set`</span>, since the logic looks like "merge two sets, and if
an element exists in both than don't include it". However it's actually just
avoiding putting a symbol in twice.

<a id="code-snippet--union-set"></a>
```scheme
(define (union-set-rec set1 set2)
  (cond ((or (null? set1) (null? set2))
         set2)
        ((element-of-set? (car set1) set2)
         (union-set-rec (cdr set1)
                        set2))
        (else (cons (car set1)
                    (union-set-rec (cdr set1)
                                   set2)))))
(define (union-set set1 set2)
    (define (iter s result)
      (cond ((null? s)
             (reverse result))
            ((element-of-set? (car s) set2)
             (iter (cdr s) result))
            (else
             (iter (cdr s)
                   (cons (car s)
                         result)))))
    (append (iter set1 '())
            set2))
```

```scheme
<<sets-txt>>
<<union-set>>
(load "mattcheck2.scm")
(let ((set1 (list 1 2 3 4 5 6))
      (set2 (list 4 5 6 7 8 9))
      (set-union (list 1 2 3 4 5 6 7 8 9)))
  (mattcheck "union-set-rec"
             (union-set-rec set1 set2)
             set-union)
  (mattcheck "union-set"
             (union-set set1 set2)
             set-union))
```

```text
SUCCEED at union-set-rec
SUCCEED at union-set
```

<a id="code-snippet--union-set-benched"></a>
```scheme { linenos=true, linenostart=1 }
<<enumerate-interval>>
<<sets-txt>>
<<union-set>>
(load "../mattbench.scm")

(let ((set1 (enumerate-interval 1 1000))
      (set2 (enumerate-interval 500 1500)))
  (define (test)
    (format #t "~&recursive union-sets: ~a"
            (cadr (mattbench2 (lambda()(union-set-rec set1 set2)) 10000)))
    (format #t "~&iterative union-sets: ~a"
            (cadr (mattbench2 (lambda()(union-set set1 set2)) 10000))))

  (test))
```

```text
recursive union-sets: 4704343.6974
iterative union-sets: 4755592.2304
```

Man, my "optimized" versions never work. I would blame it on the Scheme compiler
but I'm a new programmer so it's probably a skill issue.


### <span class="section-num">3.69</span> Exercise 2.59: Sets with duplicates {#exercise-2-dot-59-sets-with-duplicates}


#### <span class="section-num">3.69.1</span> Question {#question}

We specified that a set would be represented as a list with no duplicates. Now
suppose we allow duplicates. For instance, the set \\(\\{1, 2, 3\\}\\) could be
represented as the list <span class="inline-src language-scheme" data-lang="scheme">`(2 3 2 1 3 2 2)`</span>. Design procedures
<span class="inline-src language-scheme" data-lang="scheme">`element-of-set?`</span>, <span class="inline-src language-scheme" data-lang="scheme">`adjoin-set`</span>, <span class="inline-src language-scheme" data-lang="scheme">`union-set`</span>, and
<span class="inline-src language-scheme" data-lang="scheme">`intersection-set`</span> that operate on this representation. How does the
efficiency of each compare with the corresponding procedure for the
non-duplicate representation? Are there applications for which you would use
this representation in preference to the non-duplicate one?


#### <span class="section-num">3.69.2</span> Answer {#answer}

<span class="inline-src language-scheme" data-lang="scheme">`element-of-set`</span> can be left unchanged. The others are a matter of
getting sloppy: <span class="inline-src language-scheme" data-lang="scheme">`adjoin-set`</span> can just be a <span class="inline-src language-scheme" data-lang="scheme">`cons`</span>, and
<span class="inline-src language-scheme" data-lang="scheme">`union-set`</span> can be an append. Now the remaining question is, how to
make <span class="inline-src language-scheme" data-lang="scheme">`intersection-set`</span> keep the duplicates?

<a id="code-snippet--set-dupes"></a>
```scheme
(define (adjoin-set-dupes x set)
  (cons x set))

(define (union-set-dupes set1 set2)
  (append set1 set2))

(define (intersection-set-dupes set1 set2)
  (let ((inter (intersection-set set1 set2)) ;; yes, we're calling the non-duplicate version
        (union (union-set-dupes set1 set2)))
    (filter (lambda(x) (element-of-set? x inter))
            union)))
(define (intersection-set-dupes2 set1 set2)
  (let ((inter (intersection-set set1 set2)) ;; yes, we're calling the non-duplicate version
        (inter2 (intersection-set set2 set1)))
    (append inter inter2)))
```

```scheme
<<sets-txt>>
<<union-set>>
<<set-dupes>>
(load "mattcheck2.scm")
(let ((set1 (list 1 2 3 4 5 6))
      (set2 (list 4 5 6 7 8 9))
      (set-union (list 1 2 3 4 5 6 7 8 9))
      (set-union-dupes
       (list 1 2 3 4 5 6 4 5 6 7 8 9))
      (set-intersection (list 4 5 6))
      (set-intersection-dupes
       (list 4 5 6 4 5 6)))
  (mattcheck "union-set-dupes"
             (union-set-dupes set1 set2)
             set-union-dupes)
  (mattcheck "union-set"
             (union-set set1 set2)
             set-union)
  (mattcheck "intersection-set"
             (intersection-set set1 set2)
             set-intersection)
  (mattcheck "intersection-set-dupes"
             (intersection-set-dupes set1 set2)
             set-intersection-dupes)
  (mattcheck "intersection-set-dupes2"
             (intersection-set-dupes2 set1 set2)
             set-intersection-dupes))
```

```text
SUCCEED at union-set-dupes
SUCCEED at union-set
SUCCEED at intersection-set
SUCCEED at intersection-set-dupes
SUCCEED at intersection-set-dupes2
```

<a id="code-snippet--union-set-benched"></a>
```scheme { linenos=true, linenostart=1 }
<<enumerate-interval>>
<<sets-txt>>
<<union-set>>
<<set-dupes>>
(use-modules (ice-9 format))
(load "../mattbench.scm")

(let ((set1 (enumerate-interval 1 1000))
      (set2 (enumerate-interval 500 1500)))
  (define (test)
    (format #t "~&union-sets: ~a"
            (cadr (mattbench2 (lambda()(union-set set1 set2)) 10000)))
    (format #t "~&union-sets-dupes: ~a"
            (cadr (mattbench2 (lambda()(union-set-dupes set1 set2)) 10000)))
    (format #t "~&intersection-set: ~a"
            (cadr (mattbench2 (lambda()(intersection-set set1 set2)) 10000)))
    (format #t "~&intersection-set-dupes: ~a"
            (cadr (mattbench2 (lambda()(intersection-set-dupes set1 set2)) 10000)))
    (format #t "~&intersection-set-dupes2: ~a"
            (cadr (mattbench2 (lambda()(intersection-set-dupes2 set1 set2)) 10000)))
    )

  (test))
```

```text
union-sets: 4734892.3798
union-sets-dupes: 40132.52
intersection-set: 4673425.9196
intersection-set-dupes: 10325053.8432
intersection-set-dupes2: 10872996.2555
```

So for <span class="inline-src language-scheme" data-lang="scheme">`union-sets`</span> a significant speedup, while in algorithms that
need to check for duplicates like <span class="inline-src language-scheme" data-lang="scheme">`intersection-set`</span> it's much more
time. Also, in a no-duplicate implementation <span class="inline-src language-scheme" data-lang="scheme">`element-of-set`</span>, it
wouldn't be wasting time checking duplicates.


### <span class="section-num">3.70</span> Exercise 2.61: Ordered sets {#exercise-2-dot-61-ordered-sets}


#### <span class="section-num">3.70.1</span> Question {#question}

Give an implementation of <span class="inline-src language-scheme" data-lang="scheme">`adjoin-set`</span> using the ordered
representation. By analogy with <span class="inline-src language-scheme" data-lang="scheme">`element-of-set?`</span> show how to take
advantage of the ordering to produce a procedure that requires on the average
about half as many steps as with the unordered representation.


#### <span class="section-num">3.70.2</span> Answer {#answer}

<a id="code-snippet--set-ordered"></a>
```scheme
(define (element-of-set?-ordered x set)
  (cond ((null? set) #f)
        ((= x (car set)) #t)
        ((< x (car set)) #f)
        (else (element-of-set?-ordered x (cdr set)))))

(define (adjoin-set-ordered x set)
  (define (iter checked rest)
    (cond ((null? rest)
           (append checked (list x)))
          ((= x (car rest)) set)
          ((> x (car rest))
           (iter (cons (car rest)
                       checked)
                 (cdr rest)))
          (else (append (reverse checked)
                        (cons x rest)))))
  (iter '() set))
```

```scheme
<<sets-txt>>
<<union-set>>
<<set-ordered>>
(load "mattcheck2.scm")
(let ((set (list 1 2 4 5 6 7 8 9))
      (answer (list 1 2 3 4 5 6 7 8 9)))
  (mattcheck "adjoin-set-ordered"
             (adjoin-set-ordered 3 set)
             answer))
```

```text
SUCCEED at adjoin-set-ordered
```


### <span class="section-num">3.71</span> Exercise 2.62: `union-set` ordered {#exercise-2-dot-62-union-set-ordered}


#### <span class="section-num">3.71.1</span> Question {#question}

Give a \\(\Theta(n)\\) implementation of <span class="inline-src language-scheme" data-lang="scheme">`union-set`</span> for sets
represented as ordered lists.


#### <span class="section-num">3.71.2</span> Answer {#answer}

<a id="code-snippet--union-set-ordered"></a>
```scheme
(define (union-set-ordered set1 set2)
  (define (iter s1 s2 result)
    (cond ((null? s1)
           (append (reverse result) s2))
          ((null? s2)
           (append (reverse result) s1))
          (else
           (let ((s1a (car s1))
                 (s2a (car s2)))
             (cond ((= s1a s2a)
                    (iter (cdr s1) (cdr s2)
                          (cons s1a result)))
                   ((< s1a s2a)
                    (iter (cdr s1) s2
                          (cons s1a result)))
                   ((> s1a s2a)
                    (iter s1 (cdr s2)
                          (cons s2a result))))))))
  (iter set1 set2 '()))
```

```scheme
<<sets-txt>>
<<union-set>>
<<set-ordered>>
<<union-set-ordered>>
(load "mattcheck2.scm")
(let ((set1 (list 1 2 3 4 5))
      (set2 (list 4 5 6 7 8 9))
      (answer (list 1 2 3 4 5 6 7 8 9)))
  (mattcheck "union-set-ordered"
             (union-set-ordered set1 set2)
             answer))
```

```text
SUCCEED at union-set-ordered
```

```scheme { linenos=true, linenostart=1 }
<<enumerate-interval>>
<<sets-txt>>
<<union-set>>
<<union-set-ordered>>
(use-modules (ice-9 format))
(load "../mattbench.scm")

;; http://community.schemewiki.org/?sicp-ex-2.62
(define (union-set-alt set1 set2)
  (cond  ((null? set1) set2)
         ((null? set2) set1)
         (else
          (let ((x1 (car set1))
                (x2 (car set2)))
            (cond ((= x1 x2) (cons x1 (union-set-alt (cdr set1) (cdr set2))))
                  ((< x1 x2) (cons x1 (union-set-alt (cdr set1) set2)))
                  (else (cons x2 (union-set-alt set1 (cdr set2)))))))))
(define (union-set-alt2 set1 set2)
  (cond ((null? set1) set2)
        ((null? set2) set1)
        (else
         (let ((x1 (car set1))
               (x2 (car set2)))
           (cons (min x1 x2)
                 (union-set-alt2 (if (> x1 x2)
                                     set1
                                     (cdr set1))
                                 (if (> x2 x1)
                                     set2
                                     (cdr set2))))))))

(let ((set1 (enumerate-interval 1 1000))
      (set2 (enumerate-interval 500 1500)))
  (define (test)
    (format #t "~&union-set: ~a"
            (cadr (mattbench2 (lambda()(union-set set1 set2)) 10000)))
    (format #t "~&union-set-ordered: ~a"
            (cadr (mattbench2 (lambda()(union-set-ordered set1 set2)) 50000)))
    (format #t "~&union-set-alt: ~a"
            (cadr (mattbench2 (lambda()(union-set-alt set1 set2)) 500000)))
    (format #t "~&union-set-alt2: ~a"
            (cadr (mattbench2 (lambda()(union-set-alt2 set1 set2)) 500000)))
    )

  (test))
```

```text
union-set: 4758999.4984
union-set-ordered: 107784.3673
union-set-alt: 45441.7717
union-set-alt2: 66262.4295
```


### <span class="section-num">3.72</span> Exercise 2.63: binary trees {#exercise-2-dot-63-binary-trees}


#### <span class="section-num">3.72.1</span> Text definitions {#text-definitions}

<a id="code-snippet--make-tree"></a>
```scheme { linenos=true, linenostart=1 }
(define (entry tree) (car tree))
(define (left-branch tree) (cadr tree))
(define (right-branch tree) (caddr tree))
(define (make-tree entry left right)
  (list entry left right))
```


#### <span class="section-num">3.72.2</span> Question A {#question-a}

Each of the following two
procedures converts a binary tree to a list.

<a id="code-snippet--tree-to-list"></a>
```scheme { linenos=true, linenostart=1 }
<<make-tree>>
(define (tree->list-1 tree)
  (if (null? tree)
      '()
      (append (tree->list-1 (left-branch tree))
              (cons (entry tree)
                    (tree->list-1
                      (right-branch tree))))))
(define (tree->list-2 tree)
  (define (copy-to-list tree result-list)
    (if (null? tree)
        result-list
        (copy-to-list (left-branch tree)
                      (cons (entry tree)
                            (copy-to-list
                              (right-branch tree)
                              result-list)))))
  (copy-to-list tree '()))
```

1.  Do the two procedures produce the same result for every tree? If not, how do
    the results differ? What lists do the two procedures produce for the trees in
    Figure 2.16?


#### <span class="section-num">3.72.3</span> Answer A {#answer-a}

First let's check whether the arrangement of the input tree impacts the output
list. I'd like a couple functions for generating lists.

<a id="code-snippet--tree-makers"></a>
```scheme { linenos=true, linenostart=1 }
(define (rightward-tree list)
  (if (null? list)
      '()
      (make-tree (car list) '()
                 (rightward-tree (cdr list)))))
(define (leftward-tree list)
  (define (rec list)
    (if (null? list)
        '()
        (make-tree (car list) (rec (cdr list))
                   '())))
  (rec list))
(define (nested-tree list)
  (define (rec list)
    (cond ((= 1 (length list))
           (make-tree (car list) '() '()))
          ((= 2 (length list))
           (make-tree (cadr list)
                      (make-tree (car list) '() '())
                      '()))
          (else
           (let ((halfway (truncate/ (length list)
                                     2)))
                 (make-tree (list-ref list halfway)
                            (rec (list-head list halfway))
                            (rec (list-tail list (1+ halfway))))))))
  (rec list))
```

```scheme { linenos=true, linenostart=1 }
<<echo>>
<<tree-to-list>>
<<tree-makers>>

(let* ((nil '())
       (1-to-4 (list 1 2 3 4))
       (tree-right
        (rightward-tree 1-to-4))
       (tree-left
        (leftward-tree 1-to-4))
       (tree-middle
        (nested-tree (iota 10))))
  (echo "tree-right:" tree-right)
  (echo "tree-right list 1:" (tree->list-1 tree-right))
  (echo "tree-right list 2:" (tree->list-2 tree-right))
  (newline)
  (echo "tree-left:" tree-left)
  (echo "tree-left list 1:" (tree->list-1 tree-left))
  (echo "tree-left list 2:" (tree->list-2 tree-left))
  (newline)
  (echo "tree-middle:" tree-middle)
  (echo "tree-middle list 1:" (tree->list-1 tree-middle))
  (echo "tree-middle list 2:" (tree->list-2 tree-middle)))
```

```text
tree-right: (1 () (2 () (3 () (4 () ()))))
tree-right list 1: (1 2 3 4)
tree-right list 2: (1 2 3 4)

tree-left: (1 (2 (3 (4 () ()) ()) ()) ())
tree-left list 1: (4 3 2 1)
tree-left list 2: (4 3 2 1)

tree-middle: (5 (2 (1 (0 () ()) ()) (4 (3 () ()) ())) (8 (7 (6 () ()) ()) (9 () ())))
tree-middle list 1: (0 1 2 3 4 5 6 7 8 9)
tree-middle list 2: (0 1 2 3 4 5 6 7 8 9)
```

So, the lists are the same for both.

Fun fact: Emacs org-babel has suddenly stopped accepting the &lambda; character
in source code.


#### <span class="section-num">3.72.4</span> Question B {#question-b}

Do the two procedures have the same order of growth in the number of steps
required to convert a balanced tree with \\(n\\) elements to a list? If not, which
one grows more slowly?


#### <span class="section-num">3.72.5</span> Answer B {#answer-b}

```scheme { linenos=true, linenostart=1 }
;; tree->list-1 evaluating the following tree:
;;     7
;;    / \
;;   3   9
;;  / \   \
;; 1   5   11
(append (append (append nil
                        (cons 1
                              nil))
                (cons 3
                      (append nil
                              (cons 5
                                    nil))))
        (cons 7
              (append nil
                      (cons 9
                            (append nil
                                    (cons 11
                                          nil))))))
;; holy cow that is wasteful. So many appends of nothing.

;; tree->list-2 evaluation (iterative)
(copy-to-list [full tree] nil)
(copy-to-list [tree 3 1 5]
              (cons 7
                    (copy-to-list
                     [tree 9 11]
                     nil)))
(copy-to-list [tree 3 1 5]
              (cons 7
                    (copy-to-list
                     nil
                     (cons 9
                           (copy-to-list
                            [tree 11]
                            nil)))))
(copy-to-list [tree 3 1 5]
              (cons 7
                    (copy-to-list
                     nil
                     (cons 9
                           (copy-to-list
                            nil
                            (cons 11
                                  (copy-to-list nil nil)))))))
(copy-to-list [tree 3 1 5]
              '(7 9 11))
(copy-to-list [tree 1]
              (cons 3
                    (copy-to-list
                     nil
                     (cons 5
                           (copy-to-list
                            nil
                            '(7 9 11))))))
(copy-to-list
 nil
 (cons 1
       (copy-to-list
        nil
        '(3 5 7 9 11))))
'(1 3 5 7 9 11)
```

So, assuming the evaluation isn't as slow as operations like <span class="inline-src language-scheme" data-lang="scheme">`append`</span>,
the second is definitely faster -- it's basically just evaluating to a series of
<span class="inline-src language-scheme" data-lang="scheme">`cons`</span> statements. The internet suggests that the first is
\\(\Theta(n\log{n})\\) while the second is \\(\Theta(n)\\).


### <span class="section-num">3.73</span> Exercise 2.64: Making a balanced binary tree {#exercise-2-dot-64-making-a-balanced-binary-tree}

The following procedure <span class="inline-src language-scheme" data-lang="scheme">`list->tree`</span> converts an ordered list to a
balanced binary tree. The helper procedure <span class="inline-src language-scheme" data-lang="scheme">`partial-tree`</span> takes as
arguments an integer \\(n\\) and list of at least \\(n\\) elements and constructs a
balanced tree containing the first \\(n\\) elements of the list. The result
returned by <span class="inline-src language-scheme" data-lang="scheme">`partial-tree`</span> is a pair (formed with <span class="inline-src language-scheme" data-lang="scheme">`cons`</span>)
whose <span class="inline-src language-scheme" data-lang="scheme">`car`</span> is the constructed tree and whose <span class="inline-src language-scheme" data-lang="scheme">`cdr`</span> is the
list of elements not included in the tree.

<a id="code-snippet--list-to-tree"></a>
```scheme { linenos=true, linenostart=1 }
<<make-tree>>
(define (list->tree elements)
  (car (partial-tree elements (length elements))))
(define (partial-tree elts n)
  (if (= n 0)
      (cons '() elts)
      (let ((left-size (quotient (- n 1) 2)))
        (let ((left-result
               (partial-tree elts left-size)))
          (let ((left-tree (car left-result))
                (non-left-elts (cdr left-result))
                (right-size (- n (+ left-size 1))))
            (let ((this-entry (car non-left-elts))
                  (right-result
                   (partial-tree
                    (cdr non-left-elts)
                    right-size)))
              (let ((right-tree (car right-result))
                    (remaining-elts
                     (cdr right-result)))
                (cons (make-tree this-entry
                                 left-tree
                                 right-tree)
                      remaining-elts))))))))
```


#### <span class="section-num">3.73.1</span> Question A {#question-a}

Write a short paragraph explaining as clearly as you can how
<span class="inline-src language-scheme" data-lang="scheme">`partial-tree`</span> works. Draw the tree produced by <span class="inline-src language-scheme" data-lang="scheme">`list->tree`</span>
for the list <span class="inline-src language-scheme" data-lang="scheme">`(1 3 5 7 9 11)`</span>.


#### <span class="section-num">3.73.2</span> Answer A {#answer-a}

For my own sake, I'll reorganize this with <span class="inline-src language-scheme" data-lang="scheme">`let*`</span>.

```scheme { linenos=true, linenostart=1 }
(define (partial-tree elts n)
  (if (= n 0)
      (cons '() elts)
      (let* ((left-size (quotient (- n 1) 2))
            (left-result (partial-tree
                          elts
                          left-size))
            (left-tree (car left-result))
            (non-left-elts (cdr left-result))
            (right-size (- n (+ left-size 1)))
            (this-entry (car non-left-elts))
            (right-result (partial-tree
                           (cdr non-left-elts)
                           right-size))
            (right-tree (car right-result))
            (remaining-elts (cdr right-result)))
        (cons (make-tree this-entry
                         left-tree
                         right-tree)
              remaining-elts))))

```

Say we're evaluating <span class="inline-src language-scheme" data-lang="scheme">`'(1 3 5 7 9 11)`</span>. We define
<span class="inline-src language-scheme" data-lang="scheme">`left-size`</span> as \\(\lfloor n/2 \rfloor\\). <span class="inline-src language-scheme" data-lang="scheme">`partial-tree`</span> recurses
until hitting \\(n=0\\), at which point it returns the starting list with
<span class="inline-src language-scheme" data-lang="scheme">`'()`</span> prepended to it. This is used as the empty left branch for the
second-to-the-bottom row of the tree, in this case for the tree node of
<span class="inline-src language-scheme" data-lang="scheme">`1`</span>. That empty tree branch is saved in <span class="inline-src language-scheme" data-lang="scheme">`left-tree`</span>,
<span class="inline-src language-scheme" data-lang="scheme">`this-entry`</span> (<span class="inline-src language-scheme" data-lang="scheme">`1`</span>) is defined, then we recurse to the right
branch, finding a bottom to place <span class="inline-src language-scheme" data-lang="scheme">`3`</span>. Finally, the tree with only 3
is returned, it becomes the right branch off <span class="inline-src language-scheme" data-lang="scheme">`1`</span>, making
<span class="inline-src language-scheme" data-lang="scheme">`(make-tree 1 '() (make-tree 3 '() '()))`</span>. This gets
<span class="inline-src language-scheme" data-lang="scheme">`cons`</span>'d to the remaining list, <span class="inline-src language-scheme" data-lang="scheme">`'(5 7 9 11)`</span>. Upon
returning the new list, this will become the <span class="inline-src language-scheme" data-lang="scheme">`left-tree`</span> of its parent
process. All in all, this is a recursive algorithm that kind of solves itself
with minimal logic. Note its evaluation always comes back to <span class="inline-src language-scheme" data-lang="scheme">`cons`</span>
operations.

This is very elegant. However, I am left wondering how clear this is in
comparison with some C routine that does the same thing.

{{< figure src="/ox-hugo/Ex64.png" >}}


#### <span class="section-num">3.73.3</span> Question B {#question-b}

What is the order of growth in the number of steps required by
<span class="inline-src language-scheme" data-lang="scheme">`list->tree`</span> to convert a list of \\(n\\) elements?


#### <span class="section-num">3.73.4</span> Answer B {#answer-b}

I'm going to estimate that it's \\(\Theta(n)\\) because of the <span class="inline-src language-scheme" data-lang="scheme">`cons`</span>
operations being the cornerstone of the procedure. The internet appears to agree
in this case.


### <span class="section-num">3.74</span> Exercise 2.65: Sets as binary trees {#exercise-2-dot-65-sets-as-binary-trees}


#### <span class="section-num">3.74.1</span> Textbook Definitions {#textbook-definitions}

<a id="code-snippet--tree-sets-txt"></a>
```scheme { linenos=true, linenostart=1 }
(define (element-of-set?-tree x set)
  (cond ((null? set) #f)
        ((= x (entry set)) #t)
        ((< x (entry set))
         (element-of-set?-tree
          x
          (left-branch set)))
        ((> x (entry set))
         (element-of-set?-tree
          x
          (right-branch set)))))
(define (adjoin-set-tree x set)
  (cond ((null? set) (make-tree x '() '()))
        ((= x (entry set)) set)
        ((< x (entry set))
         (make-tree
          (entry set)
          (adjoin-set-tree x (left-branch set))
          (right-branch set)))
        ((> x (entry set))
         (make-tree
          (entry set)
          (left-branch set)
          (adjoin-set-tree x (right-branch set))))))
```


#### <span class="section-num">3.74.2</span> Question {#question}

Use the results of Exercise 2.63 and Exercise 2.64 to give \\(\Theta(n)\\)
implementations of <span class="inline-src language-scheme" data-lang="scheme">`union-set`</span> and <span class="inline-src language-scheme" data-lang="scheme">`intersection-set`</span> for
sets implemented as (balanced) binary trees.


#### <span class="section-num">3.74.3</span> Answer {#answer}

Ok, now that's stretching my brain for sure. Hmm...

I think I need to look closer at how <span class="inline-src language-scheme" data-lang="scheme">`tree->list`</span> works.

```scheme { linenos=true, linenostart=1 }
(define (tree->list-debug tree)
  (define (copy-to-list tree result-list)
    (if (null? tree)
        result-list
        (let ((result
               (begin (echo ">> entering tree at" (entry tree) "results" result-list)
                      (copy-to-list (left-branch tree)
                                    (begin (echo "we'll cons" (entry tree))
                                           (let ((pair
                                                  (cons (entry tree)
                                                        (copy-to-list
                                                         (right-branch tree)
                                                         result-list))))
                                             (echo "  cons'd" pair)
                                             pair))))))
          (echo "<< leaving tree at" (entry tree) "results" result-list)
          result)))
  (copy-to-list tree '()))
```

```text
>> entering tree at 5 results ()
we'll cons 5
>> entering tree at 9 results ()
we'll cons 9
>> entering tree at 11 results ()
we'll cons 11
  cons'd (11)
<< leaving tree at 11 results ()
  cons'd (9 11)
>> entering tree at 7 results (9 11)
we'll cons 7
  cons'd (7 9 11)
<< leaving tree at 7 results (9 11)
<< leaving tree at 9 results ()
  cons'd (5 7 9 11)
>> entering tree at 1 results (5 7 9 11)
we'll cons 1
>> entering tree at 3 results (5 7 9 11)
we'll cons 3
  cons'd (3 5 7 9 11)
<< leaving tree at 3 results (5 7 9 11)
  cons'd (1 3 5 7 9 11)
<< leaving tree at 1 results (5 7 9 11)
<< leaving tree at 5 results ()
(1 3 5 7 9 11)
```

What's really holding me up is the \\(\Theta(n)\\) complexity. Since I'm probably
not going to figure this out easily, let's try doing it the "wrong" way first,
by using previously made algorithms.

<a id="code-snippet--sets-as-trees"></a>
```scheme { linenos=true, linenostart=1 }
<<make-tree>>
<<list-to-tree>>
<<tree-to-list>>
<<tree-sets-txt>>

(define (tree->list-debug tree)
  (define (copy-to-list tree result-list)
    (if (null? tree)
        result-list
        (let ((result
               (begin (echo ">> entering tree at" (entry tree) "results" result-list)
                      (copy-to-list (left-branch tree)
                                    (begin (echo "we'll cons" (entry tree))
                                           (let ((pair
                                                  (cons (entry tree)
                                                        (copy-to-list
                                                         (right-branch tree)
                                                         result-list))))
                                             (echo "  cons'd" pair)
                                             pair))))))
          (echo "<< leaving tree at" (entry tree) "results" result-list)
          result)))
  (copy-to-list tree '()))

(define (union-set-tree-wrong1 set1 set2)
  (define (copy-to-list tree held-tree result-list)
    (define (swap-trees)
      (copy-to-list held-tree tree result-list))
    (define (advance-tree-no-cons)
      (copy-to-list (left-branch tree)
                    held-tree
                    (copy-to-list
                     (right-branch tree)
                     held-tree
                     result-list)))
    (define (advance-tree-cons)
      (copy-to-list (left-branch tree)
                    held-tree
                    (cons (entry tree)
                          (copy-to-list
                           (right-branch tree)
                           held-tree
                           result-list))))
    (define (advance-both-cons)
      (copy-to-list (left-branch tree)
                    held-tree
                    (cons (entry tree)
                          (copy-to-list
                           (right-branch tree)
                           held-tree
                           result-list))))
    (cond ((and (null? tree)
                (null? held-tree))
           result-list)
          ((null? tree)
           (swap-trees))
          ((= (entry tree)
              (car result-list))
           (advance-tree-no-cons))
          ((= (entry tree) (entry held-tree))
           (advance-both-cons))
          ((< (entry tree) (entry held-tree))
           (advance-tree-cons))
          ((> (entry tree) (entry held-tree))
           (swap-trees))))
  (copy-to-list set1 set2 '()))

(define (union-set-tree-wrong2 set1 set2)
  (define (copy-to-tree tree result-tree)
    (if (null? tree)
        result-tree
        (copy-to-tree (left-branch tree)
                      (adjoin-set-tree (entry tree)
                                       (copy-to-tree
                                        (right-branch tree)
                                        result-tree)))))
  (copy-to-tree set1 set2))

(define (intersection-set-tree-wrong1 set1 set2)
  (define (copy-to-tree tree result-tree)
    (if (null? tree)
        result-tree
        (let ((adjoin-or-not
               (lambda (rest)
                 (if (element-of-set?-tree (entry tree)
                                           set2)
                     (adjoin-set-tree (entry tree)
                                      rest)
                     rest))))
          (copy-to-tree (left-branch tree)
                        (adjoin-or-not
                         (copy-to-tree
                          (right-branch tree)
                          result-tree))))))
    (copy-to-tree set1 '()))
```

```scheme { linenos=true, linenostart=1 }
<<sets-as-trees>>
<<echo>>
(load "mattcheck2.scm")
(let ((set1 (list->tree '(1 3 5 7 9 11)))
;; (5 (1 () (3 () ())) (9 (7 () ()) (11 () ())))
      (set2 (list->tree '(2 4 6 7 8 11)))
;; (6 (2 () (4 () ())) (8 (7 () ()) (11 () ())))
      (union (list->tree '(1 2 3 4 5 6 7 8 9 11)))
;; (5 (2 (1 () ()) (3 () (4 () ()))) (8 (6 () (7 () ())) (9 () (11 () ()))))
      (union-unbal '(6 (2 (1 () ()) (4 (3 () ()) (5 () ()))) (8 (7 () ()) (11 (9 () ()) ()))))
      (int-unbal '(11 (7 () ()) ()))
      (int (list->tree '(7 11))))
;; (7 () (11 () ()))
  (mattcheck "element-of-set?-tree true"
             (element-of-set?-tree 1 set1)
             #t)
  (mattcheck "element-of-set?-tree true"
             (element-of-set?-tree 7 set1)
             #t)
  (mattcheck "element-of-set?-tree false"
             (element-of-set?-tree 2 set1)
             #f)
  (mattcheck "union-set-tree-wrong2"
             (union-set-tree-wrong2 set1 set2)
             union-unbal)
  (mattcheck "intersection-set-tree-wrong1"
             (intersection-set-tree-wrong1 set1 set2)
             int-unbal)
  (echo (tree->list-debug set1)))
```

```text
SUCCEED at element-of-set?-tree true
SUCCEED at element-of-set?-tree true
SUCCEED at element-of-set?-tree false
SUCCEED at union-set-tree-wrong2
SUCCEED at intersection-set-tree-wrong1
```

I can't really think of a better way to do it. Time to look up the answer!

And... To my surprise, the answer most internet people have given is what I
called the "wrong" one. In their case, using <span class="inline-src language-scheme" data-lang="scheme">`tree->list`</span> and
<span class="inline-src language-scheme" data-lang="scheme">`list->tree`</span> to apply the list-based <span class="inline-src language-scheme" data-lang="scheme">`union-set`</span> and
<span class="inline-src language-scheme" data-lang="scheme">`intersection-set`</span>, saying it's \\(\Theta(n)\\). I also notice that they
didn't use <span class="inline-src language-scheme" data-lang="scheme">`element-of-set?`</span> and <span class="inline-src language-scheme" data-lang="scheme">`adjoin-to-set`</span> like I did.

Let's compare.

```scheme { linenos=true, linenostart=1 }
(use-modules (ice-9 format))
(load "../mattbench.scm")
<<sets-txt>>
<<sets-as-trees>>
<<enumerate-interval>>
(define tree->list tree->list-2)
(define (union-set set1 set2)
  (cond ((or (null? set1) (null? set2))
         set2)
        ((element-of-set? (car set1) set2)
         (union-set (cdr set1)
                        set2))
        (else (cons (car set1)
                    (union-set (cdr set1)
                                   set2)))))

;; from http://community.schemewiki.org/?sicp-ex-2.65
(define (union-set-l2t set1 set2)
  (cond ((null? set1) set2)
        ((null? set2) set1)
        (else (list->tree (union-set (tree->list set1) (tree->list set2))))))

(define (intersection-set-l2t set1 set2)
  (cond ((null? set1) '())
        ((null? set2) '())
        (else (list->tree (intersection-set (tree->list set1) (tree->list set2))))))

(define (make-2sets max)
  (let* ((a-start 0)
         (a-end 0.6)
         (b-start 0.4)
         (b-end 1))
    (cons (list->tree
           (enumerate-interval
            0
            (inexact->exact (* a-end max))))
          (list->tree
           (enumerate-interval
            (inexact->exact (* b-start max))
            (inexact->exact (* b-end max)))))))

(define (test-with 2sets repeats)
  (format #t "~&union-set-tree-wrong2: ~a"
          (cadr (mattbench2
                 (lambda()(union-set-tree-wrong2
                      (car 2sets)
                      (cdr 2sets)))
                 repeats)))
  (format #t "~&union-set-l2t: ~a"
          (cadr (mattbench2
                 (lambda()(union-set-l2t (car 2sets)
                                    (cdr 2sets)))
                 repeats)))
  (format #t "~&intersection-set-tree-wrong1: ~a"
          (cadr (mattbench2
                 (lambda()(intersection-set-tree-wrong1
                      (car 2sets)
                      (cdr 2sets)))
                 repeats)))
  (format #t "~&intersection-set-l2t: ~a"
          (cadr (mattbench2
                 (lambda()(intersection-set-l2t (car 2sets)
                                           (cdr 2sets)))
                 repeats))))
(format #t "~&~a" (make-2sets 10))
(define base-repeats 10000)
(test-with (make-2sets 100)
           base-repeats)
(test-with (make-2sets 1000)
           (/ base-repeats 2))
(test-with (make-2sets 10000)
           (/ base-repeats 4))
```

```text
union-set-tree-wrong2: 159831.3273
union-set-l2t: 49633.5962
intersection-set-tree-wrong1: 42577.4905
intersection-set-l2t: 33261.5268
union-set-tree-wrong2: 12648028.8732
union-set-l2t: 2196015.1536
intersection-set-tree-wrong1: 3165935.4476
intersection-set-l2t: 2015603.052
union-set-tree-wrong2: 1393227860.116
union-set-l2t: 195546567.7616
intersection-set-tree-wrong1: 361923468.7844
intersection-set-l2t: 195366120.9524
```

{{< figure src="/ox-hugo/2-65.png" >}}

Not really enough datapoints, but you can at least see that the `l2t` variants
are faster.


### <span class="section-num">3.75</span> Exercise 2.66: binary tree `lookup` {#exercise-2-dot-66-binary-tree-lookup}


#### <span class="section-num">3.75.1</span> Question {#question}

Implement the <span class="inline-src language-scheme" data-lang="scheme">`lookup`</span> procedure for the case where the set of records
is structured as a binary tree, ordered by the numerical values of the keys.


#### <span class="section-num">3.75.2</span> Answer {#answer}

First let's define what these records look like.

<a id="code-snippet--make-record"></a>
```scheme { linenos=true, linenostart=1 }
(define (make-record key value)
  (cons key value))
(define (key record)
  (car record))
(define (value record)
  (cdr record))
```

<a id="code-snippet--lookup-tree"></a>
```scheme { linenos=true, linenostart=1 }
<<make-tree>>
<<make-record>>
(define (lookup given-key tree-of-records)
  (cond ((null? tree-of-records) #f)
        ((= given-key
            (key (entry tree-of-records)))
         (entry tree-of-records))
        ((< given-key
            (key (entry tree-of-records)))
         (lookup
          given-key
          (left-branch tree-of-records)))
        ((> given-key
            (key (entry tree-of-records)))
         (lookup
          given-key
          (right-branch tree-of-records)))))
```

```scheme { linenos=true, linenostart=1 }
<<lookup-tree>>
<<list-to-tree>>
<<echo>>
(load "mattcheck2.scm")
(let ((set1 (list->tree
             (list (make-record 1 'a)
                   (make-record 3 'b)
                   (make-record 5 'c)
                   (make-record 7 'd)
                   (make-record 9 'e)
                   (make-record 11 'f)))))
  (mattcheck "lookup retrieves correct record"
             (lookup 9 set1)
             (make-record 9 'e)))
```

```text
SUCCEED at lookup retrieves correct record
```


### <span class="section-num">3.76</span> Exercise 2.67: decoding Huffman tree messages {#exercise-2-dot-67-decoding-huffman-tree-messages}


#### <span class="section-num">3.76.1</span> Text definitions {#text-definitions}

<a id="code-snippet--huffman-trees-txt"></a>
```scheme { linenos=true, linenostart=1 }
;; huffman-trees-txt
(define (make-leaf symbol weight)
  (list 'leaf
        symbol
        weight))
(define (leaf? object)
  (eq? (car object)
       'leaf))
(define (symbol-leaf x)
  (cadr x))
(define (weight-leaf x)
  (caddr x))

(define (make-code-tree left right)
  (list left
        right
        (append (symbols left) (symbols right))
        (+ (weight left) (weight right))))

(define (left-branch  tree)
  (car tree))
(define (right-branch tree)
  (cadr tree))
(define (symbols tree)
  (if (leaf? tree)
      (list (symbol-leaf tree))
      (caddr tree)))
(define (weight tree)
  (if (leaf? tree)
      (weight-leaf tree)
      (cadddr tree)))
(define (decode bits tree)
  (define (decode-1 bits current-branch)
    (if (null? bits)
        '()
        (let ((next-branch
               (choose-branch (car bits) current-branch)))
          (if (leaf? next-branch)
              (cons (symbol-leaf next-branch)
                    (decode-1 (cdr bits) tree))
              (decode-1 (cdr bits) next-branch)))))
  (decode-1 bits tree))
(define (choose-branch bit branch)
  (cond ((= bit 0) (left-branch branch))
        ((= bit 1) (right-branch branch))
        (else (error "bad bit: CHOOSE-BRANCH" bit))))
(define (adjoin-set x set)
  (cond ((null? set) (list x))
        ((< (weight x) (weight (car set))) (cons x set))
        (else (cons (car set)
                    (adjoin-set x (cdr set))))))
(define (make-leaf-set pairs)
  (if (null? pairs)
      '()
      (let ((pair (car pairs)))
        (adjoin-set (make-leaf (car pair)
                               (cadr pair))
                    (make-leaf-set (cdr pairs))))))
```


#### <span class="section-num">3.76.2</span> Question {#question}

Define an encoding tree and a sample message. Use the <span class="inline-src language-scheme" data-lang="scheme">`decode`</span>
procedure to decode the message, and give the result.


#### <span class="section-num">3.76.3</span> Answer {#answer}

<a id="code-snippet--test-encoding"></a>
```scheme { linenos=true, linenostart=1 }
<<huffman-trees-txt>>
<<echo>>
(define sample-tree
  (make-code-tree (make-leaf 'A 4)
                  (make-code-tree
                   (make-leaf 'B 2)
                   (make-code-tree
                    (make-leaf 'D 1)
                    (make-leaf 'C 1)))))
(define whos-on-first-tree
  (make-code-tree
   (make-leaf 'who 8)
                  (make-code-tree
                   (make-leaf 'what 4)
                   (make-code-tree
                    (make-leaf 'Idontknow 2)
                    (make-leaf 'why 2)))))
(define sample-message '(0 1 1 0 0 1 0 1 0 1 1 1 0))
(define whos-on-first-message '(0 1 0 1 1 0 1 1 1))
(echo (decode sample-message sample-tree))
(echo (decode whos-on-first-message whos-on-first-tree))
```

```text
(A D A B B C A)
(who what Idontknow why)
```


### <span class="section-num">3.77</span> Exercise 2.68: encoding Huffman tree messages {#exercise-2-dot-68-encoding-huffman-tree-messages}


#### <span class="section-num">3.77.1</span> Question {#question}

The <span class="inline-src language-scheme" data-lang="scheme">`encode`</span> procedure takes as arguments a message and a tree and
produces the list of bits that gives the encoded message.

<a id="code-snippet--encode-txt"></a>
```scheme { linenos=true, linenostart=1 }
;; encode-txt
(define (encode message tree)
  (if (null? message)
      '()
      (append (encode-symbol (car message) tree)
              (encode (cdr message) tree))))
```

<span class="inline-src language-scheme" data-lang="scheme">`encode-symbol`</span> is a procedure, which you must write, that returns the
list of bits that encodes a given symbol according to a given tree. You should
design <span class="inline-src language-scheme" data-lang="scheme">`encode-symbol`</span> so that it signals an error if the symbol is
not in the tree at all. Test your procedure by encoding the result you obtained
in Exercise 2.67 with the sample tree and seeing whether it is the same as the
original sample message.


#### <span class="section-num">3.77.2</span> Answer {#answer}

<a id="code-snippet--encode-symbol"></a>
```scheme { linenos=true, linenostart=1 }
;; encode-symbol
(define element-of-set? member)
(define (encode-symbol symbol tree)
  (define (rec t)
    (cond ((and (leaf? t)
                (eq? (symbol-leaf t)
                     symbol))
           '())
          ((element-of-set? symbol
                            (symbols (left-branch t)))
           (cons 0
                 (rec (left-branch t))))
          ((element-of-set? symbol
                            (symbols (right-branch t)))
           (cons 1
                 (rec (right-branch t))))
          (else (error "encode-symbol: logic error"))))
  (if (element-of-set? symbol (symbols tree))
      (rec tree)
      (error "encode-symbol: symbol not in tree")))
```

<a id="code-snippet--encoding-test"></a>
```scheme { linenos=true, linenostart=1 }
<<huffman-trees-txt>>
<<encode-txt>>
<<encode-symbol>>
(load "mattcheck2.scm")
(define sample-tree
  (make-code-tree (make-leaf 'A 4)
                  (make-code-tree
                   (make-leaf 'B 2)
                   (make-code-tree
                    (make-leaf 'D 1)
                    (make-leaf 'C 1)))))
(define whos-on-first-tree
  (make-code-tree
   (make-leaf 'who 8)
                  (make-code-tree
                   (make-leaf 'what 4)
                   (make-code-tree
                    (make-leaf 'Idontknow 2)
                    (make-leaf 'why 2)))))
(define sample-message '(0 1 1 0 0 1 0 1 0 1 1 1 0))
(define whos-on-first-message '(0 1 0 1 1 0 1 1 1))
(mattcheck "sample encoded message"
           sample-message
           (encode '(A D A B B C A)
                   sample-tree))
(mattcheck "who's on first encoded message"
           whos-on-first-message
           (encode '(who what Idontknow why)
                   whos-on-first-tree))
```

```text
SUCCEED at sample encoded message
SUCCEED at who's on first encoded message
```


### <span class="section-num">3.78</span> Exercise 2.69: Generating Huffman trees {#exercise-2-dot-69-generating-huffman-trees}


#### <span class="section-num">3.78.1</span> Question {#question}

The following procedure takes as its argument a list of symbol-frequency pairs
(where no symbol appears in more than one pair) and generates a Huffman encoding
tree according to the Huffman algorithm.

```scheme
(define (generate-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))
```

<span class="inline-src language-scheme" data-lang="scheme">`make-leaf-set`</span> is the procedure given above that transforms the list
of pairs into an ordered set of leaves. <span class="inline-src language-scheme" data-lang="scheme">`successive-merge`</span> is the
procedure you must write, using <span class="inline-src language-scheme" data-lang="scheme">`make-code-tree`</span> to successively merge
the smallest-weight elements of the set until there is only one element left,
which is the desired Huffman tree. (This procedure is slightly tricky, but not
really complicated. If you find yourself designing a complex procedure, then you
are almost certainly doing something wrong. You can take significant advantage
of the fact that we are using an ordered set representation.)


#### <span class="section-num">3.78.2</span> Answer {#answer}

This one took a while. The whole in-place-reorganization of the list seems
tricky, since adding branches together makes a new branch which is higher value
than the later entries. In a C language I'd be solving the problem by "moving" a
play-head forward and back, but here I'll have to coerce the evaluator into
doing it.

<a id="code-snippet--generate-huffman-tree"></a>
```scheme { linenos=true, linenostart=1 }
;; generate-huffman-tree
(use-srfis '(1))
(define element-of-set? member)
(define (generate-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))

(define (successivemerge-iter delayed leaves)
  (let ((dl (length delayed))
        (ll (length leaves)))
    (cond ((= ll 0)
           (successivemerge-iter '()
                                 delayed))
          ((= dl 0)
           (if (= ll 1)
               (car leaves)
               (successivemerge-iter (cons (car leaves) '())
                                     (cdr leaves))))
          ((and (= ll 1)
                (= dl 1))
           (make-code-tree (car delayed)
                           (car leaves)))
          ((<= (weight (car delayed))
               (weight (car leaves)))
           (successivemerge-iter (cdr delayed)
                                 (cons (make-code-tree (car delayed)
                                                       (car leaves))
                                       (cdr leaves))))
          ((> (weight (car delayed))
              (weight (car leaves)))
           (successivemerge-iter (cons (car leaves)
                                       delayed)
                                 (cdr leaves))))))

  (define (successive-merge leaves)
    (successivemerge-iter (cons (car leaves) '())
                          (cdr leaves)))
```

<a id="code-snippet--gen-huff-trees-test"></a>
```scheme { linenos=true, linenostart=1 }
<<huffman-trees-txt>>
<<encode-txt>>
<<encode-symbol>>
<<generate-huffman-tree>>
<<echo>>
(load "mattcheck2.scm")

(let ((pairs
       (make-leaf-set '((A 8)(B 3)(C 1)(D 1)
                        (E 1)(F 1)(G 1)(H 1))))
      (answer
       (make-code-tree (make-leaf 'A 8)
                       (make-code-tree
                        (make-code-tree
                         (make-leaf 'B 3)
                         (make-code-tree
                          (make-leaf 'C 1)
                          (make-leaf 'D 1)))
                        (make-code-tree
                         (make-code-tree
                          (make-leaf 'E 1)
                          (make-leaf 'F 1))
                         (make-code-tree
                          (make-leaf 'G 1)
                          (make-leaf 'H 1)))))))
  (mattcheck "successive-merge"
             (successive-merge pairs)
             answer)
  (echo (successive-merge pairs)))
```

```text
FAIL at successive-merge
expected: ((leaf A 8) (((leaf B 3) ((leaf C 1) (leaf D 1) (C D) 2) (B C D) 5) (# …) …) …)
returned: (((((leaf H 1) (leaf G 1) (H G) 2) ((leaf F 1) (leaf E 1) (F E) 2) (…) …) …) …)
(((((leaf H 1) (leaf G 1) (H G) 2) ((leaf F 1) (leaf E 1) (F E) 2) (H G F E) 4)
  (((leaf D 1) (leaf C 1) (D C) 2) (leaf B 3) (D C B) 5) (H G F E D C B) 9)
    (leaf A 8) (H G F E D C B A) 17)
```

And the tree is _backwards_. But it is correct. \begin{tiny}Sigh.\end{tiny}

Time to be embarrassed by the internet's solution.

<a id="code-snippet--s-merge-small"></a>
```scheme { linenos=true, linenostart=1 }
;; see 2.67
(define (adjoin-set x set)
  (cond ((null? set) (list x))
        ((< (weight x) (weight (car set)))
         (cons x set))
        (else (cons (car set)
                    (adjoin-set x (cdr set))))))
;; for my own edification
(define (adjoin-set-iter x set)
  (define (iter less more)
    (cond ((null? more)
           (reverse (cons x less)))
          ((< (weight x) (weight (car more)))
           (append (reverse (cons x less))
                   more))
          (else (adjoin-set-iter (cons (car more) less)
                                 (cdr more)))))

  (iter '() set))

;; https://codereview.stackexchange.com/a/117980
(define (successive-merge-small leaves)
  (if (null? (cdr leaves))
      (car leaves)
      (successive-merge-small
       (adjoin-set
        (make-code-tree (car leaves)
                        (cadr leaves))
        (cddr leaves)))))
```

Comparing my above code with the code for <span class="inline-src language-scheme" data-lang="scheme">`adjoin-set`</span>, mine is
definitely unnecessarily complicated. How does the performance stack up?

```text
Mine: 4453.0773347
Theirs: 4554.0141235
```

So for all that unnecessary complexity it's still about the same.

The lesson I keep failing to learn is remembering past work (i.e.
<span class="inline-src language-scheme" data-lang="scheme">`adjoin-set`</span>), since this book loves to integrate past exercises.


### <span class="section-num">3.79</span> Exercise 2.70: encoding 1950s rock songs {#exercise-2-dot-70-encoding-1950s-rock-songs}


#### <span class="section-num">3.79.1</span> Question {#question}

The following eight-symbol alphabet with associated relative frequencies was
designed to efficiently encode the lyrics of 1950s rock songs. (Note that the
“symbols” of an “alphabet” need not be individual letters.)

| A    | 2 | NA  | 16 |
|------|---|-----|----|
| BOOM | 1 | SHA | 3  |
| GET  | 2 | YIP | 9  |
| JOB  | 2 | WAH | 1  |

Use <span class="inline-src language-scheme" data-lang="scheme">`generate-huffman-tree`</span> to generate a corresponding Huffman tree,
and use <span class="inline-src language-scheme" data-lang="scheme">`encode`</span> to encode the following message:

```text
Get a job
Sha na na na na na na na na

Get a job
Sha na na na na na na na na

Wah yip yip yip yip
yip yip yip yip yip
Sha boom
```

How many bits are required for the encoding? What is the smallest number of bits
that would be needed to encode this song if we used a fixed-length code for the
eight-symbol alphabet?


#### <span class="section-num">3.79.2</span> Answer {#answer}

<a id="code-snippet--hippie-trees"></a>
```scheme { linenos=true, linenostart=1 }
(define hippie-set
  '((NA 16)(YIP 9)(SHA 3)(A 2)
    (GET 2)(JOB 2)(BOOM 1)(WAH 1)))
(define hippie-tree
  (generate-huffman-tree hippie-set))
(define hippie-plaintext
  '(GET A JOB
    SHA NA NA NA NA NA NA NA NA
    GET A JOB
    SHA NA NA NA NA NA NA NA NA
    WAH YIP YIP YIP YIP
    YIP YIP YIP YIP YIP
    SHA BOOM))
(define hippie-encoded
  (encode hippie-plaintext
          hippie-tree))
```

<a id="code-snippet--hippie-encoding"></a>
```scheme { linenos=true, linenostart=1 }
<<huffman-trees-txt>>
<<encode-txt>>
<<encode-symbol>>
<<generate-huffman-tree>>
(define (successive-merge leaves)
  (if (null? (cdr leaves))
      (car leaves)
      (successive-merge
       (adjoin-set
        (make-code-tree (car leaves)
                        (cadr leaves))
        (cddr leaves)))))
<<hippie-trees>>
<<echo>>
(load "mattcheck2.scm")

(echo "Length of unencoded message is" (length hippie-plaintext) "words.")
(echo "Length of encoded message is" (length hippie-encoded) "bits")
(echo "Unencoded message (newlines added):" (decode hippie-encoded hippie-tree))
```

```text
Length of unencoded message is 36 words.
Length of encoded message is 84 bits
Unencoded message (newlines added):
(GET A JOB
SHA NA NA NA NA NA NA NA NA
GET A JOB SHA NA NA NA NA NA NA NA NA
WAH YIP YIP YIP YIP
YIP YIP YIP YIP YIP
SHA BOOM)
```

A fixed-length alphabet would take 3 bits per word, or 108 bits. So the VLE is
77% the size of anything else.

<a id="code-snippet--hippie-encoded-message"></a>
```scheme { linenos=true, linenostart=1 }
<<huffman-trees-txt>>
<<encode-txt>>
<<encode-symbol>>
<<generate-huffman-tree>>
(define (successive-merge leaves)
  (if (null? (cdr leaves))
      (car leaves)
      (successive-merge
       (adjoin-set
        (make-code-tree (car leaves)
                        (cadr leaves))
        (cddr leaves)))))
<<hippie-trees>>
(define (split-list-every-x list x)
  (define (rec ll)
    (if (< (length ll) x)
        (cons ll '())
        (cons (list-head ll x)
              (rec (list-tail ll x)))))
  (rec list))
(split-list-every-x hippie-encoded 7)
```

| 1 | 1 | 1 | 1 | 1 | 1 | 1 |
|---|---|---|---|---|---|---|
| 0 | 0 | 1 | 1 | 1 | 1 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 | 0 |
| 0 | 0 | 0 | 0 | 0 | 1 | 1 |
| 1 | 1 | 1 | 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 | 0 | 1 | 1 |
| 1 | 0 | 0 | 0 | 0 | 0 | 0 |
| 0 | 0 | 0 | 1 | 1 | 0 | 1 |
| 0 | 1 | 0 | 1 | 0 | 1 | 0 |
| 1 | 0 | 1 | 0 | 1 | 0 | 1 |
| 0 | 1 | 0 | 1 | 0 | 1 | 1 |
| 1 | 0 | 1 | 1 | 0 | 1 | 1 |

{{< figure src="/ox-hugo/2-70.png" >}}


### <span class="section-num">3.80</span> Exercise 2.71 {#exercise-2-dot-71}


#### <span class="section-num">3.80.1</span> Questions {#questions}

Suppose we have a Huffman tree for an alphabet of \\(n\\) symbols, and that the
relative frequencies of the symbols are \\(1, 2, 4, \dots, 2^{n-1}\\). Sketch the
tree for \\(n=5\\); for \\(n=10\\). In such a tree (for general \\(n\\)) how many bits
are required to encode the most frequent symbol? The least frequent symbol?


#### <span class="section-num">3.80.2</span> Answers {#answers}

In this type of tree, the most frequent symbol takes 1 bit. The \\(n\\)th symbol
takes \\(n\\) bits. If it's the least frequent symbol and \\(n\\) is even, it takes
\\(n-1\\) bits.


### <span class="section-num">3.81</span> Exercise 2.72: order of growth of `encode` {#exercise-2-dot-72-order-of-growth-of-encode}

Let's take a look at <span class="inline-src language-scheme" data-lang="scheme">`encode-symbol`</span>.

```scheme { linenos=true, linenostart=1 }
;; encode-symbol
(define (encode-symbol symbol tree)
  (define (rec t) ;; rec is O(log n)
    (cond ((and (leaf? t)
                (eq? (symbol-leaf t)
                     symbol)) ; O(1)
           '())
          ((element-of-set? symbol ; O(symbols of left-branch)
                            (symbols (left-branch t)))
           (cons 0 ;; O(1)
                 (rec (left-branch t)))) ;; rec is O(log symbols)
          ((element-of-set? symbol ; O(symbols of right-branch)
                            (symbols (right-branch t)))
           (cons 1 ;; O(1)
                 (rec (right-branch t)))) ;; rec is O(log symbols)
          (else (error "encode-symbol: logic error"))))
  (if (element-of-set? symbol (symbols tree)) ;; O(symbols)
      (rec tree) ;; rec is O(log n)
      (error "encode-symbol: symbol not in tree")))
```

I'm not expecting to get a correct answer,but here's what I'm able to derive.
<span class="inline-src language-scheme" data-lang="scheme">`encode-symbol`</span> uses binary search to find the symbol, which is
\\(\Theta(\log{n})\\). However, at each step it needs to perform a \\(\Theta(n)\\)
search of the left branch. If the symbol isn't found, it will execute a
\\(\Theta(n)\\) search of the right branch. So these searches have a varying cost
depending on if the tree is biased to the left or the right. So in the worst
case of being right-biased, the searches will incur an order of \\(\Theta(n2)\\),
while doing the overall binary search of \\(\Theta(\log{n})\\). So I think this
simplifies to \\(\Theta(n \log{n})\\). Time to check my answer...

While I see a couple answers[^fn:6] agreeing with mine, I see more saying that
`encode-symbol` is \\(\Theta(1)\\) for the most frequent symbol, and \\(\Theta(n)\\)
for the average case. Some also say[^fn:7] that in the worst case (the least
frequent symbol), you may have to visit every non-leaf node for a complexity of
\\(\Theta(n^2)\\).


### <span class="section-num">3.82</span> 2.4: Multiple Representations for Abstract Data {#2-dot-4-multiple-representations-for-abstract-data}

We have learned how to abstract "higher" and "lower" parts of a system. Now we
will talk about having multiple simultaneous representations of data in the same
system. This could be considered "side-by-side" abstraction. The authors tout
the

To allow programmers to add and remove representations at will without modifying
the original code, the authors suggest using a table lookup system to keep track
of representations and their related methods. For example:

| Operations || Polar Type      | Rectangular Type      |
|------------|-----------------|-----------------------|
| real-part  || real-part-polar | real-part-rectangular |
| imag-part  || imag-part-polar | imag-part-rectangular |
| magnitude  || magnitude-polar | magnitude-rectangular |
| angle      || angle-polar     | angle-rectangular     |

data-directed programming
: designing programs to organize their behaviors
    by a table of operations like the one above.

principle of least commitment
: abstracting a system so it can work with

many possible representations of data without being rewritten.

The book introduces two methods, <span class="inline-src language-scheme" data-lang="scheme">`(put 'operation 'type lambda)`</span> to
add such a method to the table, and <span class="inline-src language-scheme" data-lang="scheme">`(get 'operation 'type)`</span> to fetch
the saved lambda. I'll use Guile's native [hash tables](https://www.gnu.org/software/guile/manual/html_node/Hash-Table-Reference.html)[^fn:8]
to implement this.

<a id="code-snippet--op-table"></a>
```scheme { linenos=true, linenostart=1 }
(define op-table (make-hash-table))

(define (put operation type f)
  (hash-set! op-table (cons operation type) f))
(define (get operation type)
  (hash-ref op-table (cons operation type)))
```

```scheme { linenos=true, linenostart=1 }
;; basic test of lambda storage
<<op-table>>
<<echo>>
(put 'A 'X (lambda()'AX))
(put 'B 'Y (lambda()'BY))
(put 'C 'Z (lambda()'CZ))

(echo ((get 'A 'X))
      ((get 'B 'Y))
      ((get 'C 'Z)))
```

```text
AX BY CZ
```

One method to distinguish these types of items is called **type tagging**. Take this code as an example:

<a id="code-snippet--type-tagging"></a>
```scheme { linenos=true, linenostart=1 }
(define (attach-tag type-tag contents)
  (cons type-tag contents))

(define (type-tag datum)
  (if (pair? datum)
      (car datum)
      (error "Bad tagged datum:
              TYPE-TAG" datum)))

(define (contents datum)
  (if (pair? datum)
      (cdr datum)
      (error "Bad tagged datum:
              CONTENTS" datum)))
```


### <span class="section-num">3.83</span> Exercise 2.73: Data-driven symbolic differentiator {#exercise-2-dot-73-data-driven-symbolic-differentiator}

[2.3.2: Example: Symbolic differentiator](#2-dot-3-dot-2-example-symbolic-differentiator) described a program that performs
symbolic differentiation:

```scheme { linenos=true, linenostart=1 }
(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp)
         (if (same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum (make-product
                    (multiplier exp)
                    (deriv (multiplicand exp) var))
                   (make-product
                    (deriv (multiplier exp) var)
                    (multiplicand exp))))
        ;; more rules can be added here
        (else (error "unknown expression type:
                      DERIV" exp))))
```

We can regard this program as performing a dispatch on the type of the
expression to be differentiated. In this situation the ''type tag'' of the datum
is the algebraic operator symbol (such as <span class="inline-src language-scheme" data-lang="scheme">`+`</span>) and the operation being
performed is <span class="inline-src language-scheme" data-lang="scheme">`deriv`</span>. We can transform this program into data-directed
style by rewriting the basic derivative procedure as

```scheme { linenos=true, linenostart=1 }
(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        (else ((get 'deriv (operator exp))
               (operands exp) var))))
(define (operator exp) (car exp))
(define (operands exp) (cdr exp))
```


#### <span class="section-num">3.83.1</span> Question A {#question-a}

Explain what was done above. Why can't we assimilate the predicates
<span class="inline-src language-scheme" data-lang="scheme">`number?`</span> and <span class="inline-src language-scheme" data-lang="scheme">`variable?`</span> into the data-directed dispatch?


#### <span class="section-num">3.83.2</span> Answer A {#answer-a}

This rewrite removes the predicate-based tests for sums, products, etc,
replacing them with the <span class="inline-src language-scheme" data-lang="scheme">`get`</span>-based lookup system explained earlier.

The call to `get` requires using the `operator` procedures on `exp`, which would
fail on a single-item `exp`. So it is necessary to handle the number and
variable checks before calling `deriv`.


#### <span class="section-num">3.83.3</span> Questions B and C {#questions-b-and-c}

-   Write the procedures for derivatives of sums and products, and the auxiliary
    code required to install them in the table used by the program above.
-   Choose any additional differentiation rule that you like, such as the one for
    exponents ([Exercise 2.56: Differentiating exponentiation](#exercise-2-dot-56-differentiating-exponentiation)), and install it in
    this data-directed system.


#### <span class="section-num">3.83.4</span> Answer B &amp; C version 1 {#answer-b-and-c-version-1}

Here's my first solution, which is functional, but not at all idiomatic like the textbook's examples of such a system.

<a id="code-snippet--deriv-datadriven"></a>
```scheme { linenos=true, linenostart=1 }
(define (variable? x) (symbol? x))
(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))
(define (operator exp) (car exp))
(define (operands exp) (cdr exp))
;; old ^^ vv new
(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        (else ((get 'deriv (operator exp))
               (operands exp) var))))
;; vv old
(define (addend s) (car s)) ;; these and similar procedures
(define (augend s) (cadr s));; modified for 2-item lists of operands
(define (multiplier p) (car p))
(define (multiplicand p) (cadr p))
(define (make-sum a1 a2)
  (cond ((=number? a1 0) a2)
        ((=number? a2 0) a1)
        ((and (number? a1) (number? a2))
         (+ a1 a2))
        (else (list '+ a1 a2))))
(define (=number? exp num)
  (and (number? exp) (= exp num)))
(define (make-product m1 m2)
  (cond ((or (=number? m1 0) (=number? m2 0)) 0)
        ((=number? m1 1) m2)
        ((=number? m2 1) m1)
        ((and (number? m1) (number? m2)) (* m1 m2))
        (else (list '* m1 m2))))
(define (base e) (car e))
(define (exponent e) (cadr e))
(define (make-exponentiation b e)
  (cond ((=number? b 1) 1)
        ((=number? e 0) 1)
        ((=number? e 1) b)
        ((and (number? b) (number? e)) (expt b e))
        (else (list '** b e))))
;; new table-entered functions
(put 'deriv '+
     (lambda (ops var)
       (make-sum (deriv (addend ops) var)
                 (deriv (augend ops) var))))
(put 'deriv '*
     (lambda (ops var)
       (make-sum (make-product
                  (multiplier ops)
                  (deriv (multiplicand ops) var))
                 (make-product
                  (deriv (multiplier ops) var)
                  (multiplicand ops)))))
(put 'deriv '**
     (lambda (ops var)
         (make-product
          (make-product
           (exponent ops)
           (make-exponentiation (base ops)
                                (make-sum (exponent ops) -1)))
          (deriv (base ops) var))))
```

```scheme
<<op-table>>
<<deriv-datadriven>>
(load "mattcheck2.scm")
(mattcheck "deriv: basic addition"
           (deriv '(+ x 3) 'x)
           1)
(mattcheck "deriv: basic multiplication"
           (deriv '(* x y) 'x)
           'y)

(mattcheck "deriv: exponentiation 1"
           (deriv (make-exponentiation 'a 5) 'a)
           '(* 5 (** a 4)))
(mattcheck "deriv: exponentiation 2"
           (deriv (make-exponentiation 'a 'b) 'a)
           '(* b (** a (+ b -1))))
```

```text
SUCCEED at deriv: basic addition
SUCCEED at deriv: basic multiplication
SUCCEED at deriv: exponentiation 1
SUCCEED at deriv: exponentiation 2
```


#### <span class="section-num">3.83.5</span> Answer B &amp; C version 2 {#answer-b-and-c-version-2}

<a id="code-snippet--deriv-datadriven2"></a>
```scheme { linenos=true, linenostart=1 }
(define (deriv exp var)
  (define (variable? x) (symbol? x))
  (define (same-variable? v1 v2)
    (and (variable? v1) (variable? v2) (eq? v1 v2)))
  (define (operator exp) (type-tag exp)) ;; use type tags
  (define (operands exp) (contents exp))

  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        (else ((get 'deriv (operator exp))
               (operands exp) var))))

(define (install-deriv-package choice)
  ;;shared procedures
  (define (=number? exp num)
    (and (number? exp) (= exp num)))
  (define (make-sum a1 a2)
    (cond ((=number? a1 0) a2)
          ((=number? a2 0) a1)
          ((and (number? a1) (number? a2))
           (+ a1 a2))
          (else (attach-tag '+ (list a1 a2)))))
  (define (make-product m1 m2)
    (cond ((or (=number? m1 0) (=number? m2 0)) 0)
          ((=number? m1 1) m2)
          ((=number? m2 1) m1)
          ((and (number? m1) (number? m2)) (* m1 m2))
          (else (attach-tag '* (list m1 m2)))))
  (define (make-exponentiation b e)
    (cond ((=number? b 1) 1)
          ((=number? e 0) 1)
          ((=number? e 1) b)
          ((and (number? b) (number? e)) (expt b e))
          (else (attach-tag '** (list b e)))))

  ;; packages
  (define (install-sum-package)
    (define (addend s) (car s))
    (define (augend s) (cadr s))
    (put 'deriv '+
         (lambda (ops var)
           (make-sum (deriv (addend ops) var)
                     (deriv (augend ops) var)))))

  (define (install-mult-package)
    (define (multiplier p) (car p))
    (define (multiplicand p) (cadr p))
    (put 'deriv '*
         (lambda (ops var)
           (make-sum (make-product
                      (multiplier ops)
                      (deriv (multiplicand ops) var))
                     (make-product
                      (deriv (multiplier ops) var)
                      (multiplicand ops))))))
  (define (install-exp-package)
    (define (base e) (car e))
    (define (exponent e) (cadr e))
    (put 'deriv '**
         (lambda (ops var)
           (make-product
            (make-product
             (exponent ops)
             (make-exponentiation (base ops)
                                  (make-sum (exponent ops)
                                            -1)))
            (deriv (base ops) var)))))

  ;;body
  (cond ((eqv? choice 'sum)
         (install-sum-package))
        ((eqv? choice 'mult)
         (install-mult-package))
        ((eqv? choice 'exp)
         (install-exp-package))))
```

```scheme
<<op-table>>
<<type-tagging>>
<<deriv-datadriven2>>
(load "mattcheck2.scm")
(install-deriv-package 'sum)
(install-deriv-package 'mult)
(install-deriv-package 'exp)
(mattcheck "deriv: basic addition"
           (deriv '(+ x 3) 'x)
           1)
(mattcheck "deriv: basic multiplication"
           (deriv '(* x y) 'x)
           'y)

(mattcheck "deriv: exponentiation 1"
           (deriv '(** a 5) 'a) ;; no more external access
           '(* 5 (** a 4)))
(mattcheck "deriv: exponentiation 2"
           (deriv '(** a b) 'a)
           '(* b (** a (+ b -1))))
```

```text
SUCCEED at deriv: basic addition
SUCCEED at deriv: basic multiplication
SUCCEED at deriv: exponentiation 1
SUCCEED at deriv: exponentiation 2
```

It's notable that Scheme doesn't let you access the sub-definitions inside
definitions, so I had to change my tests above. It makes me miss the dot
notation that future languages would use for accessing children of objects. It
also makes debugging processes less informative, not showing entries in the
<span class="inline-src language-scheme" data-lang="scheme">`,trace foo`</span> system call.


#### <span class="section-num">3.83.6</span> Question D {#question-d}

In this simple algebraic manipulator the type of an expression is the algebraic
operator that binds it together. Suppose, however, we indexed the procedures in
the opposite way, so that the dispatch line in <span class="inline-src language-scheme" data-lang="scheme">`deriv`</span> looked like

```scheme
((get (operator exp) 'deriv)
 (operands exp) var)
```

What corresponding changes to the derivative system are required?


#### <span class="section-num">3.83.7</span> Answer D {#answer-d}

Besides the change given in the example above, all the <span class="inline-src language-scheme" data-lang="scheme">`put`</span> calls would need their arguments switched.


### <span class="section-num">3.84</span> Exercise 2.74: Multi-division record storage {#exercise-2-dot-74-multi-division-record-storage}


#### <span class="section-num">3.84.1</span> Questions ABC {#questions-abc}

Insatiable Enterprises, Inc., is a highly decentralized conglomerate company
consisting of a large number of independent divisions located all over the
world. The company's computer facilities have just been interconnected by means
of a clever network-interfacing scheme that makes the entire network appear to
any user to be a single computer. Insatiable's president, in her first attempt
to exploit the ability of the network to extract administrative information from
division files, is dismayed to discover that, although all the division files
have been implemented as data structures in Scheme, the particular data
structure used varies from division to division. A meeting of division managers
is hastily called to search for a strategy to integrate the files that will
satisfy headquarters' needs while preserving the existing autonomy of the
divisions.

Show how such a strategy can be implemented with data-directed programming. As
an example, suppose that each division's personnel records consist of a single
file, which contains a set of records keyed on employees' names. The structure
of the set varies from division to division. Furthermore, each employee's record
is itself a set (structured differently from division to division) that contains
information keyed under identifiers such as <span class="inline-src language-scheme" data-lang="scheme">`address`</span> and
<span class="inline-src language-scheme" data-lang="scheme">`salary`</span>. In particular:

1.  Implement for headquarters a <span class="inline-src language-scheme" data-lang="scheme">`get-record`</span> procedure that retrieves
    a specified employee's record from a specified personnel file. The procedure
    should be applicable to any division's file. Explain how the individual
    divisions' files should be structured. In particular, what type information
    must be supplied?

2.  Implement for headquarters a <span class="inline-src language-scheme" data-lang="scheme">`get-salary`</span> procedure that returns
    the salary information from a given employee's record from any division's
    personnel file. How should the record be structured in order to make this
    operation work?

3.  Implement for headquarters a <span class="inline-src language-scheme" data-lang="scheme">`find-employee-record`</span> procedure. This
    should search all the divisions' files for the record of a given employee and
    return the record. Assume that this procedure takes as arguments an
    employee's name and a list of all the divisions' files.


#### <span class="section-num">3.84.2</span> Answers ABC {#answers-abc}

Let's talk assumptions:

-   Assume every division has one file
-   Assume HQ wants a consistent schema returned

<!--listend-->

<a id="code-snippet--insatiable"></a>
```scheme { linenos=true, linenostart=1 }
<<make-tree>>
<<make-record>>
<<op-table>>
(define (find x ll)
  (define (iter ll) ;; aka SRFI-1 'find'
    (cond ((null? ll)
           #f)
          ((equal? id (employee-id-east (car ll)))
           (car ll))
          (else (iter (cdr ll)))))
  (iter ll))

;; East: records as named cdr aliases
(define (install-east-package)
  (define (make-employee-east id salary)
    (cons id (/ salary 1000))) ;; East keeps salary in thousands
  (define (employee-id-east record)
    (car record))
  (define (employee-salary-east record)
    (* (cdr record) 1000))
  (define East-Employee-List
    (list (make-employee-east 101 37000) ; bob
          (make-employee-east 102 48000) ; linda
          (make-employee-east 103 29000) ; john
          ))
  (define (find-employee-east id)
    (find id East-Employee-List))
  (put 'employee-record 'East
       (lambda (id)
         (let ((e (find-employee-east id)))
           (if e
               (list (list 'id id)
                     (list (employee-salary-east e)))
               #f))))
  (put 'employee-salary 'East
       (lambda(id)
         (employee-salary-east (find-employee-east id)))))

;; records as lookup trees (Ex 2.66)
(define (install-west-package)
  (define (maketree . args)
    (apply list->tree args))
  (define (make-employee-west id name salary)
    (make-record 'id
                 (maketree (make-record 'name name)
                           (make-record 'salary salary))))
  (define West-Record-File
    (maketree (make-employee-west 201 "James" 55000)
              (make-employee-west 202 "Joy" 45000)
              (make-employee-west 203 "Richard" 73000)))
  (define (employee-west id)
    (lookup id West-Record-File))
  (define (employee-attrib-west attrib record)
    (lookup attrib record))
  (put 'employee-record 'West
       (lambda(id)
         (let ((e (employee-west id)))
           (if e
               (list (list 'id id)
                     (list 'name (employee-attrib-west 'name e))
                     (list 'salary (employee-attrib-west 'salary e)))
               #f))))
  (put 'employee-salary 'West
       (lambda(id)
         (employee-attrib-west 'salary
                               (employee-west id)))))

;; South: records as lambdas
(define (install-south-package)
  (define (make-employee-south id name salary)
    (lambda(value)
      (cond ((eqv? 'id) id)
            ((eqv? 'name) name)
            ((eqv? 'salary) (* 1000
                               (/ salary 1000))))))
  (define South-Employee-File
    (list (make-employee-south 301 "Jacquelyn" 49000)
          (make-employee-south 302 "Mazie" 66000)))
  (define (find-employee-south id)
    (define (iter ll)
      (cond ((null? ll)
             #f)
            ((equal? id ((car ll) 'id))
             (car ll))
            (else (iter (cdr ll)))))
    (iter South-Employee-File))

  (put 'employee-record 'West
       (lambda(id)
         (let ((e (find-employee-south id)))
           (if e
               (list (list 'id id)
                     (list 'name (e 'id))
                     (list 'salary (e 'salary)))
               #f))))
  (put 'employee-salary 'South
       (lambda(id)
         ((find-employee-west id) 'salary))))

;; HQ record fetcher
(define (get-record employee-id division)
  ((get 'employee-record division)
   employee-id))

;; HQ's salary fetcher
(define (get-salary employee-id division)
  ((get 'employee-salary division)
   employee-id))

;; HQ's employee finder
;; problem asks for "list of files" but since we're working with
;; differently-structured files it must need the procs as well
;; and there's one file per division
(define (find-employee-record id list-of-divisions)
  (if (null? list-of-divisions)
      #f
      (let ((result (get-record id (car list-of-divisions))))
        (if result
            result
            (find-employee-record (cdr list-of-divisions))))))
```

In retrospect I should have designed it so each file had a type tag for the division, methods took a file, and dispatch was made on the file's tag. This makes more sense in a real-world context.


#### <span class="section-num">3.84.3</span> Question D {#question-d}

When Insatiable takes over a new company, what changes must be made in order to
incorporate the new personnel information into the central system?


#### <span class="section-num">3.84.4</span> Answer D {#answer-d}

The new division must provide appropriate methods for <span class="inline-src language-scheme" data-lang="scheme">`get-record`</span> and
<span class="inline-src language-scheme" data-lang="scheme">`get-salary`</span> to use.


### <span class="section-num">3.85</span> 2.4.3: Data-directed and message-passing programs {#2-dot-4-dot-3-data-directed-and-message-passing-programs}

Altogether the book has introduced 3 ways to organize functions and data types:

1.  Generic operations with explicit dispatch: functions which each include
    <span class="inline-src language-scheme" data-lang="scheme">`case`</span> statements to dispatch depending on type of data provided.
    Bulk of the book so far.
2.  Data-directed style: given a tagged object and a desired operation, lookup
    what function to call.
3.  Message-passing style: package operations with their appropriate data
    objects, then fetch those operations from the object.


### <span class="section-num">3.86</span> Exercise 2.75: Message-passing styled imaginary numbers {#exercise-2-dot-75-message-passing-styled-imaginary-numbers}


#### <span class="section-num">3.86.1</span> Question {#question}

Implement the constructor <span class="inline-src language-scheme" data-lang="scheme">`make-from-mag-ang`</span> in message-passing
style. This procedure should be analogous to the <span class="inline-src language-scheme" data-lang="scheme">`make-from-real-imag`</span>
procedure given above.


#### <span class="section-num">3.86.2</span> Answer {#answer}

```scheme { linenos=true, linenostart=1 }
(define (make-from-mag-ang r a)
  (define (dispatch op)
    (cond ((eq? op 'magnitude) r)
          ((eq? op 'angle) a)
          ((eq? op 'real-part)
           (* r (cos a)))
          ((eq? op 'imag-part)
           (* r (sin a)))
          (else (error "Unknown op: MAKE-FROM-MAG-ANG" op))))

  dispatch)
```


### <span class="section-num">3.87</span> Exercise 2.76: comparing generic operation solutions {#exercise-2-dot-76-comparing-generic-operation-solutions}


#### <span class="section-num">3.87.1</span> Question {#question}

As a large system with generic operations evolves, new types of data objects or
new operations may be needed. For each of the three strategies---generic
operations with explicit dispatch, data-directed style, and
message-passing-style---describe the changes that must be made to a system in
order to add new types or new operations. Which organization would be most
appropriate for a system in which new types must often be added? Which would be
most appropriate for a system in which new operations must often be added?


#### <span class="section-num">3.87.2</span> Answer {#answer}

The most important part of this is where code _doesn't_ need to be changed.

Generic operations with explicit dispatch
: let you add new functions without
    changing existing code.

Message-passing style
: let you add new data types without modifying existing
    code.

Data-directed table-lookups
: let you add new data types _and_ functions
    without modifying existing code.

Let's be clear: this does not really save you much code, only the cognitive load
imposed when you have to enter old code to modify it. Let's say \\(T\\) is how
many data types you have, \\(O\\) is how many desired operations you have. All of
these are \\(O\times T\\), the key is where the code is being stored and what it
effects.

This issue of one change requiring traveling across your code to change dozens
of definitions is described as the [Expression Problem](http://c2.com/cgi/wiki?ExpressionProblem)[^fn:9]. Data-directed table lookups appear to
solve the problem, as discussed by [torinmr in this Scheme wiki solution](http://community.schemewiki.org/?sicp-ex-2.76)[^fn:10].

> "Old code should not stop working when you add new code." -Brian Harvey

Also of note is that this kind of decision-making between generic operations and
generic datatypes is commonplace in modern OO programming. I wonder what the old
heads from this time period think about OO as it stands today.


### <span class="section-num">3.88</span> Exercise 2.77: generic arithmetic package {#exercise-2-dot-77-generic-arithmetic-package}


#### <span class="section-num">3.88.1</span> Question {#question}

Louis Reasoner tries to evaluate the expression <span class="inline-src language-scheme" data-lang="scheme">`(magnitude z)`</span> where
<span class="inline-src language-scheme" data-lang="scheme">`z`</span> is the object shown in Figure 2.24. To his surprise, instead of
the answer 5 he gets an error message from <span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span>, saying
there is no method for the operation <span class="inline-src language-scheme" data-lang="scheme">`magnitude`</span> on the types
<span class="inline-src language-scheme" data-lang="scheme">`(complex)`</span>. He shows this interaction to Alyssa P. Hacker, who says
"The problem is that the complex-number selectors were never defined for
<span class="inline-src language-scheme" data-lang="scheme">`complex`</span> numbers, just for <span class="inline-src language-scheme" data-lang="scheme">`polar`</span> and
<span class="inline-src language-scheme" data-lang="scheme">`rectangular`</span> numbers. All you have to do to make this work is add the
following to the <span class="inline-src language-scheme" data-lang="scheme">`complex`</span> package":

```scheme { linenos=true, linenostart=1 }
(put 'real-part '(complex) real-part)
(put 'imag-part '(complex) imag-part)
(put 'magnitude '(complex) magnitude)
(put 'angle '(complex) angle)
```

Describe in detail why this works. As an example, trace through all the
procedures called in evaluating the expression <span class="inline-src language-scheme" data-lang="scheme">`(magnitude z)`</span> where
<span class="inline-src language-scheme" data-lang="scheme">`z`</span> is the object shown in Figure 2.24. In particular, how many times
is <span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span> invoked? What procedure is dispatched to in each
case?


#### <span class="section-num">3.88.2</span> Answer {#answer}

Surprised to find I never actually imported <span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span>.

<a id="code-snippet--apply-generic-table"></a>
```scheme { linenos=true, linenostart=1 }
<<op-table>>
(define (apply-generic op . args)
  (let ((type-tags (map type-tag args)))
    (let ((proc (get op type-tags)))
      (if proc
          (apply proc (map contents args))
          (error
            "No method for these types: APPLY-GENERIC"
            (list op type-tags))))))
```

<a id="code-snippet--generic-arithmetic"></a>
```scheme { linenos=true, linenostart=1 }
(define (square x) (* x 2))
(define (add x y) (apply-generic 'add x y))
(define (sub x y) (apply-generic 'sub x y))
(define (mul x y) (apply-generic 'mul x y))
(define (div x y) (apply-generic 'div x y))
(define (real-part z) (apply-generic 'real-part z))
(define (imag-part z) (apply-generic 'imag-part z))
(define (magnitude z) (apply-generic 'magnitude z))
(define (angle z) (apply-generic 'angle z))

(define (install-rational-package)
  ;; internal procedures
  (define (numer x) (car x))
  (define (denom x) (cdr x))
  (define (make-rat n d)
    (if (or (inexact? n)
            (inexact? d))
        (cons n d)
        (let ((g (gcd n d)))
          (cons (/ n g) (/ d g)))))
  (define (add-rat x y)
    (make-rat (+ (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))))
  (define (sub-rat x y)
    (make-rat (- (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))))
  (define (mul-rat x y)
    (make-rat (* (numer x) (numer y))
              (* (denom x) (denom y))))
  (define (div-rat x y)
    (make-rat (* (numer x) (denom y))
              (* (denom x) (numer y))))
  ;; interface to rest of the system
  (define (tag x) (attach-tag 'rational x))
  (put 'add '(rational rational)
       (lambda (x y) (tag (add-rat x y))))
  (put 'sub '(rational rational)
       (lambda (x y) (tag (sub-rat x y))))
  (put 'mul '(rational rational)
       (lambda (x y) (tag (mul-rat x y))))
  (put 'div '(rational rational)
       (lambda (x y) (tag (div-rat x y))))
  (put 'make 'rational
       (lambda (n d) (tag (make-rat n d))))
  (put 'numer '(rational) numer) ;; my addition
  (put 'denom '(rational) denom)
  'done)

;; for future use
(define (numer r)
  ((get 'numer '(rational))
   (contents r)))
(define (denom r)
  ((get 'denom '(rational))
   (contents r)))

(define (make-rational n d)
  ((get 'make 'rational) n d))

(define (install-rectangular-package)
  ;; internal procedures
  (define (real-part z) (car z))
  (define (imag-part z) (cdr z))
  (define (make-from-real-imag x y) (cons x y))
  (define (magnitude z)
    (sqrt (+ (square (real-part z))
             (square (imag-part z)))))
  (define (angle z)
    (atan (imag-part z) (real-part z)))
  (define (make-from-mag-ang r a)
    (cons (* r (cos a)) (* r (sin a))))
  ;; interface to the rest of the system
  (define (tag x) (attach-tag 'rectangular x))
  (put 'real-part '(rectangular) real-part)
  (put 'imag-part '(rectangular) imag-part)
  (put 'magnitude '(rectangular) magnitude)
  (put 'angle '(rectangular) angle)
  (put 'make-from-real-imag 'rectangular
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'rectangular
       (lambda (r a) (tag (make-from-mag-ang r a))))
  'done)

(define (install-polar-package)
  ;; internal procedures
  (define (magnitude z) (car z))
  (define (angle z) (cdr z))
  (define (make-from-mag-ang r a) (cons r a))
  (define (real-part z) (* (magnitude z) (cos (angle z))))
  (define (imag-part z) (* (magnitude z) (sin (angle z))))
  (define (make-from-real-imag x y)
    (cons (sqrt (+ (square x) (square y)))
          (atan y x)))
  ;; interface to the rest of the system
  (define (tag x) (attach-tag 'polar x))
  (put 'real-part '(polar) real-part)
  (put 'imag-part '(polar) imag-part)
  (put 'magnitude '(polar) magnitude)
  (put 'angle '(polar) angle)
  (put 'make-from-real-imag 'polar
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'polar
       (lambda (r a) (tag (make-from-mag-ang r a))))
  'done)

(define (install-complex-package)
  ;; imported procedures from rectangular and polar packages
  (define (make-from-real-imag x y)
    ((get 'make-from-real-imag 'rectangular) x y))
  (define (make-from-mag-ang r a)
    ((get 'make-from-mag-ang 'polar) r a))
  ;; internal procedures
  (define (add-complex z1 z2)
    (make-from-real-imag (+ (real-part z1) (real-part z2))
                         (+ (imag-part z1) (imag-part z2))))
  (define (sub-complex z1 z2)
    (make-from-real-imag (- (real-part z1) (real-part z2))
                         (- (imag-part z1) (imag-part z2))))
  (define (mul-complex z1 z2)
    (make-from-mag-ang (* (magnitude z1) (magnitude z2))
                       (+ (angle z1) (angle z2))))
  (define (div-complex z1 z2)
    (make-from-mag-ang (/ (magnitude z1) (magnitude z2))
                       (- (angle z1) (angle z2))))
  ;; interface to rest of the system
  (define (tag z) (attach-tag 'complex z))
  (put 'add '(complex complex)
       (lambda (z1 z2) (tag (add-complex z1 z2))))
  (put 'sub '(complex complex)
       (lambda (z1 z2) (tag (sub-complex z1 z2))))
  (put 'mul '(complex complex)
       (lambda (z1 z2) (tag (mul-complex z1 z2))))
  (put 'div '(complex complex)
       (lambda (z1 z2) (tag (div-complex z1 z2))))
  (put 'make-from-real-imag 'complex
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'complex
       (lambda (r a) (tag (make-from-mag-ang r a))))
  (put 'real-part '(complex) real-part)
  (put 'imag-part '(complex) imag-part)
  (put 'magnitude '(complex) magnitude)
  (put 'angle '(complex) angle))

(define (make-complex-from-real-imag x y)
  ((get 'make-from-real-imag 'complex) x y))
(define (make-complex-from-mag-ang r a)
  ((get 'make-from-mag-ang 'complex) r a))
```

<a id="code-snippet--scheme-number-package"></a>
```scheme { linenos=true, linenostart=1 }
(define (make-scheme-number n)
  ((get 'make 'scheme-number) n))
(define (install-scheme-number-package)
  (define (tag x) (attach-tag 'scheme-number x))
  (put 'add '(scheme-number scheme-number)
       (lambda (x y) (tag (+ x y))))
  (put 'sub '(scheme-number scheme-number)
       (lambda (x y) (tag (- x y))))
  (put 'mul '(scheme-number scheme-number)
       (lambda (x y) (tag (* x y))))
  (put 'div '(scheme-number scheme-number)
       (lambda (x y) (tag (/ x y))))
  (put 'make 'scheme-number (lambda (x) (tag x)))
  'done)
```

First I want to do sanity checks on the system.

```scheme
<<type-tagging>>
<<generic-arithmetic>>
<<scheme-number-package>>
<<echo>>
(load "mattcheck2.scm")

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)

<<gen-math-tests>>
```

```text
5+5 = (scheme-number . 10)
5-5 = (scheme-number . 0)
5*5 = (scheme-number . 25)
5/5 = (scheme-number . 1)
1/2 + 1/2 = (rational 1 . 1)
1/2 - 1/2 = (rational 0 . 1)
1/2 * 1/2 = (rational 1 . 4)
1/2 / 1/2 = (rational 1 . 1)
3+4i + 3+4i = (complex rectangular 6 . 8)
3+4i - 3+4i = (complex rectangular 0 . 0)
3+4i * 3+4i = (complex polar 14.0 . 1.8545904360032244)
3+4i / 3+4i = (complex polar 1.0 . 0.0)
3m+4deg + 3m+4deg = (complex rectangular -3.921861725181672 . -4.540814971847569)
3m+4deg - 3m+4deg = (complex rectangular 0.0 . 0.0)
3m+4deg * 3m+4deg = (complex polar 9 . 8)
3m+4deg / 3m+4deg = (complex polar 1 . 0)
```

Now let's run this:

```scheme
,trace (magnitude (make-complex-from-real-imag 3 4))
```

I've heavily pared down this from the real debug output.

```text
(make-complex-from-real-imag 3 4)
|  (get make-from-real-imag complex)
|  #<procedure 1ca8ad0 at <unknown port>:166:4 (x y)>
(_ 3 4)
|  (get make-from-real-imag rectangular)
|  #<procedure 1ca87e8 at <unknown port>:111:4 (x y)>
|  (_ 3 4)
|  (attach-tag rectangular (3 . 4))
|  (rectangular 3 . 4)
(attach-tag complex (rectangular 3 . 4))
(complex rectangular 3 . 4) <- now fully tagged
(magnitude (complex rectangular 3 . 4))
(apply-generic magnitude (complex rectangular 3 . 4)) <- identifying complex number
|  (map #<procedure type-tag (datum)> ((complex rectangular 3 . 4)))
|  (complex)
|  (get magnitude (complex))
|  #<procedure magnitude (z)>
|  (map #<procedure contents (datum)> ((complex rectangular 3 . 4)))
|  ((rectangular 3 . 4))
(_ #<procedure magnitude (z)> ((rectangular 3 . 4))) <- identifying rectangular number
(magnitude (rectangular 3 . 4))
(apply-generic magnitude (rectangular 3 . 4))
|  (map #<procedure type-tag (datum)> ((rectangular 3 . 4)))
|  (rectangular)
|  (get magnitude (rectangular))
|  #<procedure magnitude (z)>
|  (map #<procedure contents (datum)> ((rectangular 3 . 4)))
|  ((3 . 4))
(_ #<procedure magnitude (z)> ((3 . 4)))
(magnitude (3 . 4)) <- finally applying native operations
|  (square 3)
|  6
|  (square 4)
|  8
3.7416573867739413
```

The procedures in <span class="inline-src language-scheme" data-lang="scheme">`apply-generic 'complex`</span> are only proxies to other
procedures at the moment. However they could be useful for other procedures that
should need to know very little about the `complex` package.


### <span class="section-num">3.89</span> Exercise 2.78: native scheme numbers {#exercise-2-dot-78-native-scheme-numbers}


#### <span class="section-num">3.89.1</span> Question {#question}

The internal procedures in the <span class="inline-src language-scheme" data-lang="scheme">`scheme-number`</span> package are essentially
nothing more than calls to the primitive procedures <span class="inline-src language-scheme" data-lang="scheme">`+`</span>,
<span class="inline-src language-scheme" data-lang="scheme">`-`</span>, etc. It was not possible to use the primitives of the language
directly because our type-tag system requires that each data object have a type
attached to it. In fact, however, all Lisp implementations do have a type
system, which they use internally. Primitive predicates such as
<span class="inline-src language-scheme" data-lang="scheme">`symbol?`</span> and <span class="inline-src language-scheme" data-lang="scheme">`number?`</span> determine whether data objects have
particular types. Modify the definitions of <span class="inline-src language-scheme" data-lang="scheme">`type-tag`</span>,
<span class="inline-src language-scheme" data-lang="scheme">`contents`</span>, and <span class="inline-src language-scheme" data-lang="scheme">`attach-tag`</span> from 2.4.2 so that our
generic system takes advantage of Scheme's internal type system. That is to say,
the system should work as before except that ordinary numbers should be
represented simply as Scheme numbers rather than as pairs whose <span class="inline-src language-scheme" data-lang="scheme">`car`</span>
is the symbol <span class="inline-src language-scheme" data-lang="scheme">`scheme-number`</span>.


#### <span class="section-num">3.89.2</span> Answer {#answer}

<a id="code-snippet--smarter-type-tagging"></a>
```scheme { linenos=true, linenostart=1 }
(define (attach-tag type-tag contents)
  (if (number? contents)
      contents
      (cons type-tag contents)))

(define (type-tag datum)
  (cond ((pair? datum)
         (car datum))
        ((number? datum)
         'scheme-number)
        (else (error "Bad tagged datum:
              TYPE-TAG" datum))))

(define (contents datum)
  (cond ((pair? datum)
         (cdr datum))
        ((number? datum)
         datum)
        (else (error "Bad tagged datum:
              CONTENTS" datum))))
```

<a id="code-snippet--gen-math-tests"></a>
```scheme { linenos=true, linenostart=1 }
(define msn make-scheme-number)
(echo "5+5 =" (add (msn 5) (msn 5)))
(echo "5-5 =" (sub (msn 5) (msn 5)))
(echo "5*5 =" (mul (msn 5) (msn 5)))
(echo "5/5 =" (div (msn 5) (msn 5)))
(echo "1/2 + 1/2 =" (add (make-rational 1 2)
                         (make-rational 1 2)))
(echo "1/2 - 1/2 =" (sub (make-rational 1 2)
                         (make-rational 1 2)))
(echo "1/2 * 1/2 =" (mul (make-rational 1 2)
                         (make-rational 1 2)))
(echo "1/2 / 1/2 =" (div (make-rational 1 2)
                         (make-rational 1 2)))
(let ((r (make-complex-from-real-imag 3 4))
      (p (make-complex-from-mag-ang 3 4)))
  (echo "3+4i + 3+4i =" (add r r))
  (echo "3+4i - 3+4i =" (sub r r))
  (echo "3+4i * 3+4i =" (mul r r))
  (echo "3+4i / 3+4i =" (div r r))
  (echo "3m+4deg + 3m+4deg =" (add p p))
  (echo "3m+4deg - 3m+4deg =" (sub p p))
  (echo "3m+4deg * 3m+4deg =" (mul p p))
  (echo "3m+4deg / 3m+4deg =" (div p p)))
```

```scheme { linenos=true, linenostart=1 }
<<sqrt>>
<<square>>
<<echo>>
<<smarter-type-tagging>>
<<generic-arithmetic>>
<<scheme-number-package>>
(load "mattcheck2.scm")

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)

<<gen-math-tests>>
```

```text
5+5 = 10
5-5 = 0
5*5 = 25
5/5 = 1
1/2 + 1/2 = (rational 1 . 1)
1/2 - 1/2 = (rational 0 . 1)
1/2 * 1/2 = (rational 1 . 4)
1/2 / 1/2 = (rational 1 . 1)
3+4i + 3+4i = (complex rectangular 6 . 8)
3+4i - 3+4i = (complex rectangular 0 . 0)
3+4i * 3+4i = (complex polar 14.0 . 1.8545904360032244)
3+4i / 3+4i = (complex polar 1.0 . 0.0)
3m+4deg + 3m+4deg = (complex rectangular -3.921861725181672 . -4.540814971847569)
3m+4deg - 3m+4deg = (complex rectangular 0.0 . 0.0)
3m+4deg * 3m+4deg = (complex polar 9 . 8)
3m+4deg / 3m+4deg = (complex polar 1 . 0)
```

Confirmed by debugging that these calls aren't adding any tags.


### <span class="section-num">3.90</span> Exercise 2.79: generic equality {#exercise-2-dot-79-generic-equality}


#### <span class="section-num">3.90.1</span> Question {#question}

Define a generic equality predicate <span class="inline-src language-scheme" data-lang="scheme">`equ?`</span> that tests the equality of
two numbers, and install it in the generic arithmetic package. This operation
should work for ordinary numbers, rational numbers, and complex numbers.


#### <span class="section-num">3.90.2</span> Answer {#answer}

<a id="code-snippet--equ?"></a>
```scheme { linenos=true, linenostart=1 }
(define (equ? x y) (apply-generic 'equ? x y))
(define (install-equ?)
  (put 'equ? '(scheme-number scheme-number)
       (lambda(x y) (= x y)))
  (put 'equ? '(complex complex)
       (lambda(x y)
         (let ((t1 (type-tag x))
               (t2 (type-tag y)))
           (cond ((and (eqv? t1 'polar)
                       (eqv? t2 'polar))
                    (and (= (apply-generic 'magnitude x)
                            (apply-generic 'magnitude y))
                         (= (apply-generic 'angle x)
                            (apply-generic 'angle y))))
                 (else
                    (and (= (apply-generic 'real-part x)
                            (apply-generic 'real-part y))
                         (= (apply-generic 'imag-part x)
                            (apply-generic 'imag-part y))))))))
  (put 'equ? '(rational rational)
       (lambda(x y)
         (and (= ((get 'numer '(rational)) x)
                 ((get 'numer '(rational)) y))
              (= ((get 'denom '(rational)) x)
                 ((get 'denom '(rational)) y)))))
  (put 'equ? '(real real)
       (lambda(x y) (= x y))))
```

```scheme { linenos=true, linenostart=1 }
<<sqrt>>
<<square>>
<<echo>>
<<smarter-type-tagging>>
<<generic-arithmetic>>
<<scheme-number-package>>
<<equ?>>
(load "mattcheck2.scm")

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-equ?)

<<gen-math-tests>>

(mattcheck "basic equ? true" (equ? 5 5) #t)
(mattcheck "basic equ? false" (equ? 4 5) #f)
(mattcheck "rect equ? true" (equ? (make-complex-from-real-imag 2 3)
                                  (make-complex-from-real-imag 2 3)) #t)
(mattcheck "rect equ? false" (equ? (make-complex-from-real-imag 2 3)
                                   (make-complex-from-real-imag 2 5)) #f)
(mattcheck "polar equ? true" (equ? (make-complex-from-mag-ang 2 3)
                                   (make-complex-from-mag-ang 2 3)) #t)
(mattcheck "polar equ? false" (equ? (make-complex-from-mag-ang 2 3)
                                    (make-complex-from-mag-ang 2 5)) #f)
(mattcheck "rational equ? true" (equ? (make-rational 2 3)
                                      (make-rational 2 3)) #t)
(mattcheck "rational equ? false" (equ? (make-rational 2 3)
                                       (make-rational 2 5)) #f)
```

```text
<gen-math-tests output>
SUCCEED at basic equ? true
SUCCEED at basic equ? false
SUCCEED at rect equ? true
SUCCEED at rect equ? false
SUCCEED at polar equ? true
SUCCEED at polar equ? false
SUCCEED at rational equ? true
SUCCEED at rational equ? false
```


### <span class="section-num">3.91</span> Exercise 2.80: Generic testing for zero {#exercise-2-dot-80-generic-testing-for-zero}


#### <span class="section-num">3.91.1</span> Question {#question}

Define a generic predicate <span class="inline-src language-scheme" data-lang="scheme">`=zero?`</span> that tests if its argument is
zero, and install it in the generic arithmetic package. This operation should
work for ordinary numbers, rational numbers, and complex numbers.


#### <span class="section-num">3.91.2</span> Answer {#answer}

<a id="code-snippet--eqzero?"></a>
```scheme { linenos=true, linenostart=1 }
(define (=zero? x) (apply-generic '=zero? x))
(define (install-=zero?)
  (put '=zero? '(scheme-number)
       (lambda(x) (= x 0)))
  (put '=zero? '(complex)
       (lambda(x)
         (apply-generic '=zero? x)))
  (let ((magnitude (get 'magnitude '(polar))))
    (put '=zero? '(polar)
         (lambda(x)
           (= 0 (magnitude x)))))
  (let ((real-part (get 'real-part '(rectangular)))
        (imag-part (get 'imag-part '(rectangular))))
    (put '=zero? '(rectangular)
         (lambda(x)
           (and (= 0 (real-part x))
                (= 0 (imag-part x))))))
  (put '=zero? '(rational)
       (lambda(x)
         (or (= 0 ((get 'numer '(rational)) x))
             (= 0 ((get 'denom '(rational)) x))))))
```

```scheme { linenos=true, linenostart=1 }
<<sqrt>>
<<square>>
<<echo>>
<<smarter-type-tagging>>
<<generic-arithmetic>>
<<scheme-number-package>>
<<equ?>>
<<eqzero?>>
(load "mattcheck2.scm")

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-equ?)
(install-=zero?)
<<gen-math-tests>>

(mattcheck "basic =zero? true" (=zero? 0) #t)
(mattcheck "basic =zero? false" (=zero? 5) #f)
(mattcheck "rect =zero? true" (=zero? (make-complex-from-real-imag 0 0)) #t)
(mattcheck "rect =zero? false" (=zero? (make-complex-from-real-imag 2 5)) #f)
(mattcheck "polar =zero? true" (=zero? (make-complex-from-mag-ang 0 3)) #t)
(mattcheck "polar =zero? false" (=zero? (make-complex-from-mag-ang 2 0)) #f)
(mattcheck "rational =zero? true" (=zero? (make-rational 0 3)) #t)
(mattcheck "rational =zero? false" (=zero? (make-rational 2 3)) #f)
```

```text
<gen-math-tests output>

SUCCEED at basic =zero? true
SUCCEED at basic =zero? false
SUCCEED at rect =zero? true
SUCCEED at rect =zero? false
SUCCEED at polar =zero? true
SUCCEED at polar =zero? false
SUCCEED at rational =zero? true
SUCCEED at rational =zero? false
```


### <span class="section-num">3.92</span> 2.4.3: Combining Data of Different Types {#2-dot-4-dot-3-combining-data-of-different-types}

So far, the generic type system has had all types be completely independent.
However, all of these number systems have relations between each other,
specifically they can be converted in this order:

integers \rarrow rational \rarrow real \rarrow complex

Converting types to each other is called ****coercion****. With changes to
<span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span>, the system can automatically find compatible
coercions and use them. For example, \\(\frac{1}{3}\times3\\) is now possible.

<a id="code-snippet--apply-generic-coercive"></a>
```scheme { linenos=true, linenostart=1 }
(define (apply-generic op . args)
  (let ((type-tags (map type-tag args)))
    (let ((proc (get op type-tags)))
      (if proc
          (apply proc (map contents args))
          (if (= (length args) 2)
              (let ((type1 (car type-tags))
                    (type2 (cadr type-tags))
                    (a1 (car args))
                    (a2 (cadr args)))
                (let ((t1->t2
                       (get-coercion type1
                                     type2))
                      (t2->t1
                       (get-coercion type2
                                     type1)))
                  (cond (t1->t2
                         (apply-generic
                          op (t1->t2 a1) a2))
                        (t2->t1
                         (apply-generic
                          op a1 (t2->t1 a2)))
                        (else
                         (error
                          "No method for
                           these types"
                          (list
                           op
                           type-tags))))))
              (error
               "No method for these types"
               (list op type-tags)))))))
```

This assumes <span class="inline-src language-scheme" data-lang="scheme">`put-coercion`</span> and <span class="inline-src language-scheme" data-lang="scheme">`get-coercion`</span>.

<a id="code-snippet--type-table"></a>
```scheme { linenos=true, linenostart=1 }
(define type-table (make-hash-table))

(define (put-coercion type1 type2 f)
  (hash-set! type-table (cons type1 type2) f))
(define (get-coercion type1 type2)
  (hash-ref type-table (cons type1 type2)))
```

Authors observe that much work in programs using object-oriented languages is
around type coercion.

To write coercion procedures between every type would require \\(n^2\\) routines.
However, by keeping track of the relations between types (similarly to a tree or
graph), we can find paths through multiple coercion routines at once. i.e. we
can coerce type A to type D by coercion routines A-&gt;B, B-&gt;C, and C-&gt;D.


### <span class="section-num">3.93</span> Exercise 2.81: Louis' `apply-generic` {#exercise-2-dot-81-louis-apply-generic}

Louis Reasoner has noticed that <span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span> may try to coerce the
arguments to each other's type even if they already have the same type.
Therefore, he reasons, we need to put procedures in the coercion table to coerce
arguments of each type to their own type. For example, in addition to the
<span class="inline-src language-scheme" data-lang="scheme">`scheme-number->complex`</span> coercion shown above, he would do:

<a id="code-snippet--louis-scheme-num-coerce"></a>
```scheme { linenos=true, linenostart=1 }
(define (scheme-number->scheme-number n) n)
(define (complex->complex z) z)
(put-coercion 'scheme-number
              'scheme-number
              scheme-number->scheme-number)
(put-coercion 'complex 'complex complex->complex)
```


#### <span class="section-num">3.93.1</span> Question A {#question-a}

With Louis's coercion procedures installed, what happens if
<span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span> is called with two arguments of type
<span class="inline-src language-scheme" data-lang="scheme">`scheme-number`</span> or two arguments of type <span class="inline-src language-scheme" data-lang="scheme">`complex`</span> for an
operation that is not found in the table for those types? For example, assume
that we've defined a generic exponentiation operation:

<a id="code-snippet--exp-generic"></a>
```scheme { linenos=true, linenostart=1 }
(define (exp x y) (apply-generic 'exp x y))
```

and have put a procedure for exponentiation in the Scheme-number package but not
in any other package:

<a id="code-snippet--exp-gen-scheme-number"></a>
```scheme { linenos=true, linenostart=1 }
;; following added to Scheme-number package
(put 'exp '(scheme-number scheme-number)
     (lambda (x y) (tag (expt x y))))
     ; using primitive expt
```

What happens if we call <span class="inline-src language-scheme" data-lang="scheme">`exp`</span> with two complex numbers as arguments?


#### <span class="section-num">3.93.2</span> Answer A {#answer-a}

I think it will loop infinitely at the first nested <span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span>
call, seen in the block after <span class="inline-src language-scheme" data-lang="scheme">`t1->t2`</span>.


#### <span class="section-num">3.93.3</span> Question B {#question-b}

Is Louis correct that something had to be done about coercion with arguments of
the same type, or does <span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span> work correctly as is?


#### <span class="section-num">3.93.4</span> Answer B {#answer-b}

He is correct. The predicate which determines whether type coercion is attempted is only a check to if the requested procedure exists. This is a problem if, as seen in the last problem, the data types are compatible but the operation does not exist.


#### <span class="section-num">3.93.5</span> Question C {#question-c}

Modify <span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span> so that it doesn't try coercion if the two
arguments have the same type.


#### <span class="section-num">3.93.6</span> Answer C {#answer-c}

<a id="code-snippet--apply-generic-coerce-fixed"></a>
```scheme { linenos=true, linenostart=1 }
(define (apply-generic op . args)
  (let ((type-tags (map type-tag args)))
    (let ((proc (get op type-tags)))
      (if proc
          (apply proc (map contents args))
          (if (= (length args) 2)
              (let ((type1 (car type-tags))
                    (type2 (cadr type-tags))
                    (a1 (car args))
                    (a2 (cadr args)))
                (if (equal? type1 type2)
                  ;      'failgood ; proving correct operation
                        (error
                     "No method for this type"
                     (list op type-tags))
                    (let ((t1->t2
                           (get-coercion type1
                                         type2))
                          (t2->t1
                           (get-coercion type2
                                         type1)))
                      (cond (t1->t2
                             (apply-generic
                              op (t1->t2 a1) a2))
                            (t2->t1
                             (apply-generic
                              op a1 (t2->t1 a2)))
                            (else
                             (error
                              "No coercion method for these types"
                              (list
                               op
                               type-tags)))))))
              (error
               "No method for these types"
               (list op type-tags)))))))
```

<a id="code-snippet--basic-coercions"></a>
```scheme { linenos=true, linenostart=1 }
(put-coercion 'scheme-number 'rational
              (lambda(num)
                (make-rational num 1)))
<<eqnumber>>
(put-coercion 'rational 'complex
              (lambda(num)
                (make-complex-from-real-imag
                 (if (=number? 1 ((get 'denom '(rational)) num)) ; if rat could be integer
                     ((get 'numer '(rational)) num)       ; might as well simplify
                     num) 0)))
(put-coercion 'scheme-number 'complex
              (lambda(num)
                (make-complex-from-real-imag num 0)))
```

```scheme { linenos=true, linenostart=1 }
<<op-table>>
<<type-table>>
<<sqrt>>
<<square>>
<<echo>>
<<smarter-type-tagging>>
<<apply-generic-coerce-fixed>>
<<generic-arithmetic>>
<<scheme-number-package>>
<<equ?>>
<<eqzero?>>
(load "mattcheck2.scm")

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-equ?)
(install-=zero?)
<<gen-math-tests>>
<<basic-coercions>>

(mattcheck "good coercion test"
           (mul (make-rational 8 1)
                (make-rational 2 3))
           (mul 8 (make-rational 2 3)))
(mattcheck "bad coercion test"
           (apply-generic 'foobar 8 9)
           'failgood)
```

```text
SUCCEED at good coercion test
SUCCEED at bad coercion test
```


### <span class="section-num">3.94</span> Exercise 2.82: `apply-generic` with multiple coerced arguments {#exercise-2-dot-82-apply-generic-with-multiple-coerced-arguments}


#### <span class="section-num">3.94.1</span> Question {#question}

Show how to generalize <span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span> to handle coercion in the
general case of multiple arguments. One strategy is to attempt to coerce all the
arguments to the type of the first argument, then to the type of the second
argument, and so on. Give an example of a situation where this strategy (and
likewise the two-argument version given above) is not sufficiently general.
(Hint: Consider the case where there are some suitable mixed-type operations
present in the table that will not be tried.)


#### <span class="section-num">3.94.2</span> Answer {#answer}

These strategies are not sufficient when a path to the correct type will require
multiple coercions. Say you want to coerce arguments of types \\(ABCD\\). There
are coercions for \\( A \rightarrow B \\), \\( B \rightarrow C \\), \\( A \rightarrow
D \\), \\( C \rightarrow A \\) but _not_ \\( C \rightarrow D \\). If fed arguments of
types \\( ABCD \\), `apply-generic` will first coerce A to B, then B to C, and
then fail to find a coercion from C to D despite a path \\( C \rightarrow A
\rightarrow D \\) existing.

The other scenario is if there is a different type not included in the original
set which all types could convert to. For example if coercions to \\(E\\) exist
for all \\(ABCD\\), this would not be checked for.

Here's an implementation of the first strategy, which is a mess:

<a id="code-snippet--apply-generic-coerce-varargs-naive"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
;; Version of apply-generic that look for coercion functions
;; that work for the entire list
(define (apply-generic op . args)
  (define types (map type-tag args))
  (define (coercions-for-list ll target)
    (map (lambda(item) ; find coercion functions, if identical type return id func
           (let ((type (type-tag item)))
             (if (equal? type target)
                 (lambda(x)x)
                 (get-coercion type target))))
         args))
  ;; map-coercions: list of types -> list of tagged numbers.
  ;; find one type which all items can be coerced to,
  ;; then do all coercions and return as list
  (define (map-coercions ll)
    (if (null? ll) ;; exhausted possibilities
        (error
         "No method between all these types"
         (list op types))
        (let ((tries (coercions-for-list ll (car ll))))
          (if (every procedure? tries); if all coercions found, apply them
              (map (lambda(f x) (f x))
                   tries args)
              (map-coercions (cdr ll)))))) ; else keep trying
  (let ((proc (get op types)))
    (if proc
        (apply proc (map contents args))
        (let ((coerced (map-coercions types)))
          (apply (get op (map type-tag coerced))
                 (map contents coerced))))))
```

Testing my code:

```scheme { linenos=true, linenostart=1 }
<<op-table>>
<<type-table>>
<<sqrt>>
<<square>>
<<echo>>
<<smarter-type-tagging>>
<<apply-generic-coerce-varargs-naive>>
<<generic-arithmetic>>
<<scheme-number-package>>
<<equ?>>
<<eqzero?>>
(load "mattcheck2.scm")

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-equ?)
(install-=zero?)
<<gen-math-tests>>
<<basic-coercions>>

(mattcheck "num -> frac coercion test"
           (mul (make-rational 8 1)
                (make-rational 2 3))
           (mul 8 (make-rational 2 3)))
(mattcheck "num -> complex coercion test"
           (mul (make-complex-from-real-imag 8 0)
                (make-complex-from-real-imag 2 3))
           (mul 8 (make-complex-from-real-imag 2 3)))
```

```text
SUCCEED at num -> frac coercion test
SUCCEED at num -> complex coercion test
```

The strategy I implemented was "search the list and find one type which all
others coerce to." However, a superior strategy, [as implemented by danielpi on
GitHub](https://github.com/danielpi/SICP-Exercises/blob/46a6b38fd83faae21db239f40d913ff24062d2e6/Racket/Ex%202.82%20Generalized%20apply-generic.rkt#L269)[^fn:11]
is to iterate through the list's types, attempting every coercion that works,
and leaving unmodified every number that doesn't have one. In a linear "tower"
structure, the types will raise as far as is necessary -- assuming the types are
ordered lowest-to-highest.

Here's my attempt at a much simplified version.

<a id="code-snippet--apply-generic-coerce-less-naive"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
;; Version of apply-generic that tries to coerce each variable
;; into each type represebted in args.
(define (apply-generic op . args)
  (define types (map type-tag args))
  ;; map-coercion: type, list of tagged numbers -> list of tagged numbers
  ;; try to coerce all items in list to given type. If this isn't possible,
  ;; leave the item alone. Meant for fold.
  (define (map-coercion type-to-try items)
    (map (lambda(item) ; find and apply coercion functions,
           (let* ((coerce (get-coercion (type-tag item) type-to-try)))
             (cond ((or (not coerce)
                        (equal? (type-tag item) type-to-try))
                    item)
                   (else (coerce item)))))
         items))

  (let ((proc (get op types)))
    (if proc ; is this already doable?
        (apply proc (map contents args))
        ; if not, try type coercion
        (let ((coerced (fold map-coercion args types)))
          (apply (get op (map type-tag coerced))
                 (map contents coerced))))))
;; However this won't actually handle multiple arguments
```

```scheme { linenos=true, linenostart=1 }
<<op-table>>
<<type-table>>
<<sqrt>>
<<square>>
<<echo>>
<<smarter-type-tagging>>
<<apply-generic-coerce-less-naive>>
<<generic-arithmetic>>
<<scheme-number-package>>
<<equ?>>
<<eqzero?>>
(load "mattcheck2.scm")

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-equ?)
(install-=zero?)
<<gen-math-tests>>
<<basic-coercions>>

(mattcheck "num -> frac coercion test"
           (mul (make-rational 8 1)
                (make-rational 2 3))
           (mul 8 (make-rational 2 3)))
(mattcheck "num -> complex coercion test"
           (mul (make-complex-from-real-imag 8 0)
                (make-complex-from-real-imag 2 3))
           (mul 8 (make-complex-from-real-imag 2 3)))
(mattcheck "multiple arguments test"
           (false-if-exception (apply-generic 'add 8 (make-rational 2 3)
                                              (make-complex-from-real-imag 2 3))))
```

```text
SUCCEED at num -> frac coercion test
SUCCEED at num -> complex coercion test
FAIL at multiple arguments test
expected: "boolean true"
returned: "boolean false"
```


#### <span class="section-num">3.94.3</span> Answer with vararg support {#answer-with-vararg-support}

<a id="code-snippet--apply-generic-coerce-varargs"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
;; Version of apply-generic that tries to coerce each variable
;; into each type represebted in args.
(define (apply-generic op . args)
  (define types (map type-tag args))
  ;; map-coercion: type, list of tagged numbers -> list of tagged numbers
  ;; try to coerce all items in list to given type. If this isn't possible,
  ;; leave the item alone. Meant for fold.
  (define (map-coercion type-to-try items)
    (map (lambda(item) ; find and apply coercion functions,
           (let* ((coerce (get-coercion (type-tag item) type-to-try)))
             (cond ((or (not coerce)
                        (equal? (type-tag item) type-to-try))
                    item)
                   (else (coerce item)))))
         items))

  (let ((proc (get op types)))
    (if proc ; is this already doable?
        (apply proc (map contents args))
        ; if not, try type coercion
        (let ((coerced (fold map-coercion args types)))
          (if (< (length args) 3)
              ;; short args
              (apply (get op (map type-tag coerced))
                     (map contents coerced))
              ;; long args
              (reduce (lambda(elem previous)
                        (apply-generic op previous elem))
                      "ERROR" coerced))))))
```

```scheme { linenos=true, linenostart=1 }
<<op-table>>
<<type-table>>
<<sqrt>>
<<square>>
<<echo>>
<<smarter-type-tagging>>
<<apply-generic-coerce-varargs>>
<<generic-arithmetic>>
<<scheme-number-package>>
<<equ?>>
<<eqzero?>>
(load "mattcheck2.scm")

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-equ?)
(install-=zero?)
<<basic-coercions>>

(mattcheck "multiple arguments test"
           (apply-generic 'add 8 2 3)
           13)
(mattcheck "multiple arguments test 2"
           (apply-generic 'add (make-complex-from-real-imag 3 5)
                          (make-complex-from-real-imag 3 5)
                          (make-complex-from-real-imag 3 5))
           (cons 'complex
                 (cons 'rectangular
                       (cons 9 15))))
(mattcheck "multiple arguments coercion test"
           (false-if-exception
            (apply-generic 'add 8 (make-rational 2 3)
            (make-complex-from-real-imag 2 3))))
```

```text
<unknown-location>: warning: possibly unbound variable `fold'
<unknown-location>: warning: possibly unbound variable `reduce'
<unknown-location>: warning: possibly unbound variable `mattcheck'
SUCCEED at multiple arguments test
SUCCEED at multiple arguments test 2
FAIL at multiple arguments coercion test
expected: "boolean true"
returned: "boolean false"
```

The second test fails because of the rational being nested within the complex
number type. Taking this any further would involve reworking earlier procedures
(such as <span class="inline-src language-scheme" data-lang="scheme">`add-complex`</span>) and likely writing the future <span class="inline-src language-scheme" data-lang="scheme">`drop`</span>
procedure anyway.

So let's move on.


### <span class="section-num">3.95</span> Exercise 2.83: `raise` {#exercise-2-dot-83-raise}


#### <span class="section-num">3.95.1</span> Question {#question}

Suppose you are designing a generic arithmetic system for dealing with the tower
of types shown in Figure 2.25: integer, rational, real, complex. For each type
(except complex), design a procedure that raises objects of that type one level
in the tower. Show how to install a generic <span class="inline-src language-scheme" data-lang="scheme">`raise`</span> operation that
will work for each type (except complex).


#### <span class="section-num">3.95.2</span> Answer {#answer}

I'm again getting the feeling that the authors are asking for a theoretical
exercise, but one that I'm not satisfied leaving to theory. First we need a
structure to clarify the promotional possibilities of the tower. Then we need
coercions for each type which can be used when following the tower.

Something which I haven't defined before but will now is a <span class="inline-src language-scheme" data-lang="scheme">`'real`</span>
type. A real number is a superset of ints and rationals, but isn't fundamentally
different from these until a non-zero imaginary part is added. So my first
instinct was to make it an untagged type like <span class="inline-src language-scheme" data-lang="scheme">`'scheme-number`</span> that is
detected by <span class="inline-src language-scheme" data-lang="scheme">`type-tag`</span> with the builtin predicate <span class="inline-src language-scheme" data-lang="scheme">`real?`</span>.
However after thinking about it some more I think I'll just implement it in the
type table and have it pass its arguments off to the "real" types.

`Real numbers are a superset of integers, rationals, and **irrational** numbers,
which are not a part of this system yet. Also it turns out this module expected
a "real" number to be a decimal. -Matt`

<a id="code-snippet--eqnumber"></a>
```scheme { linenos=true, linenostart=1 }
(define (=number? x y)
  (and (number? x)
       (number? y)
       (= x y)))
(define (=int? x y)
  (and (number? x)
       (number? y)
       (integer? x)
       (integer? y)
       (= x y)))
```

<a id="code-snippet--basic-tower-coercions"></a>
```scheme { linenos=true, linenostart=1 }
(define tower
  '(scheme-number rational real complex))

(define (raise x)
  (let ((t1 (type-tag x)))
    (let recurse ((ll tower))
      (let ((t2 (car ll)))
        (cond ((null? (cdr ll)) #f)
              ((equal? t1 t2)
               ((get-coercion t1 (cadr ll)) (contents x)))
              (else (recurse (cdr ll))))))))

(put-coercion 'scheme-number 'rational
              (lambda(num)
                (make-rational num 1)))
<<eqnumber>>
(put-coercion 'rational 'real
              (lambda(num)
                (make-real
                 (exact->inexact (/ ((get 'numer '(rational)) num)
                                    ((get 'denom '(rational)) num))))))
(put-coercion 'real 'complex
              (lambda(num)
                (make-complex-from-real-imag
                 num 0)))
```

<a id="code-snippet--real-package"></a>
```scheme { linenos=true, linenostart=1 }
(define (install-real-package)
  ;; interface to rest of the system
  (define (tag x) (attach-tag 'real x))
  (put 'add '(real real)
       (lambda (x y) (tag (add x y))))
  (put 'sub '(real real)
       (lambda (x y) (tag (sub x y))))
  (put 'mul '(real real)
       (lambda (x y) (tag (mul x y))))
  (put 'div '(real real)
       (lambda (x y) (tag (div x y))))
  (put 'make 'real
       (lambda (r) (tag r)))
  'done)

(define (make-real r)
  ((get 'make 'real) r))
```

```scheme { linenos=true, linenostart=1 }
<<op-table>>
<<type-table>>
<<sqrt>>
<<square>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>> ;; time travel due to numer/denom fixes
<<apply-generic-coerce-less-naive>>
<<generic-arithmetic>>
<<scheme-number-package>>
<<real-package>>
<<equ?>>
<<eqzero?>>
<<real-package>>
<<basic-tower-coercions>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
<<gen-math-tests>>

(let recurse ((x 42))
  (let ((x2 (raise x)))
    (if (eqv? #f x2)
        (echo "Done")
        (begin (echo x2)
               (recurse x2)))))
```

```text
<unknown-location>: warning: possibly unbound variable `fold'
5+5 = 10
5-5 = 0
5*5 = 25
5/5 = 1
1/2 + 1/2 = (rational 1 . 1)
1/2 - 1/2 = (rational 0 . 1)
1/2 * 1/2 = (rational 1 . 4)
1/2 / 1/2 = (rational 1 . 1)
3+4i + 3+4i = (complex rectangular 6 . 8)
3+4i - 3+4i = (complex rectangular 0 . 0)
3+4i * 3+4i = (complex polar 14.0 . 1.8545904360032244)
3+4i / 3+4i = (complex polar 1.0 . 0.0)
3m+4deg + 3m+4deg = (complex rectangular -3.921861725181672 . -4.540814971847569)
3m+4deg - 3m+4deg = (complex rectangular 0.0 . 0.0)
3m+4deg * 3m+4deg = (complex polar 9 . 8)
3m+4deg / 3m+4deg = (complex polar 1 . 0)
(rational 42 . 1)
(real . 42.0)
(complex rectangular (real . 42.0) . 0)
Done
```


### <span class="section-num">3.96</span> Exercise 2.84: `append-generic` with `raise` {#exercise-2-dot-84-append-generic-with-raise}


#### <span class="section-num">3.96.1</span> Question {#question}

Using the <span class="inline-src language-scheme" data-lang="scheme">`raise`</span> operation of Exercise 2.83, modify the
<span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span> procedure so that it coerces its arguments to have the
same type by the method of successive raising, as discussed in this section. You
will need to devise a way to test which of two types is higher in the tower. Do
this in a manner that is \`\`compatible'' with the rest of the system and will not
lead to problems in adding new levels to the tower.


#### <span class="section-num">3.96.2</span> Answer {#answer}

First some (unnecessarily general) ways to find items in a list.

<a id="code-snippet--list-indices"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
;; list, items to find -> list of indices
;; example: (list-indices '(c b a) a b c z)
;;          (2 1 0 #f)
;; takes a list and items to find in the list
;; returns the index of each or #f
(define (list-indices lst . items)
  ;; folder: item, ongoing list of search results
  ;;             -> list of search results
  ;; List of results is a list of #f for unfound items
  ;; and indices for found ones. Take an item to be
  ;; searched for in lst and prior search results. Check
  ;; for each unfound item and if now found, mark index.
  (define (folder x counters)
    (cons (1+ (car counters))
          (let rec ((il items)
                    (cl (cdr counters)))
            (cons (if (and (equal? (car cl) #f)
                           (equal? x (car il)))
                      (car counters)
                      (car cl))
                  (if (null? (cdr il))
                      '()
                      (rec (cdr il) (cdr cl)))))))
  (if (= 1 (length items))
      ;; list-index is good enough
      (cons (list-index (lambda(x)
                          (equal? x (car items)))
                        lst)
            '())
      (cdr (fold folder (cons 0
                              (make-list (length items) #f))
                 lst))))
(define (max-index lst)
  (define (folder x result)
    (let ((index (car result))
          (max-i (cadr result))
          (max-value (caddr result)))
    (cons (1+ index)
          (if (> x max-value)
              (list (1+ index)
                    x)
              (list max-i
                    max-value)))))

  (cadr (fold folder (list -1 0 0)
               lst)))

;; My first definition for max-index was this under the
;; assumption it would be faster, because the former
;; makes variables for each fold. But they benchmarked
;; identically.
;(define (max-index lst)
;  (define index car)
;  (define max-i cadr)
;  (define max-value caddr)
;  (define (folder x result)
;    (cons (1+ (index result))
;          (if (> x (max-value result))
;              (list (1+ (index result))
;                    x)
;              (list (max-i result)
;                    (max-value result)))))
;
;  (max-i (fold folder (list -1 0 0)
;               lst)))
```

The new apply-generic and helper functions.

<a id="code-snippet--tower-predicates"></a>
```scheme { linenos=true, linenostart=1 }
;; type, type -> bool
;; Return true if type a is the lowest, false otherwise.
(define (is-earlier-in-tower? a b)
  (let ((result (list-indices tower a b)))
    (if (any (lambda(x) (eq? x #f)) result)
        (error "type missing from tower!" result)
        (apply < result))))
;; types -> type
;; Take types to check on tower. Finds the
;; highest-ranked and returns it.
(define (latest-in-tower . args)
  (let* ((types (if (and (= 1 (length args))
                         (list? (car args)))
                    (car args)
                    args))
         (result (apply list-indices
                        tower types)))
    (if (any (lambda(x) (eq? x #f)) result)
        (error "type missing from tower!"
               "args" args "types" types "result" result)
        (list-ref types (max-index result)))))
```

<a id="code-snippet--apply-generic-raise"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
;; Version of apply-generic that tries raising
;; its arguments.
(define (apply-generic op . args)
  (define types (map type-tag args))
  (define (map-raise highest-type item)
    (if (equal? (type-tag item) highest-type)
        item
        (let ((raised (raise item)))
          (if (not raised)
              (error "map-raise: could not raise:" item highest-type)
              (map-raise highest-type raised)))))

  (let ((proc (get op types)))
    (if proc ; is this already doable?
        (apply proc (map contents args))
                                        ; if not, try type coercion

        (let* ((highest-type (apply latest-in-tower types))
               (map-raise-prime (lambda(item)(map-raise highest-type item)))
               (raised (map map-raise-prime args)))
          (if (< (length args) 3)
              ;; short args
              (apply (get op (map type-tag raised))
                     (map contents raised))
              ;; long args
              (reduce (lambda(elem previous)
                        (apply-generic op previous elem))
                      "ERROR" raised))))))
```

I discovered that the prior method for avoiding tagging scheme-numbers also keeps you from tagging other things. Here's one that avoids the problem:

<a id="code-snippet--attach-tag-fixed"></a>
```scheme { linenos=true, linenostart=1 }
(define (attach-tag type-tag contents)
  (if (eqv? type-tag 'scheme-number)
      contents
      (cons type-tag contents)))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<square>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-raise>>
<<generic-arithmetic>>
<<scheme-number-package>>
<<real-package>>
<<equ?>>
<<eqzero?>>
<<real-package>>
<<basic-tower-coercions>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
<<gen-math-tests>>

(mattcheck "is-earlier-in-tower? true"
           (is-earlier-in-tower? 'scheme-number 'real))
(mattcheck "is-earlier-in-tower? false"
           #f (is-earlier-in-tower? 'complex 'scheme-number))
(mattcheck "max-index"
           (max-index (list 1 3 5 4 2 0))
           2)
(mattcheck "latest-in-tower"
           (apply latest-in-tower tower)
           'complex)
(mattcheck "latest-in-tower reverse"
           (apply latest-in-tower (reverse tower))
           'complex)
(mattcheck "latest-in-tower 2 args"
           (apply latest-in-tower '(scheme-number real))
           'real)
(mattcheck "latest-in-tower 1 arg"
           (apply latest-in-tower '(real))
           'real)
(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-complex-from-mag-ang 78 64))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
```

```text
5+5 = 10
5-5 = 0
5*5 = 25
5/5 = 1
1/2 + 1/2 = (rational 1 . 1)
1/2 - 1/2 = (rational 0 . 1)
1/2 * 1/2 = (rational 1 . 4)
1/2 / 1/2 = (rational 1 . 1)
3+4i + 3+4i = (complex rectangular 6 . 8)
3+4i - 3+4i = (complex rectangular 0 . 0)
3+4i * 3+4i = (complex polar 14.0 . 1.8545904360032244)
3+4i / 3+4i = (complex polar 1.0 . 0.0)
3m+4deg + 3m+4deg = (complex rectangular -3.921861725181672 . -4.540814971847569)
3m+4deg - 3m+4deg = (complex rectangular 0.0 . 0.0)
3m+4deg * 3m+4deg = (complex polar 9 . 8)
3m+4deg / 3m+4deg = (complex polar 1 . 0)
SUCCEED at is-earlier-in-tower? true
SUCCEED at is-earlier-in-tower? false
SUCCEED at max-index
SUCCEED at latest-in-tower
SUCCEED at latest-in-tower reverse
SUCCEED at latest-in-tower 2 args
SUCCEED at latest-in-tower 1 arg
SUCCEED at raise success
SUCCEED at raise fail
SUCCEED at apply-generic 1
SUCCEED at apply-generic 2
```

In this implementation, In order to add a new type, all that will be needed is
to replace the tower variable (the horrors of `setq`...) and add a coercion to
the respective type.

My first attempt at this exercise had a problem from <span class="inline-src language-scheme" data-lang="scheme">`'real`</span> and above,
where numbers passed to math primitives would fail, because of receiving numbers tagged
<span class="inline-src language-scheme" data-lang="scheme">`'real`</span>.

```scheme { linenos=true, linenostart=1 }
(add (make-real 2)
     (make-complex-from-mag-ang 3 5))
;; eventually reaches...
(add-complex (rectangular (real . 2) . 0)
             (polar 3 . 5))
;; which resulfs in...
```

```text
ice-9/boot-9.scm:1685:16: In procedure raise-exception:
In procedure +: Wrong type argument in position 1: (real . 2)
```

This issue was caused by not consuming the <span class="inline-src language-scheme" data-lang="scheme">`'real`</span> tag when being
coerced to a new type.

My code also had an issue where real numbers raised from rational couldn't be
operated on because they were always nested inside the real number. This is
solved by reducing the fraction to a decimal number, which fixes a few "bugs" in
the book's code as well.


### <span class="section-num">3.97</span> Exercise 2.85: `append-generic` with `drop` {#exercise-2-dot-85-append-generic-with-drop}


#### <span class="section-num">3.97.1</span> Question {#question}

This section mentioned a method for "simplifying" a data object by lowering it
in the tower of types as far as possible. Design a procedure <span class="inline-src language-scheme" data-lang="scheme">`drop`</span>
that accomplishes this for the tower described in Exercise 2.83. The key is to
decide, in some general way, whether an object can be lowered. For example, the
complex number \\(1.5 + 0i\\) can be lowered as far as <span class="inline-src language-scheme" data-lang="scheme">`real`</span>, the
complex number \\(1 + 0i\\) can be lowered as far as <span class="inline-src language-scheme" data-lang="scheme">`integer`</span>, and the
complex number \\(2 + 3i\\) cannot be lowered at all. Here is a plan for
determining whether an object can be lowered: Begin by defining a generic
operation <span class="inline-src language-scheme" data-lang="scheme">`project`</span> that "pushes" an object down in the tower. For
example, projecting a complex number would involve throwing away the imaginary
part. Then a number can be dropped if, when we <span class="inline-src language-scheme" data-lang="scheme">`project`</span> it and
<span class="inline-src language-scheme" data-lang="scheme">`raise`</span> the result back to the type we started with, we end up with
something equal to what we started with. Show how to implement this idea in
detail, by writing a <span class="inline-src language-scheme" data-lang="scheme">`drop`</span> procedure that drops an object as far as
possible. You will need to design the various projection operations[^fn:12] and install
<span class="inline-src language-scheme" data-lang="scheme">`project`</span> as a generic operation in the system. You will also need to
make use of a generic equality predicate, such as described in Exercise 2.79.
Finally, use <span class="inline-src language-scheme" data-lang="scheme">`drop`</span> to rewrite <span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span> from Exercise
2.84 so that it "simplifies" its answers.


#### <span class="section-num">3.97.2</span> Answer {#answer}

The question asks to install `project` as a generic operation in the system, and
I assume that means a `project` function in the ops table. At first I thought it
would be a function in the same way `raise` is, with coercions in the coercion
table. However upon consideration, it might be for the purpose of handling the type tags, as I encountered in previous exercises.

<a id="code-snippet--drop-project"></a>
```scheme { linenos=true, linenostart=1 }
(define (project x)
  (let ((t1 (type-tag x)))
    (let ((p (get 'project t1)))
      (if p
          (p (contents x))
          #f))))

(define (drop x)
  (if (not (pair? x))
      x
      (let ((projected (project x)))
        (cond ((eqv? projected #f)
               x)
              ((equ? x projected)
               (drop projected))
              (else x)))))

(put 'project 'rational
     (lambda(num)
       ((get 'numer '(rational))
        num)))
(put 'project 'real
     (lambda(num)
       (round num)))
(put 'project 'complex
     (lambda(num)
       (make-real
        ((get 'real-part '(complex)) num))))
```

<a id="code-snippet--apply-generic-drop"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
;; Version of apply-generic that tries to drop its type
;; when returning
(define (apply-generic op . args)
  (define types (map type-tag args))
  (define (map-raise highest-type item)
    (if (equal? (type-tag item) highest-type)
        item
        (let ((raised (raise item)))
          (if (not raised)
              (error "MAP-RAISE: could not raise" item highest-type)
              (map-raise highest-type raised)))))

  (drop
   (let ((proc (get op types)))
     (if proc ; is this already doable?
         (apply proc (map contents args))
                                        ; if not, try type coercion

         (let* ((highest-type (apply latest-in-tower types))
                (map-raise-prime (lambda(item)(map-raise highest-type item)))
                (raised (map map-raise-prime args)))
           (if (< (length raised) 3)
               ;; short args
               (let ((f (get op (map type-tag raised))))
                 (if (eqv? #f f)
                     (error "APPLY-GENERIC: could not find procedure for types" (map type-tag raised) raised)
                     (apply f (map contents raised))))
               ;; long args
               (reduce (lambda(elem previous)
                         (apply-generic op previous elem))
                       "ERROR" raised)))))))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<square>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<drop-project>>
<<apply-generic-drop>>
<<generic-arithmetic>>
<<scheme-number-package>>
<<real-package>>
<<equ?>>
<<eqzero?>>
<<real-package>>
<<basic-tower-coercions>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
<<gen-math-tests>>

(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-complex-from-mag-ang 78 64))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
(mattcheck "drop 1"
           (drop (make-complex-from-real-imag 5 0))
           5)
(mattcheck "drop 2"
           (drop (make-real 5))
           5)
(mattcheck "drop 3"
           (drop (make-rational 5 1))
           5)
```

```text
5+5 = 10
5-5 = 0
5*5 = 25
5/5 = 1
1/2 + 1/2 = 1
1/2 - 1/2 = 0
1/2 * 1/2 = (rational 1 . 4)
1/2 / 1/2 = 1
3+4i + 3+4i = (complex rectangular 6 . 8)
3+4i - 3+4i = 0
3+4i * 3+4i = (complex polar 14.0 . 1.8545904360032244)
3+4i / 3+4i = 1.0
3m+4deg + 3m+4deg = (complex rectangular -3.921861725181672 . -4.540814971847569)
3m+4deg - 3m+4deg = 0.0
3m+4deg * 3m+4deg = (complex polar 9 . 8)
3m+4deg / 3m+4deg = 1
SUCCEED at raise success
SUCCEED at raise fail
SUCCEED at apply-generic 1
SUCCEED at apply-generic 2
SUCCEED at drop 1
SUCCEED at drop 2
SUCCEED at drop 3
```

Compare the gen-math-tests output here with that of the [first run in Ex 2.77](#exercise-2-dot-78-native-scheme-numbers).
They are being correctly simplified.

After getting these solutions working, I have to say I'm really reaping what
I've sown. I've been very inconsistent with my tagging and untagging. Some
functions in the type system expected tagged numbers, others expect untagged
<span class="inline-src language-scheme" data-lang="scheme">`contents`</span>, which means those functions cannot be used in the same
places. I've had to run over the system and make sure I'm doing it at the right
time.


### <span class="section-num">3.98</span> Exercise 2.86: complex numbers with flexible types {#exercise-2-dot-86-complex-numbers-with-flexible-types}


#### <span class="section-num">3.98.1</span> Question {#question}

Suppose we want to handle complex numbers whose real parts, imaginary parts,
magnitudes, and angles can be either ordinary numbers, rational numbers, or
other numbers we might wish to add to the system. Describe and implement the
changes to the system needed to accommodate this. You will have to define
operations such as <span class="inline-src language-scheme" data-lang="scheme">`sine`</span> and <span class="inline-src language-scheme" data-lang="scheme">`cosine`</span> that are generic over
ordinary numbers and rational numbers.


#### <span class="section-num">3.98.2</span> Answer {#answer}

We'll need the internal procedures in the complex package to themselves be calls
to <span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span>, so that calculations with our new data types can
be handled.

In the real and complex parts of the tower, I had assumed that the return of
<span class="inline-src language-scheme" data-lang="scheme">`real-part`</span> would always be of tagged type <span class="inline-src language-scheme" data-lang="scheme">`'real`</span>. However,
in this version it may be either real or rational, so I'll want to adjust the
<span class="inline-src language-scheme" data-lang="scheme">`project`</span> procedures accordingly.

<a id="code-snippet--generic-arithmetic-complex-parts"></a>
```scheme { linenos=true, linenostart=1 }
(define (add x y) (apply-generic 'add x y))
(define (sub x y) (apply-generic 'sub x y))
(define (mul x y) (apply-generic 'mul x y))
(define (div x y) (apply-generic 'div x y))
(define (real-part z) (apply-generic 'real-part z))
(define (imag-part z) (apply-generic 'imag-part z))
(define (magnitude z) (apply-generic 'magnitude z))
(define (angle z) (apply-generic 'angle z))
;; Now we begin to change code for support
;; These will be named slightly different so the primitive
;; functions aren't shadowed
(define (square x) (mul x 2))
(define (sine x) (apply-generic 'sine x)) ;; (sin)
(define (cosine x) (apply-generic 'cosine x)); (cos)
(define (square-root x) (apply-generic 'square-root x));(sqrt)
(define (arctan x y) (apply-generic 'arctan x y));(atan)

(define (make-scheme-number n)
  ((get 'make 'scheme-number) n))
(define (install-scheme-number-package)
  (define (tag x) (attach-tag 'scheme-number x))
  (put 'add '(scheme-number scheme-number)
       (lambda (x y) (tag (+ x y))))
  (put 'sub '(scheme-number scheme-number)
       (lambda (x y) (tag (- x y))))
  (put 'mul '(scheme-number scheme-number)
       (lambda (x y) (tag (* x y))))
  (put 'div '(scheme-number scheme-number)
       (lambda (x y) (tag (/ x y))))
  (put 'sine '(scheme-number)
       (lambda (x) (tag (sin x))))
  (put 'cosine '(scheme-number)
       (lambda (x) (tag (cos x))))
  (put 'square-root '(scheme-number)
       (lambda (x) (tag (sqrt x))))
  (put 'arctan '(scheme-number scheme-number)
       (lambda (x y) (tag (atan x y))))
  (put 'make 'scheme-number (lambda (x) (tag x)))
  'done)

(define (install-rational-package)
  ;; internal procedures
  (define (numer x) (car x))
  (define (denom x) (cdr x))
  (define (make-rat n d)
    (if (or (inexact? n)
            (inexact? d))
        (cons n d)
        (let ((g (gcd n d)))
          (cons (/ n g) (/ d g)))))
  (define (add-rat x y)
    (make-rat (+ (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))))
  (define (sub-rat x y)
    (make-rat (- (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))))
  (define (mul-rat x y)
    (make-rat (* (numer x) (numer y))
              (* (denom x) (denom y))))
  (define (div-rat x y)
    (make-rat (* (numer x) (denom y))
              (* (denom x) (numer y))))
  ;; interface to rest of the system
  (define (tag x) (attach-tag 'rational x))
  (put 'add '(rational rational)
       (lambda (x y) (tag (add-rat x y))))
  (put 'sub '(rational rational)
       (lambda (x y) (tag (sub-rat x y))))
  (put 'mul '(rational rational)
       (lambda (x y) (tag (mul-rat x y))))
  (put 'div '(rational rational)
       (lambda (x y) (tag (div-rat x y))))
  (put 'make 'rational
       (lambda (n d) (tag (make-rat n d))))
  (put 'numer '(rational) numer)
  (put 'denom '(rational) denom)
  (put 'sine '(rational)
       (lambda(r) ((get 'sine '(scheme-number))
                   (/ (numer r) (denom r)))))
  (put 'cosine '(rational)
       (lambda(r) ((get 'cosine '(scheme-number))
                   (/ (numer r) (denom r)))))
  (put 'square-root '(rational)
       (lambda(r) ((get 'square-root '(scheme-number))
                   (/ (numer r) (denom r)))))
  (put 'arctan '(rational)
       (lambda(r s) ((get 'arctan '(scheme-number))
                     (/ (numer r) (denom r)) (/ (numer s) (denom s)))))
  'done)

;; for future use
(define (numer r)
  ((get 'numer '(rational))
   (contents r)))
(define (denom r)
  ((get 'denom '(rational))
   (contents r)))

(define (make-rational n d)
  ((get 'make 'rational) n d))

(define (install-rectangular-package)
  ;; internal procedures
  (define (real-part z) (car z))
  (define (imag-part z) (cdr z))
  (define (make-from-real-imag x y) (cons x y))
  (define (magnitude z)
    (square-root (add (square (real-part z))
                      (square (imag-part z)))))
  (define (angle z)
    (arctan (imag-part z) (real-part z)))
  (define (make-from-mag-ang r a)
    (cons (mul r (cosine a)) (mul r (sine a))))
  ;; interface to the rest of the system
  (define (tag x) (attach-tag 'rectangular x))
  (put 'real-part '(rectangular) real-part)
  (put 'imag-part '(rectangular) imag-part)
  (put 'magnitude '(rectangular) magnitude)
  (put 'angle '(rectangular) angle)
  (put 'make-from-real-imag 'rectangular
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'rectangular
       (lambda (r a) (tag (make-from-mag-ang r a))))
  'done)

(define (install-polar-package)
  ;; internal procedures
  (define (magnitude z) (car z))
  (define (angle z) (cdr z))
  (define (make-from-mag-ang r a) (cons r a))
  (define (real-part z) (mul (magnitude z) (cosine (angle z))))
  (define (imag-part z) (mul (magnitude z) (sine (angle z))))
  (define (make-from-real-imag x y)
    (cons (sqrt (+ (square x) (square y)))
          (atan y x)))
  ;; interface to the rest of the system
  (define (tag x) (attach-tag 'polar x))
  (put 'real-part '(polar) real-part)
  (put 'imag-part '(polar) imag-part)
  (put 'magnitude '(polar) magnitude)
  (put 'angle '(polar) angle)
  (put 'make-from-real-imag 'polar
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'polar
       (lambda (r a) (tag (make-from-mag-ang r a))))
  'done)

(define (install-complex-package)
  (define (make-from-real-imag x y)
    ((get 'make-from-real-imag 'rectangular) x y))
  (define (make-from-mag-ang r a)
    ((get 'make-from-mag-ang 'polar) r a))
  ;; let's make these generic
  (define (add-complex z1 z2)
    (make-from-real-imag (add (real-part z1) (real-part z2))
                         (add (imag-part z1) (imag-part z2))))
  (define (sub-complex z1 z2)
    (make-from-real-imag (sub (real-part z1) (real-part z2))
                         (sub (imag-part z1) (imag-part z2))))
  (define (mul-complex z1 z2)
    (make-from-mag-ang (mul (magnitude z1) (magnitude z2))
                       (add (angle z1) (angle z2))))
  (define (div-complex z1 z2)
    (make-from-mag-ang (div (magnitude z1) (magnitude z2))
                       (sub (angle z1) (angle z2))))
  ;; interface to rest of the system
  (define (tag z) (attach-tag 'complex z))
  (put 'add '(complex complex)
       (lambda (z1 z2) (tag (add-complex z1 z2))))
  (put 'sub '(complex complex)
       (lambda (z1 z2) (tag (sub-complex z1 z2))))
  (put 'mul '(complex complex)
       (lambda (z1 z2) (tag (mul-complex z1 z2))))
  (put 'div '(complex complex)
       (lambda (z1 z2) (tag (div-complex z1 z2))))
  (put 'make-from-real-imag 'complex
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'complex
       (lambda (r a) (tag (make-from-mag-ang r a))))
  (put 'real-part '(complex) real-part)
  (put 'imag-part '(complex) imag-part)
  (put 'magnitude '(complex) magnitude)
  (put 'angle '(complex) angle))

(define (make-complex-from-real-imag x y)
  ((get 'make-from-real-imag 'complex) x y))
(define (make-complex-from-mag-ang r a)
  ((get 'make-from-mag-ang 'complex) r a))

(define (project x)
  (let ((t1 (type-tag x)))
    (let ((p (get 'project t1)))
      (if p
          (p (contents x))
          #f))))

(define (drop x)
  (if (not (pair? x))
      x
      (let ((projected (project x)))
        (cond ((eqv? projected #f)
               x)
              ((equ? x projected)
               (drop projected))
              (else x)))))

(put 'project 'rational
     (lambda(num)
       ((get 'numer '(rational))
        num)))
(put 'project 'real
     (lambda(num)
       (round num)))
;; projecting a complex number may return something other than a single number
(put 'project 'complex
     (lambda(num)
       (let ((r ((get 'real-part '(complex)) num)))
         (if (number? (contents r))
             (make-real (contents r))
             r))))

;; equality testing with complex numbers also changes
(define (equ? x y) (apply-generic 'equ? x y))
(define (install-equ?)
  (put 'equ? '(scheme-number scheme-number)
       (lambda(x y) (= x y)))
  (put 'equ? '(complex complex)
       (lambda(x y)
         (let ((t1 (type-tag x))
               (t2 (type-tag y)))
           (cond ((and (eqv? t1 'polar)
                       (eqv? t2 'polar))
                  (and (equ? (apply-generic 'magnitude x)
                             (apply-generic 'magnitude y))
                       (equ? (apply-generic 'angle x)
                             (apply-generic 'angle y))))
                 (else
                  (and (equ? (apply-generic 'real-part x)
                             (apply-generic 'real-part y))
                       (equ? (apply-generic 'imag-part x)
                             (apply-generic 'imag-part y))))))))
  (put 'equ? '(rational rational)
       (lambda(x y)
         (and (= ((get 'numer '(rational)) x)
                 ((get 'numer '(rational)) y))
              (= ((get 'denom '(rational)) x)
                 ((get 'denom '(rational)) y)))))
  (put 'equ? '(real real)
       (lambda(x y) (= x y))))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-drop>>
<<generic-arithmetic-complex-parts>>
<<real-package>>
<<eqzero?>>
<<real-package>>
<<basic-tower-coercions>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
<<gen-math-tests>>

(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-complex-from-mag-ang 78 64))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
(mattcheck "drop 1"
           (drop (make-complex-from-real-imag 5 0))
           5)
(mattcheck "drop 2"
           (drop (make-real 5))
           5)
(mattcheck "drop 3"
           (drop (make-rational 5 1))
           5)
(mattcheck "complex with nested rational"
           (make-complex-from-real-imag 2 (make-rational 3 5))
           (cons 'complex (cons 'rectangular (cons 2 (cons 'rational (cons 3 5))))))
(mattcheck "math on complex with nested rational"
           (add (make-complex-from-real-imag 2 (make-rational 3 5))
                (make-complex-from-mag-ang (make-rational 3 5) 2))
           (cons 'complex (cons 'rectangular
                 (cons (cons 'rational (cons 8.751559490358574 5))
                       (cons 'rational (cons 28.639461402385223 25))))))
```

```text
(etc)
SUCCEED at complex with nested rational
SUCCEED at math on complex with nested rational
```


### <span class="section-num">3.99</span> 2.5: Symbolic Algebra {#2-dot-5-symbolic-algebra}

In this section, we implement an addition to the generic math system we have
been building by adding support for polynomials (with only addition and
multiplication involved) to start.

I'm going to split the polynomial package into two blocks so I can insert code
inside without needing to copy the whole block again.

<a id="code-snippet--polynomials-package-top"></a>
```scheme { linenos=true, linenostart=1 }
(define (install-polynomial-package)
  ;; internal procedures
  ;; representation of poly
  (define (make-poly variable term-list) (cons variable term-list))
  (define (variable p) (car p))
  (define (terms p) (cdr p)) ;; renamed from term-list since many procs happen
  (define (variable? x) (symbol? x))  ; to use "term-list" as an internal variable
  (define (same-variable? v1 v2)
    (and (variable? v1) (variable? v2) (eq? v1 v2)))
  ;; representation of terms and term lists
  (define (adjoin-term term term-list)
    (if (=zero? (coeff term))
        term-list
        (cons term term-list)))
  (define (the-empty-termlist) '())
  (define (first-term term-list) (car term-list))
  (define (rest-terms term-list) (cdr term-list))
  (define (empty-termlist? term-list) (null? term-list))
  (define (make-term order coeff) (list order coeff))
  (define (order term) (car term))
  (define (coeff term) (cadr term))
  (define (add-poly p1 p2)
    (if (same-variable? (variable p1) (variable p2))
        (make-poly (variable p1)
                   (add-terms (terms p1) (terms p2)))
        (error "Polys not in same var: ADD-POLY" (list p1 p2))))
  (define (mul-poly p1 p2)
    (if (same-variable? (variable p1) (variable p2))
        (make-poly (variable p1)
                   (mul-terms (terms p1) (terms p2)))
        (error "Polys not in same var: MUL-POLY" (list p1 p2))))
  (define (add-terms L1 L2)
    (cond ((empty-termlist? L1) L2)
          ((empty-termlist? L2) L1)
          (else
           (let ((t1 (first-term L1))
                 (t2 (first-term L2)))
             (cond ((> (order t1) (order t2))
                    (adjoin-term
                     t1 (add-terms (rest-terms L1) L2)))
                   ((< (order t1) (order t2))
                    (adjoin-term
                     t2 (add-terms L1 (rest-terms L2))))
                   (else
                    (adjoin-term
                     (make-term (order t1)
                                (add (coeff t1) (coeff t2)))
                     (add-terms (rest-terms L1)
                                (rest-terms L2)))))))))
  (define (mul-terms L1 L2)
    (if (empty-termlist? L1)
        (the-empty-termlist)
        (add-terms (mul-term-by-all-terms (first-term L1) L2)
                   (mul-terms (rest-terms L1) L2))))
  ;; interface to rest of the system
  (define (tag p) (attach-tag 'polynomial p))
  (put 'add '(polynomial polynomial)
       (lambda (p1 p2) (tag (add-poly p1 p2))))
  (put 'mul '(polynomial polynomial)
       (lambda (p1 p2) (tag (mul-poly p1 p2))))
  (put 'make 'polynomial
       (lambda (var terms) (tag (make-poly var terms))))

```

<a id="code-snippet--mul-term-by-all-terms"></a>
```scheme { linenos=true, linenostart=1 }
  (define (mul-term-by-all-terms t1 L)
    (if (empty-termlist? L)
        (the-empty-termlist)
        (let ((t2 (first-term L)))
          (adjoin-term
           (make-term (+ (order t1) (order t2))
                      (mul (coeff t1) (coeff t2)))
           (mul-term-by-all-terms t1 (rest-terms L))))))
```

<a id="code-snippet--polynomials-package-bottom"></a>
```scheme { linenos=true, linenostart=1 }
  'done)

(define (make-polynomial var terms)
  ((get 'make 'polynomial) var terms))
```


### <span class="section-num">3.100</span> Exercise 2.87: `=zero?` for polynomials {#exercise-2-dot-87-zero-for-polynomials}


#### <span class="section-num">3.100.1</span> Question {#question}

Install <span class="inline-src language-scheme" data-lang="scheme">`=zero?`</span> for polynomials in the generic arithmetic package.
This will allow <span class="inline-src language-scheme" data-lang="scheme">`adjoin-term`</span> to work for polynomials with
coefficients that are themselves polynomials.


#### <span class="section-num">3.100.2</span> Answer {#answer}

After testing, I see a problem. <span class="inline-src language-scheme" data-lang="scheme">`add`</span>ing nested polynomials works
fine. However, when a coefficient is a polynomial,
<span class="inline-src language-scheme" data-lang="scheme">`mul-term-by-all-terms`</span> will call <span class="inline-src language-scheme" data-lang="scheme">`mul`</span> with the types
<span class="inline-src language-scheme" data-lang="scheme">`'(polynomial scheme-number)`</span>. If I added polynomials to the type
tower and used <span class="inline-src language-scheme" data-lang="scheme">`raise`</span> to make it into a <span class="inline-src language-scheme" data-lang="scheme">`'(polynomial polynomial)`</span> call, I then need to specify a matching variable for the raised
number, which is not available in <span class="inline-src language-scheme" data-lang="scheme">`raise`</span>. It seems like I'll need to
modify the <span class="inline-src language-scheme" data-lang="scheme">`mul-term-by-all-terms`</span> procedure to detect when one item
is a polynomial and the other isn't, and turn the non-polynomial entry into a
polynomial before calling <span class="inline-src language-scheme" data-lang="scheme">`mul`</span>.

<a id="code-snippet--mul-term-by-all-terms-mine"></a>
```scheme { linenos=true, linenostart=1 }
(define (if-1st-poly-make-2nd-poly t1 t2)
  (if (and (eqv? 'polynomial (type-tag t1))
           (not (eqv? 'polynomial (type-tag t2))))
      (tag (make-poly (variable (contents t1)) (list (make-term 0 t2))))
      t2))
(define (mul-term-by-all-terms t1 L)
  (if (empty-termlist? L)
      (the-empty-termlist)
      (let* ((t2 (first-term L)) ;; If one coeff is a poly, make the other a poly
             (t1-coeff (if-1st-poly-make-2nd-poly (coeff t2) (coeff t1)))
             (t2-coeff (if-1st-poly-make-2nd-poly (coeff t1) (coeff t2))))

        (adjoin-term
         (make-term (+ (order t1) (order t2))
                    (mul t1-coeff t2-coeff))
         (mul-term-by-all-terms t1 (rest-terms L))))))
```

<a id="code-snippet--poly-terms-eqzero"></a>
```scheme { linenos=true, linenostart=1 }
  (define (terms-=zero? L)
    (or (empty-termlist? L)
        (and (=zero? (coeff (first-term L)))
             (terms-=zero? (rest-terms L)))))
  (define (poly-=zero? p)
    (terms-=zero? (terms p)))
  (put '=zero? '(polynomial) poly-=zero?)
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-drop>>
<<generic-arithmetic-complex-parts>>
<<real-package>>
<<eqzero?>>
<<real-package>>
<<basic-tower-coercions>>

<<polynomials-package-top>>
<<mul-term-by-all-terms-mine>>
<<poly-terms-eqzero>>
<<polynomials-package-bottom>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
(install-polynomial-package)
<<gen-math-tests>>

(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-complex-from-mag-ang 78 64))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
(mattcheck "drop 1"
           (drop (make-complex-from-real-imag 5 0))
           5)
(mattcheck "drop 2"
           (drop (make-real 5))
           5)
(mattcheck "drop 3"
           (drop (make-rational 5 1))
           5)
(mattcheck "complex with nested rational"
           (make-complex-from-real-imag 2 (make-rational 3 5))
           (cons 'complex (cons 'rectangular (cons 2 (cons 'rational (cons 3 5))))))
(mattcheck "math on complex with nested rational"
           (add (make-complex-from-real-imag 2 (make-rational 3 5))
                (make-complex-from-mag-ang (make-rational 3 5) 2))
           (cons 'complex (cons 'rectangular
                                (cons (cons 'rational (cons 8.751559490358574 5))
                                      (cons 'rational (cons 28.639461402385223 25))))))
(mattcheck "polynomial = zero"
           (=zero? (make-polynomial 'x '((0 0) (0 0)))))
(mattcheck "polynomial != zero" #f
           (=zero? (make-polynomial 'x '((0 0) (1 1)))))
(let ((p1 '((100 1)(2 2)(0 1)))
      (p2 (list (list 7 (make-polynomial 'x '((3 2)))))))
  (mattcheck "polynomial addition"
             (add (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (100 2)(2 4)(0 2)))
  (mattcheck "polynomial multiplication"
             (mul (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (200 1) (102 4) (100 2) (4 4) (2 4) (0 1)))
  (mattcheck "nested polynomial addition"
             (add (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (100 1) (7 (polynomial x (3 2))) (2 2) (0 1)))
  (mattcheck "nested polynomial mult"
             (mul (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (107 (polynomial x (3 2))) (9 (polynomial x (3 4))) (7 (polynomial x (3 2))))))
```

```text
(etc...)
SUCCEED at polynomial = zero
SUCCEED at polynomial != zero
SUCCEED at polynomial addition
SUCCEED at polynomial multiplication
SUCCEED at nested polynomial addition
SUCCEED at nested polynomial mult
```


### <span class="section-num">3.101</span> Exercise 2.88: negation, subtracting polynomials {#exercise-2-dot-88-negation-subtracting-polynomials}


#### <span class="section-num">3.101.1</span> Question {#question}

Extend the polynomial system to include subtraction of polynomials. (Hint: You
may find it helpful to define a generic negation operation.)


#### <span class="section-num">3.101.2</span> Answer {#answer}

<a id="code-snippet--generic-negation"></a>
```scheme { linenos=true, linenostart=1 }
(define (neg x)
  (apply-generic 'neg x))
(define (install-negation)
  (put 'neg '(scheme-number)
       (lambda(x) (- x)))
  (put 'neg '(rational)
       (lambda(R) (make-rational (neg ((get 'numer '(rational)) R))
                                 ((get 'denom '(rational)) R))))
  (put 'neg '(real) (get 'neg '(scheme-number)))
  (put 'neg '(rectangular)
       (lambda (C)
         (make-complex-from-real-imag (neg ((get 'real-part '(rectangular)) C))
                                      (neg ((get 'imag-part '(rectangular)) C)))))
  (put 'neg '(polar)
       (lambda (C)
         (make-complex-from-mag-ang (neg ((get 'magnitude '(polar)) C))
                                    ((get 'angle '(polar)) C))))
  (put 'neg '(complex)
       (lambda(C) (apply-generic 'neg C))))
```

<a id="code-snippet--polynomial-subtraction"></a>
```scheme { linenos=true, linenostart=1 }
    ;; inserted in install routine
    (define (neg-poly p)
    (make-poly (variable p)
                (map (lambda(t)
                        (make-term (order t) (neg (coeff t))))
                    (terms p))))
    (put 'neg '(polynomial)
        (lambda (p1) (tag (neg-poly p1))))
    (define (sub-poly p1 p2)
    (if (same-variable? (variable p1) (variable p2))
        (add-poly p1 (neg-poly p2))
        (error "Polys not in same var: SUB-POLY" (list p1 p2))))
    (put 'sub '(polynomial polynomial)
        (lambda (p1 p2) (tag (sub-poly p1 p2))))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-drop>>
<<generic-arithmetic-complex-parts>>
<<real-package>>
<<eqzero?>>
<<real-package>>
<<basic-tower-coercions>>

<<polynomials-package-top>>
<<mul-term-by-all-terms-mine>>
<<poly-terms-eqzero>>
<<polynomial-subtraction>>
<<polynomials-package-bottom>>

<<generic-negation>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
(install-polynomial-package)
(install-negation)

<<gen-math-tests>>

(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-complex-from-mag-ang 78 64))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
(mattcheck "drop 1"
           (drop (make-complex-from-real-imag 5 0))
           5)
(mattcheck "drop 2"
           (drop (make-real 5))
           5)
(mattcheck "drop 3"
           (drop (make-rational 5 1))
           5)
(mattcheck "complex with nested rational"
           (make-complex-from-real-imag 2 (make-rational 3 5))
           (cons 'complex (cons 'rectangular (cons 2 (cons 'rational (cons 3 5))))))
(mattcheck "math on complex with nested rational"
           (add (make-complex-from-real-imag 2 (make-rational 3 5))
                (make-complex-from-mag-ang (make-rational 3 5) 2))
           (cons 'complex (cons 'rectangular
                                (cons (cons 'rational (cons 8.751559490358574 5))
                                      (cons 'rational (cons 28.639461402385223 25))))))
(mattcheck "polynomial = zero"
           (=zero? (make-polynomial 'x '((0 0) (0 0)))))
(mattcheck "polynomial != zero" #f
           (=zero? (make-polynomial 'x '((0 0) (1 1)))))
(let ((p1 '((100 1)(2 2)(0 1)))
      (p2 (list (list 7 (make-polynomial 'x '((3 2)))))))
  (mattcheck "polynomial addition"
             (add (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (100 2)(2 4)(0 2)))
  (mattcheck "polynomial multiplication"
             (mul (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (200 1) (102 4) (100 2) (4 4) (2 4) (0 1)))
  (mattcheck "nested polynomial addition"
             (add (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (100 1) (7 (polynomial x (3 2))) (2 2) (0 1)))
  (mattcheck "nested polynomial mult"
             (mul (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (107 (polynomial x (3 2))) (9 (polynomial x (3 4))) (7 (polynomial x (3 2))))))
(mattcheck "negation scheme-number"
           (neg 5) -5)
(mattcheck "negation rational"
           (neg (make-rational 1 5))
           (make-rational -1 5))
(mattcheck "negation rectangular complex"
           (neg (make-complex-from-real-imag 3 7))
           (make-complex-from-real-imag -3 -7))
(mattcheck "negation polar complex"
           (neg (make-complex-from-mag-ang 3 7))
           (make-complex-from-mag-ang -3 7))

(let ((p1 '((100 1)(2 2)(0 1)))
      (p2 (list (list 7 (make-polynomial 'x '((3 2))))))
      (p3 '((100 1)(2 1)(0 3)))
      (p4 '((100 -1)(2 -2)(0 -1))))
  (mattcheck "negation polynomials"
             (neg (make-polynomial 'x p1))
             (make-polynomial 'x p4))
  (mattcheck "polynomial subtraction"
             (sub (make-polynomial 'x p1)
                  (make-polynomial 'x p3))
             '(polynomial x (2 1) (0 -2))))
```

```text
(etc...)
SUCCEED at negation scheme-number
SUCCEED at negation rational
SUCCEED at negation rectangular complex
SUCCEED at negation polar complex
SUCCEED at negation polynomials
SUCCEED at polynomial subtraction
```


### <span class="section-num">3.102</span> Exercise 2.89: an abstraction for dense polynomials {#exercise-2-dot-89-an-abstraction-for-dense-polynomials}


#### <span class="section-num">3.102.1</span> Question {#question}

Define procedures that implement the term-list representation described above as
appropriate for dense polynomials.


#### <span class="section-num">3.102.2</span> Answer {#answer}

At first I thought I needed to rewrite the `order` and `coeff` procedures. Then
I realized these are only called with one term, and thus don't have the term
list available, which means the order can't be learned. It's much simpler to
make a new `first-term` selector that gets the needed info and always returns
the sparse term format, so long as `adjoin-set` is modified so it will convert
back when adding to a sparse term list.

```scheme { linenos=true, linenostart=1 }
(define (sparse-termlist? term-list)
  (let ((t (car term-list)))
    (cond ((and (list? t)
                (number? (first t))
                (number? (second t))) #t)
          ((number? t) #f)
          (else (error "badly formed term: SPARSE-TERMLIST?" t term-list)))))
(define (make-sparse-term order coeff)
  (list order coeff))
(define (dense-first-term term-list)
  (make-term (car term-list)
             (1- (length term-list))))
(define (sparse-first-term term-list)
  (car term-list))
(define (first-term term-list)
  (if (sparse-termlist? term-list)
      (sparse-first-term term-list)
      (dense-first-term term-list)))
```


### <span class="section-num">3.103</span> Exercise 2.90: dense polynomials integrated into the system {#exercise-2-dot-90-dense-polynomials-integrated-into-the-system}


#### <span class="section-num">3.103.1</span> Question {#question}

Suppose we want to have a polynomial system that is efficient for both sparse
and dense polynomials. One way to do this is to allow both kinds of term-list
representations in our system. The situation is analogous to the complex-number
example of [2.4: Multiple Representations for Abstract Data](#2-dot-4-multiple-representations-for-abstract-data), where we allowed
both rectangular and polar representations. To do this we must distinguish
different types of term lists and make the operations on term lists generic.
Redesign the polynomial system to implement this generalization. This is a major
effort, not a local change.


#### <span class="section-num">3.103.2</span> Answer {#answer}

Although I was debating using tags to distinguish the two types, it occurs to me
they can be told apart just by checking the contents. A valid coefficient is
either a number or a list for a nested type. If the first item of the list is a
list whose `car` is a number and whose `cadr` is a number or list, assume it's
sparse. On the other hand, if the first item is a number, or list that doesn't
match that previous description, assume it's dense. This format would _not_ be
adequate if we had any potential nested types that happened to look similar, and
especially not if the term-lists were meant for external use.

The new implementations are abstracted such that average procedures using
<span class="inline-src language-scheme" data-lang="scheme">`first-term`</span>, <span class="inline-src language-scheme" data-lang="scheme">`rest-term`</span> and <span class="inline-src language-scheme" data-lang="scheme">`adjoin-term`</span> are
totally unaffected.

Whenever a procedure requests a `first-term`, a sparse representation is
returned (pair of <span class="inline-src language-scheme" data-lang="scheme">`(order coeff)`</span>). Then, when `adjoin-term` is run,
the list is appended-to appropriately whether it is sparse or dense. When
<span class="inline-src language-scheme" data-lang="scheme">`make-poly`</span> is run, the statistics of the term list are measured to
decide which implementation should be used. If there are more zero-terms than
\\(\frac{1}{2}\\) of the highest order in the term, the sparse implementation is
used.

<a id="code-snippet--polynomial-sparse-dense-top"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
(define (install-polynomial-package)
  ;; internal procedures
  ;; representation of poly
  (define (make-poly variable term-list)
    (cons variable
          (if (empty-termlist? term-list)
              term-list
              (cond ((and (sparse-termlist? term-list)
                          (not (should-be-sparse? term-list)))
                     (sparse-to-dense term-list))
                    ((and (not (sparse-termlist? term-list))
                          (should-be-sparse? term-list))
                     (dense-to-sparse term-list))
                    (else term-list)))))
  (define (variable p) (car p))
  (define (terms p) (cdr p))
  (define (variable? x) (symbol? x))
  (define (same-variable? v1 v2)
    (and (variable? v1) (variable? v2) (eq? v1 v2)))

  ;; representation of terms and term lists
  (define (sparse-termlist? term-list)
    (let ((t (car term-list)))
      (cond ((and (list? t) ;; looks like a sparse list
                  (number? (first t))
                  (or (list? (second t)) ;; or sparse with nested poly
                      (number? (second t)))) #t)
            ((or (number? t) ;; looks dense
                 (list? t)) #f) ;; or dense with a nested poly
            (else (error "badly formed term: SPARSE-TERMLIST?" t term-list)))))
  (define (should-be-sparse? term-list)
    ;; sparse or dense term-list -> bool
    ;; if more than half of term-list is zeroes, return true
    ;; reasoning:
    ;; - number of elements used for sparse list is (non-zero elements * 2)
    ;; - number of elements used for dense list is (highest order)
    (define (count-zeroes term-list)
      ;; term-list -> (highest order, zeroes)
      (let iter ((length 0)
                 (zeroes 0)
                 (TL (if (sparse-termlist? term-list)
                         (sparse-to-dense term-list)
                         term-list)))
        (if (empty-termlist? TL)
            (list zeroes length)
            (iter (1+ length)
                  (if (=zero? (car TL))
                      (1+ zeroes)
                      zeroes)
                  (cdr TL)))))
    (let ((stats (if (sparse-termlist? term-list) ;; do appropriate measurement
                     (list (- (1+ (order (sparse-first-term term-list)))
                              (length term-list))
                           (1+ (order (sparse-first-term term-list))))
                     (count-zeroes term-list))))
      (let ((zero-elements (first stats))
            (highest-order (second stats)))
        (> (/ zero-elements highest-order)
           (/ 1 2)))))
  (define (sparse-to-dense term-list)
    (let iter ((old-list (reverse term-list))
               (new-list (the-empty-termlist)))
      (if (empty-termlist? old-list)
          new-list
          (iter (rest-terms old-list)
                (adjoin-term-dense (sparse-first-term old-list)
                                   new-list)))))
  (define (dense-to-sparse term-list)
    (let iter ((old-list (reverse term-list))
               (old-order 0)
               (new-list (the-empty-termlist)))
      (if (empty-termlist? old-list)
          new-list
          (iter (rest-terms old-list)
                (1+ old-order)
                (adjoin-term-sparse (make-sparse-term old-order
                                                      (coeff (dense-first-term old-list)))
                                    new-list)))))
  (define (make-sparse-term order coeff)
    (list order coeff))
  (define (dense-termlist-order term-list)
    (1- (length term-list)))
  (define (dense-first-term term-list)
    (make-sparse-term (dense-termlist-order term-list)
                      (car term-list)))
  (define (sparse-first-term term-list)
    (car term-list))
  (define (first-term term-list)
    (if (sparse-termlist? term-list)
        (sparse-first-term term-list)
        (dense-first-term term-list)))
  (define (adjoin-term-sparse term term-list)
    (cons term term-list))
  (define (adjoin-term-dense term term-list)
    ;; if term is exactly 1 order above top of list, adjoin
    ;; if term is more than 1 order above, adjoin 0 and recurse
    (let ((top-order (dense-termlist-order term-list)))
      (cond ((= (1+ top-order) (order term))
             (cons (coeff term) term-list))
            ((<= top-order (order term))
             (adjoin-term-dense term (cons 0 term-list)))
            (else (error "term is lower order than top of list: ADJOIN-TERM-DENSE" term term-list top-order)))))

  ;; ;; I wrote the versions below which can insert into the middle of the list,
  ;; ;; before remembering that a footnote in the text excuses this.
  ;;
  ;; (define (adjoin-term-sparse term term-list)
  ;;   ;; if term is higher order, cons to list
  ;;   ;; if term is lower order than top of list, try to insert in the middle
  ;;   (let ((top-order (order (sparse-first-term term-list))))
  ;;     (cond ((<= (1+ top-order) (order term))
  ;;            (cons term term-list))
  ;;           (else (adjoin-term-sparse (sparse-first-term term-list)
  ;;                                     (adjoin-term-sparse term
  ;;                                                         (rest-terms term-list)))))))
  ;; (define (adjoin-term-dense term term-list)
  ;;   ;; if term is 1 order above top of list, adjoin
  ;;   ;; if term is more than 1 order above, adjoin 0 and recurse
  ;;   ;; if term is lower order than top of list, try to insert in the middle
  ;;   (let ((top-order (dense-termlist-order term-list)))
  ;;     (cond ((= (1+ top-order) (order term))
  ;;            (cons (coeff term) term-list))
  ;;           ((<= top-order (order term))
  ;;            (adjoin-term-dense term (cons 0 term-list)))
  ;;           (else (adjoin-term-dense (dense-first-term term-list)
  ;;                                    (adjoin-term-dense term
  ;;                                                       (rest-terms term-list)))))))

  (define (adjoin-term term term-list)
    (if (=zero? (coeff term))
        term-list
        (if (or (empty-termlist? term-list)
                (sparse-termlist? term-list))
            (adjoin-term-sparse term term-list)
            (adjoin-term-dense term term-list))))
  (define (the-empty-termlist) '())
  (define (rest-terms term-list) (cdr term-list))
  (define (empty-termlist? term-list) (null? term-list))
  (define (order term) (first term))
  (define (coeff term) (second term))
  (define (add-poly p1 p2)
    (if (same-variable? (variable p1) (variable p2))
        (make-poly (variable p1)
                   (add-terms (terms p1) (terms p2)))
        (error "Polys not in same var: ADD-POLY" (list p1 p2))))
  (define (mul-poly p1 p2)
    (if (same-variable? (variable p1) (variable p2))
        (make-poly (variable p1)
                   (mul-terms (terms p1) (terms p2)))
        (error "Polys not in same var: MUL-POLY" (list p1 p2))))
  (define (add-terms L1 L2)
    (cond ((empty-termlist? L1) L2)
          ((empty-termlist? L2) L1)
          (else
           (let ((t1 (first-term L1))
                 (t2 (first-term L2)))
             (cond ((> (order t1) (order t2))
                    (adjoin-term
                     t1 (add-terms (rest-terms L1) L2)))
                   ((< (order t1) (order t2))
                    (adjoin-term
                     t2 (add-terms L1 (rest-terms L2))))
                   (else
                    (adjoin-term
                     (make-sparse-term (order t1)
                                       (add (coeff t1) (coeff t2)))
                     (add-terms (rest-terms L1)
                                (rest-terms L2)))))))))
  (define (mul-terms L1 L2)
    (if (empty-termlist? L1)
        (the-empty-termlist)
        (add-terms (mul-term-by-all-terms (first-term L1) L2)
                   (mul-terms (rest-terms L1) L2))))

  ;; interface to rest of the system
  (define (tag p) (attach-tag 'polynomial p))
  (put 'add '(polynomial polynomial)
       (lambda (p1 p2) (tag (add-poly p1 p2))))
  (put 'mul '(polynomial polynomial)
       (lambda (p1 p2) (tag (mul-poly p1 p2))))
  (put 'make 'polynomial
       (lambda (var terms) (tag (make-poly var terms))))
  (define (if-1st-poly-make-2nd-poly t1 t2)
    (if (and (eqv? 'polynomial (type-tag t1))
             (not (eqv? 'polynomial (type-tag t2))))
        (tag (make-poly (variable (contents t1)) (list t2)))
        t2))
  (define (mul-term-by-all-terms t1 L)
    (if (empty-termlist? L)
        (the-empty-termlist)
        (let* ((t2 (first-term L)) ;; If one coeff is a poly, make the other a poly
               (t1-coeff (if-1st-poly-make-2nd-poly (coeff t2) (coeff t1)))
               (t2-coeff (if-1st-poly-make-2nd-poly (coeff t1) (coeff t2))))

          (adjoin-term
           (make-sparse-term (+ (order t1) (order t2))
                             (mul t1-coeff t2-coeff))
           (mul-term-by-all-terms t1 (rest-terms L))))))
  (define (terms-=zero? L)
    (or (empty-termlist? L)
        (and (=zero? (coeff (first-term L)))
             (terms-=zero? (rest-terms L)))))
  (define (poly-=zero? p)
    (terms-=zero? (terms p)))
  (put '=zero? '(polynomial) poly-=zero?)
  (define (neg-terms TL)
    (let ((negterm (if (sparse-termlist? TL)
                       (lambda(t)
                         (make-sparse-term (order t) (neg (coeff t))))
                       (lambda(t)
                         (neg (coeff t))))))
      (map negterm TL)))
  (define (sub-terms T1 T2)
    (add-terms T1 (neg-terms T2)))
  (define (neg-poly p)
    (make-poly (variable p)
               (neg-terms (terms p))))
  (put 'neg '(polynomial)
       (lambda (p1) (tag (neg-poly p1))))
  (define (sub-poly p1 p2)
    (add-poly p1 (neg-poly p2)))
  (put 'sub '(polynomial polynomial)
       (lambda (p1 p2) (tag (sub-poly p1 p2))))
```

<a id="code-snippet--polynomial-sparse-dense-bottom"></a>
```scheme { linenos=true, linenostart=1 }
  'done)
(define (make-polynomial var terms)
  ((get 'make 'polynomial) var terms))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-drop>>
<<generic-arithmetic-complex-parts>>
<<real-package>>
<<eqzero?>>
<<real-package>>
<<basic-tower-coercions>>

<<polynomial-sparse-dense-top>>
<<polynomial-sparse-dense-bottom>>

<<generic-negation>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
(install-polynomial-package)
(install-negation)

<<gen-math-tests>>

(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-complex-from-mag-ang 78 64))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
(mattcheck "drop 1"
           (drop (make-complex-from-real-imag 5 0))
           5)
(mattcheck "drop 2"
           (drop (make-real 5))
           5)
(mattcheck "drop 3"
           (drop (make-rational 5 1))
           5)
(mattcheck "complex with nested rational"
           (make-complex-from-real-imag 2 (make-rational 3 5))
           (cons 'complex (cons 'rectangular (cons 2 (cons 'rational (cons 3 5))))))
(mattcheck "math on complex with nested rational"
           (add (make-complex-from-real-imag 2 (make-rational 3 5))
                (make-complex-from-mag-ang (make-rational 3 5) 2))
           (cons 'complex (cons 'rectangular
                                (cons (cons 'rational (cons 8.751559490358574 5))
                                      (cons 'rational (cons 28.639461402385223 25))))))
(mattcheck "polynomial = zero"
           (=zero? (make-polynomial 'x '((0 0)))))
(mattcheck "polynomial != zero" #f
           (=zero? (make-polynomial 'x '((1 1) (0 1)))))

(let ((p1 '((100 1)(2 2)(0 1)))
      (p2 (list (list 7 (make-polynomial 'x '((3 2))))))
      (p3 '((100 1)(2 1)(0 3)))
      (p4 '((100 -1)(2 -2)(0 -1)))
      (p5 '(8 2 5 -3 -7)))
  (mattcheck "polynomial addition"
             (add (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (100 2)(2 4)(0 2)))
  (mattcheck "polynomial multiplication"
             (mul (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (200 1) (102 4) (100 2) (4 4) (2 4) (0 1)))
  (mattcheck "nested polynomial addition"
             (add (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (100 1) (7 (polynomial x (3 2))) (2 2) (0 1)))
  (mattcheck "nested polynomial mult"
             (mul (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (107 (polynomial x (3 2))) (9 (polynomial x (3 4))) (7 (polynomial x (3 2)))))
  (mattcheck "negation scheme-number"
             (neg 5) -5)
  (mattcheck "negation rational"
             (neg (make-rational 1 5))
             (make-rational -1 5))
  (mattcheck "negation rectangular complex"
             (neg (make-complex-from-real-imag 3 7))
             (make-complex-from-real-imag -3 -7))
  (mattcheck "negation polar complex"
             (neg (make-complex-from-mag-ang 3 7))
             (make-complex-from-mag-ang -3 7))

  (mattcheck "negation polynomials"
             (neg (make-polynomial 'x p1))
             (make-polynomial 'x p4))
  (mattcheck "polynomial subtraction"
             (sub (make-polynomial 'x p1)
                  (make-polynomial 'x p3))
             '(polynomial x 1 0 -2)))
```

```text
(etc...)
SUCCEED at negation polynomials
SUCCEED at polynomial subtraction
```


### <span class="section-num">3.104</span> Exercise 2.91: division of polynomials {#exercise-2-dot-91-division-of-polynomials}


#### <span class="section-num">3.104.1</span> Question {#question}

A univariate polynomial can be divided by another one to produce a polynomial
quotient and a polynomial remainder. For example,

\\(\frac{x^5 - 1}{x^2 - 1} = x^3 + x, \hbox{  remainder  } x - 1\\)

Division can be performed via long division.  That is, divide the highest-order
term of the dividend by the highest-order term of the divisor.  The result is
the first term of the quotient.  Next, multiply the result by the divisor,
subtract that from the dividend, and produce the rest of the answer by
recursively dividing the difference by the divisor.  Stop when the order of the
divisor exceeds the order of the dividend and declare the dividend to be the
remainder.  Also, if the dividend ever becomes zero, return zero as both
quotient and remainder.

We can design a <span class="inline-src language-scheme" data-lang="scheme">`div-poly`</span> procedure on the model of
<span class="inline-src language-scheme" data-lang="scheme">`add-poly`</span> and <span class="inline-src language-scheme" data-lang="scheme">`mul-poly`</span>. The procedure checks to see if
the two polys have the same variable. If so, <span class="inline-src language-scheme" data-lang="scheme">`div-poly`</span> strips off the
variable and passes the problem to <span class="inline-src language-scheme" data-lang="scheme">`div-terms`</span>, which performs the
division operation on term lists. <span class="inline-src language-scheme" data-lang="scheme">`div-poly`</span> finally reattaches the
variable to the result supplied by <span class="inline-src language-scheme" data-lang="scheme">`div-terms`</span>. It is convenient to
design <span class="inline-src language-scheme" data-lang="scheme">`div-terms`</span> to compute both the quotient and the remainder of a
division. <span class="inline-src language-scheme" data-lang="scheme">`div-terms`</span> can take two term lists as arguments and return
a list of the quotient term list and the remainder term list.

Complete the following definition of <span class="inline-src language-scheme" data-lang="scheme">`div-terms`</span> by filling in the
missing expressions. Use this to implement <span class="inline-src language-scheme" data-lang="scheme">`div-poly`</span>, which takes two
polys as arguments and returns a list of the quotient and remainder polys.

```scheme { linenos=true, linenostart=1 }
(define (div-terms L1 L2)
  (if (empty-termlist? L1)
      (list (the-empty-termlist) (the-empty-termlist))
      (let ((t1 (first-term L1))
            (t2 (first-term L2)))
        (if (> (order t2) (order t1))
            (list (the-empty-termlist) L1)
            (let ((new-c (div (coeff t1) (coeff t2)))
                  (new-o (- (order t1) (order t2))))
              (let ((rest-of-result
                     ;;<compute rest of result recursively>
                     ))
                ;;<form complete result>
                ))))))
```


#### <span class="section-num">3.104.2</span> Answer {#answer}

<a id="code-snippet--polynomial-division"></a>
```scheme { linenos=true, linenostart=1 }
(define (div-terms L1 L2)
  ;; termlist, termlist -> list of two termlists
  ;; returns quotient terms and remainder terms
  (if (empty-termlist? L1)
      (list (the-empty-termlist) (the-empty-termlist))
      (let ((t1 (first-term L1))
            (t2 (first-term L2)))
        (if (> (order t2) (order t1))
            (list (the-empty-termlist) L1)
            (let* ((new-term (make-sparse-term (- (order t1) (order t2))
                                               (div (coeff t1) (coeff t2))))
                   (rest-of-result
                    (div-terms (sub-terms L1
                                          (mul-terms (list new-term)
                                                     L2))
                               L2)))
              (list (adjoin-term new-term
                                 (car rest-of-result))
                    (cadr rest-of-result)))))))
(define (div-poly p1 p2)
  ;; poly, poly -> list of 2 polys
  ;; returns quotient poly and remainder poly
  (if (same-variable? (variable p1) (variable p2))
      (let* ((result (div-terms (terms p1) (terms p2)))
             (quotient (car result))
             (remainder (cadr result)))
        (list (make-poly (variable p1) quotient)
              (make-poly (variable p1) remainder)))
      (error "Polys not in same var: DIV-POLY" (list p1 p2))))
(put 'div '(polynomial polynomial)
     (lambda (p1 p2)
       (let* ((result (div-poly p1 p2))
              (quotient (car result))
              (remainder (cadr result)))
         (list (tag quotient)
               (tag remainder)))))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-drop>>
<<generic-arithmetic-complex-parts>>
<<real-package>>
<<eqzero?>>
<<real-package>>
<<basic-tower-coercions>>

<<polynomial-sparse-dense-top>>
<<polynomial-division>>
<<polynomial-sparse-dense-bottom>>

<<generic-negation>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
(install-polynomial-package)
(install-negation)

<<gen-math-tests>>

(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-complex-from-mag-ang 78 64))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
(mattcheck "drop 1"
           (drop (make-complex-from-real-imag 5 0))
           5)
(mattcheck "drop 2"
           (drop (make-real 5))
           5)
(mattcheck "drop 3"
           (drop (make-rational 5 1))
           5)
(mattcheck "complex with nested rational"
           (make-complex-from-real-imag 2 (make-rational 3 5))
           (cons 'complex (cons 'rectangular (cons 2 (cons 'rational (cons 3 5))))))
(mattcheck "math on complex with nested rational"
           (add (make-complex-from-real-imag 2 (make-rational 3 5))
                (make-complex-from-mag-ang (make-rational 3 5) 2))
           (cons 'complex (cons 'rectangular
                                (cons (cons 'rational (cons 8.751559490358574 5))
                                      (cons 'rational (cons 28.639461402385223 25))))))
(mattcheck "polynomial = zero"
           (=zero? (make-polynomial 'x '((0 0)))))
(mattcheck "polynomial != zero" #f
           (=zero? (make-polynomial 'x '((1 1)(0 1)))))

(let ((p1 '((100 1)(2 2)(0 1)))
      (p2 (list (list 7 (make-polynomial 'x '((3 2))))))
      (p3 '((100 1)(2 1)(0 3)))
      (p4 '((100 -1)(2 -2)(0 -1)))
      (p5 '(8 2 5 -3 -7))
      (p7 '((1 1)(0 1)))
      (p6 '((3 1)(0 1)))
      (p66 '(1 0 0 1))
      (p77 '(1 1)))
  (mattcheck "polynomial addition"
             (add (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (100 2)(2 4)(0 2)))
  (mattcheck "polynomial multiplication"
             (mul (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (200 1) (102 4) (100 2) (4 4) (2 4) (0 1)))
  (mattcheck "nested polynomial addition"
             (add (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (100 1) (7 (polynomial x (3 2))) (2 2) (0 1)))
  (mattcheck "nested polynomial mult"
             (mul (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (107 (polynomial x (3 2))) (9 (polynomial x (3 4))) (7 (polynomial x (3 2)))))
  (mattcheck "negation scheme-number"
             (neg 5) -5)
  (mattcheck "negation rational"
             (neg (make-rational 1 5))
             (make-rational -1 5))
  (mattcheck "negation rectangular complex"
             (neg (make-complex-from-real-imag 3 7))
             (make-complex-from-real-imag -3 -7))
  (mattcheck "negation polar complex"
             (neg (make-complex-from-mag-ang 3 7))
             (make-complex-from-mag-ang -3 7))

  (mattcheck "negation polynomials"
             (neg (make-polynomial 'x p1))
             (make-polynomial 'x p4))
  (mattcheck "polynomial subtraction"
             (sub (make-polynomial 'x p1)
                  (make-polynomial 'x p3))
             '(polynomial x 1 0 -2))
  (mattcheck "polynomial division 1"
             (div (make-polynomial 'x p6)
                  (make-polynomial 'x p7))
             '((polynomial x 1 -1 1) (polynomial x)))
  (mattcheck "polynomial division 2"
             (div (make-polynomial 'x p7)
                  (make-polynomial 'x p6))
             '((polynomial x) (polynomial x 1 1)))
  (mattcheck "polynomial division 3"
             (div (make-polynomial 'x p66)
                  (make-polynomial 'x p77))
             '((polynomial x 1 -1 1) (polynomial x))))
```

```text
(etc...)
SUCCEED at polynomial division 1
SUCCEED at polynomial division 2
SUCCEED at polynomial division 3
```


### <span class="section-num">3.105</span> Exercise 2.92: operating on polys in different variables {#exercise-2-dot-92-operating-on-polys-in-different-variables}


#### <span class="section-num">3.105.1</span> Question {#question}

By imposing an ordering on variables, extend the polynomial package so that
addition and multiplication of polynomials works for polynomials in different
variables. (This is not easy!)


#### <span class="section-num">3.105.2</span> Answer {#answer}

<style>.org-center { margin-left: auto; margin-right: auto; text-align: center; }</style>

<div class="org-center">

__Unfortunately, I've spent a lot of time on this without making progress. For
some reason it's really screwed with my brain. I'm going to move on to
[Exercise 2.93](#exercise-2-dot-93-extending-make-rational-for-rational-functions)__

</div>

If I understand the previous section correctly, I need to change the polynomial
procedures so that when given two polys which include similar terms, say \\(x\\)
with coefficients in \\(y\\) and \\(y\\) with coefficients in \\(x\\), I need to pick
one variable to be priority, and convert the other expression to match that
priority. I suppose this would also need to work with multiple layers of
polynomials, say a poly of \\(w\\) with nested coefficients \\(x^y^z\\) and \\(y\\)
with \\(w^z^y\\).

I've also decided to upgrade my <span class="inline-src language-scheme" data-lang="scheme">`adjoin-terms`</span> procedures so that they
can adjoin to the middle of lists, or attempt to add two coefficients of the
same order.

I've _also_ also decided to add polynomials to the type coercion tower. This
will require putting a variable on the new polynomial, but it will be a poly of
one term of the 0'th order, which isn't really a polynomial. I'll need to add a
check, <span class="inline-src language-scheme" data-lang="scheme">`trivial-poly?`</span>, which will allow the procedures to ignore the
variable of such a polynomial.

My earlier choice to not tag sparse and dense lists may be coming back to bite
me, now that I'm nesting items in the coefficients.

In the process of reorganizing polynomials, I'll make a hash table, and find the
terms in the poly which are not dependent on the top variable, and split them
into their own keys in the table. So for any terms of order 0, if it's a poly
it'll get keyed to the variable of the poly, and if it's not it'll be keyed to
the symbol <span class="inline-src language-scheme" data-lang="scheme">`'ZEROTH`</span>.

<a id="code-snippet--tower-coercions-polynomial"></a>
```scheme { linenos=true, linenostart=1 }
(define tower
  '(scheme-number rational real complex polynomial))

(define (raise x)
  (let ((t1 (type-tag x)))
    (let recurse ((ll tower))
      (let ((t2 (car ll)))
        (cond ((null? (cdr ll)) #f)
              ((equal? t1 t2)
               ((get-coercion t1 (cadr ll)) (contents x)))
              (else (recurse (cdr ll))))))))

(put-coercion 'scheme-number 'rational
              (lambda(num)
                (make-rational num 1)))
<<eqnumber>>
(put-coercion 'rational 'real
              (lambda(num)
                (make-real
                 (exact->inexact (/ ((get 'numer '(rational)) num)
                                    ((get 'denom '(rational)) num))))))
(put-coercion 'real 'complex
              (lambda(num)
                (make-complex-from-real-imag
                 num 0)))
(put-coercion 'complex 'polynomial
              (lambda(num)
                ;; poly wants tagged numbers but (put-coercion) strips tags
                ;; also, might as well drop since it makes sense
                (let ((dropped-num (drop (attach-tag 'complex num))))
                  (make-polynomial 'DISCARD-ME
                                   (list (list 0 dropped-num))))))
```

<a id="code-snippet--mem-index"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
(define (mem-index item ll)
  (list-index (lambda(x)(equal? item x))
              ll))
```

<a id="code-snippet--polynomial-mixed-variables-top"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
(define (install-polynomial-package) 'no)
;; internal procedures
;; representation of poly
(define (make-poly variable term-list)
  (cons variable
        (convert-termlist-if-reasonable term-list)))
(define (variable p) (car p))
(define (terms p) (cdr p))
(define (variable? x) (symbol? x))
(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))
(define (is-poly? list)
  (eqv? 'polynomial (type-tag list)))

;; representation of terms and term lists
(define (the-empty-termlist) '())
(define (rest-terms term-list) (cdr term-list))
(define (empty-termlist? term-list) (null? term-list))
(define (order term) (first term))
(define (coeff term) (second term))
(define (make-sparse-term order coeff)
  (list order coeff))
(define (sparse-termlist? term-list)
  (let ((t (car term-list)))
    (cond ((and (pair? t) ;; looks like a sparse list
                (number? (first t))
                (or (pair? (second t)) ;; or sparse with nested poly
                    (number? (second t))
                    (empty-termlist? (second t)))) #t)
          ((or (number? t) ;; looks dense
               (pair? t)
               (empty-termlist? term-list)) #f) ;; or dense with a nested poly
          (else (error "badly formed term: SPARSE-TERMLIST?" t term-list)))))
;; term and termlist procedures
(define (should-be-sparse? term-list)
  ;; sparse or dense term-list -> bool
  ;; if more than half of term-list is zeroes, return true
  ;; reasoning:
  ;; - number of elements used for sparse list is (non-zero elements * 2)
  ;; - number of elements used for dense list is (highest order)
  ;; also, if term-list is 1 non-number element, make a sparse term for clarity
  (define (count-zeroes term-list)
    ;; term-list -> (highest order, zeroes)
    (let iter ((length 0)
               (zeroes 0)
               (TL (if (sparse-termlist? term-list)
                       (sparse-to-dense term-list)
                       term-list)))
      (if (empty-termlist? TL)
          (list zeroes length)
          (iter (1+ length)
                (if (=zero? (car TL))
                    (1+ zeroes)
                    zeroes)
                (cdr TL)))))
  (let ((stats (if (sparse-termlist? term-list) ;; do appropriate measurement
                   (list (- (1+ (order (sparse-first-term term-list)))
                            (length term-list))
                         (1+ (order (sparse-first-term term-list))))
                   (count-zeroes term-list))))
    (let ((zero-elements (first stats))
          (highest-order (second stats)))
      (or (and (= 1 (length term-list))
               (not (number? (first-term term-list))))
          (> (/ zero-elements highest-order)
             (/ 1 2))))))
(define (convert-termlist-if-reasonable term-list)
  (if (empty-termlist? term-list)
      term-list
      (cond ((sparse-termlist? term-list)
             (let ((tl (sort-sparse-terms term-list)))
               (if (should-be-sparse? tl)
                   tl
                   (sparse-to-dense tl))))
            ((should-be-sparse? term-list)
             (dense-to-sparse term-list))
            (else term-list))))
(define (sparse-to-dense term-list)
  (let iter ((old-list (reverse term-list))
             (new-list (the-empty-termlist)))
    (if (empty-termlist? old-list)
        new-list
        (iter (rest-terms old-list)
              (adjoin-term-dense (sparse-first-term old-list)
                                 new-list)))))
(define (dense-to-sparse term-list)
  (let iter ((old-list (reverse term-list))
             (old-order 0)
             (new-list (the-empty-termlist)))
    (if (empty-termlist? old-list)
        new-list
        (iter (rest-terms old-list)
              (1+ old-order)
              (adjoin-term-sparse (make-sparse-term old-order
                                                    (coeff (dense-first-term old-list)))
                                  new-list)))))
(define (dense-termlist-order term-list)
  (1- (length term-list)))
(define (dense-first-term term-list)
  (make-sparse-term (dense-termlist-order term-list)
                    (car term-list)))
(define (sparse-first-term term-list)
  (car term-list))
(define (first-term term-list)
  (if (sparse-termlist? term-list)
      (sparse-first-term term-list)
      (dense-first-term term-list)))
(define (adjoin-term-sparse term term-list)
  ;; if term is higher order, cons to list
  ;; if equal, replace or add
  ;; if term is lower order than top of list, try to insert in the middle
  (if  (empty-termlist? term-list)
       (cons term term-list)
       (let ((top-order (order (sparse-first-term term-list))))
         (cond ((<= (1+ top-order) (order term))
                (cons term term-list))
               ((= top-order (order term))
                (if (=zero? (coeff (sparse-first-term term-list)))
                    ;; replace if it's zero
                    (cons term (rest-terms term-list))
                    ;; and add if it's not
                    (let ((result (add-sparse-term-to-sparse-term term
                                                                  (sparse-first-term term-list))))
                      (cons result
                            (rest-terms term-list)))))
               (else (adjoin-term-sparse (sparse-first-term term-list)
                                         (adjoin-term-sparse term
                                                             (rest-terms term-list))))))))
(define (adjoin-term-dense term term-list)
  ;; if term is lower order than top of list, try to insert in the middle
  (let ((top-order (dense-termlist-order term-list)))
    (cond ((= (1+ top-order) (order term))
           ;; if term is 1 order above top of list, adjoin
           (cons (coeff term) term-list))
          ;; if term shares order with top of list,
          ((= top-order (order term))
           (if (=zero? (coeff (dense-first-term term-list)))
               ;; replace if it's zero
               (cons (coeff term)
                     (rest-terms term-list))
               ;; and add if it's not
               (let ((result (add-sparse-term-to-sparse-term term
                                                             (dense-first-term term-list))))
                 (cons (coeff result)
                       (rest-terms term-list)))))
          ((< top-order (order term))
           (adjoin-term-dense term (cons 0 term-list)))
          ;; if term is more than 1 order above, adjoin 0 and recurse
          (else (adjoin-term-dense (dense-first-term term-list)
                                   (adjoin-term-dense term
                                                      (rest-terms term-list)))))))

(define (adjoin-term term term-list)
  (if (=zero? (coeff term))
      term-list
      (if (or (empty-termlist? term-list)
              (sparse-termlist? term-list))
          (adjoin-term-sparse term term-list)
          (adjoin-term-dense term term-list))))
(define (merge-terms t1 t2)
  (cond ((empty-termlist? t2)
         t1)
        ((empty-termlist? t1)
         t2)
        ((>= (order (first-term t1)) (order (first-term t2)))
         (adjoin-term (first-term t1)
                      (merge-terms (rest-terms t1) t2)))
        (else (adjoin-term (first-term t2)
                           (merge-terms t1 (rest-terms t2))))))
; ;; this second version is way simpler and way slower.
; (define (merge-terms-abstracted t1 t2)
;   (if (empty-termlist? t2)
;       t1
;       (merge-terms-abstracted (adjoin-term (first-term t2) t1)
;                                   (rest-terms t2))))
(define (map-terms f tl)
  ;; f is called (f order coeff)
  (let iter ((result '())
             (term-list tl))
    (if (empty-termlist? term-list)
        (reverse result)
        (iter (cons (let ((t (first-term term-list)))
                      (f (order t) (coeff t)))
                    result)
              (rest-terms term-list)))))
(define (map2-terms f tl1 tl2)
  (let iter ((result '())
             (term-list1 tl1)
             (term-list2 tl2))
    (if (or (empty-termlist? term-list1)
            (empty-termlist? term-list2))
        (reverse result)
        (iter (cons (let ((t1 (first-term term-list))
                          (t2 (first-term term-list)))
                      (f (order t1) (coeff t1)
                         (order t2) (coeff t2)))
                    result)
              (rest-terms term-list1)
              (rest-terms term-list2)))))
(define (equ?-terms t1 t2)
  (and (= (order t1)
          (order t2))
       (equ? (coeff t1)
             (coeff t2))))
(define (sort-sparse-terms term-list)
  (sort term-list (lambda(t1 t2)
                    (> (order t1)
                       (order t2)))))
(define (add-sparse-term-to-sparse-term t1 t2)
  (make-sparse-term (order t1)
                    (add (coeff t1) (coeff t2))))
(define (add-terms L1 L2)
  (cond ((empty-termlist? L1) L2)
        ((empty-termlist? L2) L1)
        (else
         (let ((t1 (first-term L1))
               (t2 (first-term L2)))
           (cond ((> (order t1) (order t2))
                  (adjoin-term
                   t1 (add-terms (rest-terms L1) L2)))
                 ((< (order t1) (order t2))
                  (adjoin-term
                   t2 (add-terms L1 (rest-terms L2))))
                 (else
                  (adjoin-term
                   (add-sparse-term-to-sparse-term t1 t2)
                   (add-terms (rest-terms L1)
                              (rest-terms L2)))))))))
(define (mul-terms L1 L2)
  (if (empty-termlist? L1)
      (the-empty-termlist)
      (add-terms (mul-term-by-all-terms (first-term L1) L2)
                 (mul-terms (rest-terms L1) L2))))
(define (terms-=zero? L)
  (or (empty-termlist? L)
      (and (=zero? (coeff (first-term L)))
           (terms-=zero? (rest-terms L)))))
(define (neg-terms TL)
  (let ((negterm (if (sparse-termlist? TL)
                     (lambda(t)
                       (make-sparse-term (order t) (neg (coeff t))))
                     (lambda(t)
                       (neg (coeff t))))))
    (map negterm TL)))
(define (sub-terms T1 T2)
  (add-terms T1 (neg-terms T2)))
(define (div-terms L1 L2)
  ;; termlist, termlist -> list of two termlists
  ;; returns quotient terms and remainder terms
  (if (empty-termlist? L1)
      (list (the-empty-termlist) (the-empty-termlist))
      (let ((t1 (first-term L1))
            (t2 (first-term L2)))
        (if (> (order t2) (order t1))
            (list (the-empty-termlist) L1)
            (let* ((new-term (make-sparse-term (- (order t1) (order t2))
                                               (div (coeff t1) (coeff t2))))
                   (rest-of-result
                    (div-terms (sub-terms L1
                                          (mul-terms (list new-term)
                                                     L2))
                               L2)))
              (list (adjoin-term new-term
                                 (car rest-of-result))
                    (cadr rest-of-result)))))))
;; polynomial procedures
(define (trivial-poly? poly)
  (and (= 1 (length (terms poly)))
       (= 0 (order (first-term (terms poly))))))
;;; TODO: get working once cross-variable comparisons can be done
(put 'project 'polynomial
     (lambda (p)
       (if (not (trivial-poly? p))
           #f
           (coeff (first-term (terms p))))))
(define (equ?-poly p q)
  (cond ((and (trivial-poly? p)
              (trivial-poly? q))
         (equ? (coeff (first-term (terms p)))
               (coeff (first-term (terms q)))))
        ((same-variable? (variable p) (variable q))
         (let iter ((term-list1 (reverse tl1))
                    (term-list2 (reverse tl2)))
           (cond ((and (empty-termlist? term-list1)
                       (empty-termlist? term-list2))
                  #t)
                 ((or (empty-termlist? term-list1)
                      (empty-termlist? term-list2))
                  #f)
                 ((equ?-terms (first-term term-list1)
                              (first-term term-list2))
                  (iter (rest-terms term-list1)
                        (rest-terms term-list2)))
                 (else #f))))
        (else (error "different vars not supported yet : EQU?-POLY" p q))))
(put 'equ? '(polynomial polynomial)
     equ?-poly)
(define (make-variable-priority-list poly)
  (cons (variable poly)
        (let rec ((term-list (terms poly)))
          (if (empty-termlist? term-list)
              '()
              (let* ((t (first-term term-list))
                     (c (coeff t))
                     (o (order t)))
                (cond ((is-poly? c)
                       (cons (variable (contents c))
                             (append (rec (rest-terms term-list))
                                     (rec (terms (contents c))))))
                      (else (rec (rest-terms term-list)))))))))
(define (merge-priority-lists l1 l2)
  (if (null? l2)
      l1
      (let rec ((to-check l1)
                (checking (car l2)))
        (cond ((null? to-check)
               (merge-priority-lists (append l1 (list checking))
                                     (cdr l2)))
              ((same-variable? checking (car to-check))
               (merge-priority-lists l1
                                     (cdr l2)))
              (else (rec (cdr to-check) checking))))))
(define (poly-single-var? wantedvar poly)
  (and (same-variable? (variable poly) wantedvar)
       (let rec ((term-list (terms poly)))
         (if (empty-termlist? term-list)
             #t
             (let ((c (coeff (first-term term-list))))
               (if (not (is-poly? c))
                   (rec (rest-terms term-list))
                   (and (poly-single-var? wantedvar c)
                        (rec (rest-terms term-list)))))))))
;;; Example of an inverted poly:
;;; (poly x (order 4, coeff (poly y (5 6)))
;;;         (order 3, coeff (poly y (1 2)))
;;;         (order 0, coeff 7))
;;; (poly y (order 5, coeff (poly x (4 6)))
;;;         (order 1, coeff (poly x (3 2)))
;;;         (order 0, coeff 7))
;;; (make-poly sub-var (list (make-sparse-term subO (make-polynomial super-var (list (make-sparse-term superO subC))))))
;;; (poly x (1, (poly y (2, (poly z (3, 4))))))
;;; (poly x (1, (poly z (3, (poly y (2, 4))))))
;;; (poly z (3, (poly x (1, (poly y (2, 4)))))
;;; (poly z (3, (poly y (2, (poly x (1, 4))))))

;; This isn't good enough, it doesn't invert the poly and also it needs to
;; produce multiple terms for one term with a poly with multiple terms
;(define (invert-term parent-var parent-order term)
;  (let* ((child-order (order term))
;        (child-coeff (coeff term)))
;    (make-sparse-term child-order
;                      (make-polynomial parent-var
;                                       (list (make-sparse-term parent-order
;                                                               child-coeff))))))
(define (pad-term-if-needed term parent-priority-list)
  ;; term with tagged poly, priority list -> term
  ;; parent-priority-list starts with the variable this term's order is in
  ;; term: term with tagged poly inside

  ;; pad term so that cross-variable functions will have equal structures
  ;; to thoughtlessly work from. I.e. if your list is '(a b c d e) and
  ;; your term is (5 (poly d (2 1))), we'll return
  ;; '(5 (poly b (poly c (poly d (2 1))))) (nested polys representing dense terms)
  (let* ((parent-var (car parent-priority-list))
         (child-var (variable (contents (coeff term))))
         (pri (member parent-var parent-priority-list))
         (difference (mem-index child-var pri)))
    (if (= difference 1)
        term
        (let* ((rest-priorities (cdr pri))
               (next-var (car rest-priorities)))
          (make-sparse-term (order term)
                            (make-polynomial next-var
                                             (list (pad-term-if-needed (make-sparse-term 0 (coeff term))
                                                                       rest-priorities))))))))
(define (pad-poly-if-needed poly parent-priority-list)
  ;; untagged poly -> untagged poly
  (let* ((child-var (variable poly))
         (difference (mem-index child-var parent-priority-list)))
    (if (> difference 0)
        (make-poly (car parent-priority-list)
                   (list (pad-term-if-needed (make-sparse-term 0 (tag poly))
                                             parent-priority-list))))))
(define (make-empty-poly-in var)
  (if (pair? var)
      (make-poly (car var)
                 (list (make-sparse-term
                        0 (tag (make-empty-poly-in
                                (if (= 2 (length var))
                                    (cadr var)
                                    (cdr var)))))))
      (make-poly var (the-empty-termlist))))
(define (priority-depth var priority-list)
  ;; return how far in a list a var is
  ;; 0 is head, 2 means two vars ahead, etc
  (mem-index var priority-list))
(define (priority-diff var1 var2 priority-list)
  ;; return how far ahead var2 is from var1
  ;; so a child correctly nested in a parent is 1
  ;; if vars need to be swapped, this will be negative
  (let ((d1 (mem-index var1 priority-list))
        (d2 (mem-index var2 priority-list)))
    (- d2 d1)))
(define (invert-nested-poly-terms superVar superO term-list)
  ;;  -> term-list
  (let iter ((tl term-list)
             (done (the-empty-termlist)))
    (if (empty-termlist? tl)
        done
        (let* ((t (first-term tl))
               (new-t (make-sparse-term (order t)
                                        (make-polynomial superVar
                                                         (make-sparse-term superO
                                                                           (coeff t))))))
          (iter (rest-terms tl)
                (adjoin-term new-t done))))))
(define (poly-has-no-children? p)
  (let iter ((tl (terms p)))
    (cond ((empty-termlist? tl) #t)
          ((and (pair? (coeff (first-term tl)))
                (equal? 'polynomial (type-tag (coeff (first-term tl))))) #f)
          (else (iter (rest-terms tl))))))
;; BIG PROBLEM: I NEED TO WORK OUT ORDERING OF TERMS VERSUS ORDERING OF POLY NESTING
;; i.e.
;(poly a (0
;         (poly b (1 2)
;                 (0
;                  (poly c (3 4))))))
;(poly a (0 (poly b (1 2)))
;        (poly c (3 4)))
;; Maybe the only good choice is to have polys strictly nest linearly
(define (reorganize-poly-if-needed poly parent-priority-list)
  ;; untagged poly, pri list -> untagged poly
  ;; pri list should start with the variable you want the poly in,
  ;; and contain all vars that the poly contains
  (define (promote p target-var)
    (define (p-rec term-list)
      (map-terms (lambda(t)
                   ())
                 term-list)))
    ;; descend into children until findng desired var, then ascend
    ;; to bring it back to the parent while rearranging as needed
    (receive (cool uncool)
        (partition (lambda(t)
                     (let ((c (coeff t)))
                     (and (pair? c)
                          (equal? 'polynomial (type-tag c))
                          (same-variable? target-var
                                          (variable (contents c))))))
                   (let ((tl (terms p)))
                     (if (sparse-termlist? tl)
                         tl
                         (dense-to-sparse tl))))
      (cond ((poly-has-no-children? p) p) ;;dead end
            ((null? cool) ;; var is below but not here yet, keep bubbling
             )
            (else (make-poly target-var
                             (let rec ((tl cool))
                               (if (empty-termlist? tl)
                                   (the-empty-termlist)
                                   (let* ((t (first-term tl))
                                          (o (order t))
                                          (c (coeff c))
                                          (child-poly (contents c)))
                                     (merge-termlists (invert-nested-poly-terms (variable p) o
                                                                                (terms child-poly))
                                                      (rec (rest-terms tl))))))))))
  (let rec ((p poly)
            (pri parent-priority-list))
    (if (null? pri)
        p ;; give up
        (let* ((top-var (car pri))
               (var (variable p))
               (tl (terms p))
               (child-descendants (make-variable-priority-list p))
               (diff (priority-diff top-var var parent-priority-list)))
          (cond ((equal? child-descendants parent-priority-list)
                 p) ;; sort done
                ((not (member top-var child-descendants))
                 ;; we need to pad for this var
                 (make-poly top-var (tag (rec p (cdr pri)))))
                ((= 0 diff)
                 ('todo)))))))
;(define (check-terms term-list)
;  (let iter ((remaining term-list)
;             (done (the-empty-termlist)))
;    (if (empty-termlist? remaining)
;        done
;        (let* ((t (first-term remaining))
;               (c (coeff t))
;               (o (order t))
;               (new-t (make-sparse-term o
;                                        (if (is-poly? c)
;                                            (tag (reorganize-poly-if-needed (contents c) parent-priority-list))
;                                            c))))
;          (iter (rest-terms remaining)
;                (adjoin-term new-t done))))))
;(define (invert-this-poly poly new-var)
;  (let ((var (variable poly))
;        (term-list (terms poly)))
;    (let iter ((remaining term-list)
;               (done (the-empty-termlist)))
;      (if (empty-termlist? remaining)
;          (make-poly new-var done)
;          (let* ((t (first-term remaining))
;                 (o (order t))
;                 (c (coeff t)))
;            (if (is-poly? c)
;                (let ((child-var (variable (contents c)))
;                      (child-terms (terms (contents c))))
;                  (cond ((> o 0) ;; if order is not 0, an inverted poly is needed
;                         (iter (rest-terms remaining)
;                               (merge-termlists done (invert-nested-poly-terms new-var o child-terms))))
;                        ((same-variable? var child-var)
;                         (error "This shouldn't happen : INVERT-THIS-POLY :" remaining done))
;                                      ;(iter (merge-termlists child-terms (rest-terms remaining))
;                                      ;      done))
;                        ((same-variable? new-var child-var)
;                         (iter (rest-terms remaining)
;                               (merge-termlists done (check-terms child-terms))))
;                        (else (error "WHAT TO HECK : INVERT-THIS-POLY :" remaining done))))
;                (let ((new-t (make-sparse-term 0
;                                               (make-polynomial var
;                                                                (make-sparse-term o
;                                                                                  c)))))
;                  (iter (rest-terms remaining)
;                        (adjoin-term new-t done)))))))))
;(let* ((top-var (car parent-priority-list))
;       (var (variable poly))
;       (tl (terms poly))
;       (child-descendants (make-variable-priority-list poly))
;       (diff (priority-diff top-var var parent-priority-list)))
;  (cond ((= 0 diff)
;         ;; if poly and top-var are the same, then keep terms how they are
;         ;; except for terms that have poly coeffs, which need to be checked
;         (make-poly top-var (check-terms tl)))
;        ((< 0 diff)
;         (let ((reorganized-terms (check-terms tl)))
;           (pad-poly-if-needed (make-poly var reorganized-terms)
;                               parent-priority-list)))
;        ;; if var is 1 step of priority below in the list than top-var, then
;        ;; swap its terms with top-var terms
;        ((= 1 diff)
;         (pad-poly-if-needed (invert-this-poly poly top-var)
;                             parent-priority-list))
;        ;; if var is >1 steps of priority below top-var, and top-var is known
;        ;; to be in the child's children, then reorganize the child poly's
;        ;; terms and try again
;        ((< 1 diff)
;         (if (member top-var child-descendants)
;             (let ((reorganized-terms (check-terms tl)))
;               (reorganize-poly-if-needed (make-poly var reorganized-terms)
;                                          parent-priority-list))
;             (error "expected child poly not found? : REORGANIZE-POLY-IF-NEEDED :"
;                    parent-priority-list child-descendants)))
;        (else "what the SCALLOP" child-descendants diff))))
(define (operate-on-polys f p1 p2)
  ;; f is a function to operate on term-lists
  (cond ((same-variable? (variable p1) (variable p2))
         (make-poly (variable p1)
                    (f (terms p1) (terms p2))))
        ((trivial-poly? p1)
         (make-poly (variable p2)
                    (f (terms p1) (terms p2))))
        ((trivial-poly? p2)
         (make-poly (variable p1)
                    (f (terms p1) (terms p2))))
        (((get '=zero? 'polynomial) p1)
         p2)
        (((get '=zero? 'polynomial) p2)
         p1)
        (else
         (let* ((priorities (merge-priority-lists (make-variable-priority-list p1)
                                                  (make-variable-priority-list p2)))
                (p1r ((reorganize-poly-if-needed p1 priorities)))
                (p2r ((reorganize-poly-if-needed p2 priorities))))
           (make-poly (variable p1r)
                      (f (terms p1r) (terms p2r)))))))
(define (add-poly p1 p2)
  (define triv
    ;; if a poly is trivial, return the opposite variable
    (cond ((trivial-poly? p1)
           (variable p2))
          ((trivial-poly? p2)
           (variable p1))
          (else #f)))
  (cond ((or (same-variable? (variable p1) (variable p2))
             triv)
         (make-poly (if triv
                        triv
                        (variable p1))
                    (add-terms (terms p1) (terms p2))))
        (else
         (let ((p2r ((reorganize-poly-if-needed p2
                                                (make-variable-priority-list p1)))))
           (make-poly (variable p1)
                      (add-terms (terms p1) (terms p2r)))))))
(define (mul-poly p1 p2)
  (define triv
    ;; if a poly is trivial, return the opposite variable
    (cond ((trivial-poly? p1)
           (variable p2))
          ((trivial-poly? p2)
           (variable p1))
          (else #f)))
  (cond ((or (same-variable? (variable p1) (variable p2))
             triv)
         (make-poly (if triv
                        triv
                        (variable p1))
                    (mul-terms (terms p1) (terms p2))))
        (else (error "Polys not in same var: MUL-POLY" (list p1 p2)))))

;; interface to rest of the system
(define (tag p) (attach-tag 'polynomial p))
(put 'add '(polynomial polynomial)
     (lambda (p1 p2) (tag (add-poly p1 p2))))
(put 'mul '(polynomial polynomial)
     (lambda (p1 p2) (tag (mul-poly p1 p2))))
(put 'make 'polynomial
     (lambda (var terms) (tag (make-poly var terms))))
(define (if-1st-poly-make-2nd-poly t1 t2)
  (if (and (eqv? 'polynomial (type-tag t1))
           (not (eqv? 'polynomial (type-tag t2))))
      (tag (make-poly (variable (contents t1)) (list t2)))
      t2))
(define (mul-term-by-all-terms t1 L)
  (if (empty-termlist? L)
      (the-empty-termlist)
      (let* ((t2 (first-term L)) ;; If one coeff is a poly, make the other a poly
             (t1-coeff (if-1st-poly-make-2nd-poly (coeff t2) (coeff t1)))
             (t2-coeff (if-1st-poly-make-2nd-poly (coeff t1) (coeff t2))))

        (adjoin-term
         (make-sparse-term (+ (order t1) (order t2))
                           (mul t1-coeff t2-coeff))
         (mul-term-by-all-terms t1 (rest-terms L))))))
(define (poly-=zero? p)
  (terms-=zero? (terms p)))
(put '=zero? '(polynomial) poly-=zero?)
(define (neg-poly p)
  (make-poly (variable p)
             (neg-terms (terms p))))
(put 'neg '(polynomial)
     (lambda (p1) (tag (neg-poly p1))))
(define (sub-poly p1 p2)
  (add-poly p1 (neg-poly p2)))
(put 'sub '(polynomial polynomial)
     (lambda (p1 p2) (tag (sub-poly p1 p2))))
(define (div-poly p1 p2)
  ;; poly, poly -> list of 2 polys
  ;; returns quotient poly and remainder poly
  (if (same-variable? (variable p1) (variable p2))
      (let* ((result (div-terms (terms p1) (terms p2)))
             (quotient (car result))
             (remainder (cadr result)))
        (list (make-poly (variable p1) quotient)
              (make-poly (variable p1) remainder)))
      (error "Polys not in same var: DIV-POLY" (list p1 p2))))
(put 'div '(polynomial polynomial)
     (lambda (p1 p2)
       (let* ((result (div-poly p1 p2))
              (quotient (car result))
              (remainder (cadr result)))
         (list (tag quotient)
               (tag remainder)))))
```

<a id="code-snippet--polynomial-mixed-variables-bottom"></a>
```scheme { linenos=true, linenostart=1 }
;  'done)
(define (make-polynomial var terms)
  ((get 'make 'polynomial) var terms))
```

```scheme { linenos=true, linenostart=1 }
(load "../mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-drop>>
<<generic-arithmetic-complex-parts>>
<<real-package>>
<<eqzero?>>
<<real-package>>
<<tower-coercions-polynomial>>

<<mem-index>>
<<polynomial-mixed-variables-top>>
<<polynomial-mixed-variables-bottom>>

<<generic-negation>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
(install-polynomial-package)
(install-negation)

<<gen-math-tests>>

(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-polynomial 'x '(3 2)))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
(mattcheck "drop 1"
           (drop (make-complex-from-real-imag 5 0))
           5)
(mattcheck "drop 2"
           (drop (make-real 5))
           5)
(mattcheck "drop 3"
           (drop (make-rational 5 1))
           5)
(mattcheck "complex with nested rational"
           (make-complex-from-real-imag 2 (make-rational 3 5))
           (cons 'complex (cons 'rectangular (cons 2 (cons 'rational (cons 3 5))))))
(mattcheck "math on complex with nested rational"
           (add (make-complex-from-real-imag 2 (make-rational 3 5))
                (make-complex-from-mag-ang (make-rational 3 5) 2))
           (cons 'complex (cons 'rectangular
                                (cons (cons 'rational (cons 8.751559490358574 5))
                                      (cons 'rational (cons 28.639461402385223 25))))))
(mattcheck "polynomial = zero"
           (=zero? (make-polynomial 'x '((0 0)))))
(mattcheck "polynomial != zero" #f
           (=zero? (make-polynomial 'x '((1 1)(0 1)))))

(define p1 '((100 1)(2 2)(0 1)))
(define p2 (list (list 7 (make-polynomial 'x '((3 2))))))
(define p3 '((100 1)(2 1)(0 3)))
(define p4 '((100 -1)(2 -2)(0 -1)))
(define p5 '(8 2 5 -3 -7))
(define p7 '((1 1)(0 1)))
(define p6 '((3 1)(0 1)))
(define p66 '(1 0 0 1))
(define p77 '(1 1))
(define p8 (make-poly 'a
                      (list (list 9 (make-polynomial 'b p3))
                            (list 8 (make-polynomial 'c p5))
                            (list 1 (make-polynomial 'd (list (list 0 (make-polynomial 'f '(3 2))))))
                            (list 0 (make-polynomial 'e (list 2 0))))))
(define p9 (make-poly 'a
                      (list (list 9
                                  (make-polynomial
                                   'b (list (list 8 (make-polynomial
                                                     'c (list (list 1 (make-polynomial
                                                                       'd (list (list 0 (make-polynomial
                                                                                         'e (list 2 0)))))))))))))))
(mattcheck "polynomial addition"
           (add (make-polynomial 'x p1)
                (make-polynomial 'x p1))
           '(polynomial x (100 2)(2 4)(0 2)))
(mattcheck "polynomial multiplication"
           (mul (make-polynomial 'x p1)
                (make-polynomial 'x p1))
           '(polynomial x (200 1) (102 4) (100 2) (4 4) (2 4) (0 1)))
(mattcheck "nested polynomial addition"
           (add (make-polynomial 'x p2)
                (make-polynomial 'x p1))
           '(polynomial x (100 1) (7 (polynomial x (3 2))) (2 2) (0 1)))
(mattcheck "nested polynomial mult"
           (mul (make-polynomial 'x p2)
                (make-polynomial 'x p1))
           '(polynomial x (107 (polynomial x (3 2))) (9 (polynomial x (3 4))) (7 (polynomial x (3 2)))))
(mattcheck "negation scheme-number"
           (neg 5) -5)
(mattcheck "negation rational"
           (neg (make-rational 1 5))
           (make-rational -1 5))
(mattcheck "negation rectangular complex"
           (neg (make-complex-from-real-imag 3 7))
           (make-complex-from-real-imag -3 -7))
(mattcheck "negation polar complex"
           (neg (make-complex-from-mag-ang 3 7))
           (make-complex-from-mag-ang -3 7))

(mattcheck "negation polynomials"
           (neg (make-polynomial 'x p1))
           (make-polynomial 'x p4))
(mattcheck "polynomial subtraction"
           (sub (make-polynomial 'x p1)
                (make-polynomial 'x p3))
           '(polynomial x 1 0 -2))
(mattcheck "polynomial division 1"
           (div (make-polynomial 'x p6)
                (make-polynomial 'x p7))
           '((polynomial x 1 -1 1) (polynomial x)))
(mattcheck "polynomial division 2"
           (div (make-polynomial 'x p7)
                (make-polynomial 'x p6))
           '((polynomial x) (polynomial x 1 1)))
(mattcheck "polynomial division 3"
           (div (make-polynomial 'x p66)
                (make-polynomial 'x p77))
           '((polynomial x 1 -1 1) (polynomial x)))

(mattcheck "poly projection good"
           (project (make-polynomial 'useless '((0 7))))
           7)
(mattcheck "poly projection bad"
           (project (make-polynomial 'useless '((1 7))))
           #f)
(mattcheck "raise to poly"
           (raise (make-complex-from-mag-ang 78 64))
           '(polynomial DISCARD-ME (complex polar 78 . 64)))
(mattcheck "reorganize-poly-if-needed"
           (reorganize-poly-if-needed p8 '(f e d c b a)))
(mattcheck "polynomials in multiple variables 1"
           (add (make-polynomial 'x p1)
                (make-polynomial 'y p1))
           'unknown)
```


### <span class="section-num">3.106</span> Exercise 2.93: extending `make-rational` for rational functions {#exercise-2-dot-93-extending-make-rational-for-rational-functions}


#### <span class="section-num">3.106.1</span> Question {#question}

Modify the `rational-arithmetic` package to use generic operations, but change
<span class="inline-src language-scheme" data-lang="scheme">`make-rat`</span> so that it does not attempt to reduce fractions to lowest
terms. Test your system by calling <span class="inline-src language-scheme" data-lang="scheme">`make-rational`</span> on two polynomials
to produce a rational function:

```scheme
(define p1 (make-polynomial 'x '((2 1) (0 1))))
(define p2 (make-polynomial 'x '((3 1) (0 1))))
(define rf (make-rational p2 p1))
```

Now add <span class="inline-src language-scheme" data-lang="scheme">`rf`</span> to itself, using <span class="inline-src language-scheme" data-lang="scheme">`add`</span>. You will observe that
this addition procedure does not reduce fractions to lowest terms.


#### <span class="section-num">3.106.2</span> Answer {#answer}

`raise`-ing a rational function doesn't work, so I'll need a way around that.

<a id="code-snippet--tower-coercions-rf"></a>
```scheme { linenos=true, linenostart=1 }
(define tower
  '(scheme-number rational real complex polynomial))

(define (raise x)
  (let ((t1 (type-tag x)))
    (let recurse ((ll tower))
      (let ((t2 (car ll)))
        (cond ((null? (cdr ll)) #f)
              ((equal? t1 t2)
               ((get-coercion t1 (cadr ll)) (contents x)))
              (else (recurse (cdr ll))))))))

(define (raise-to x target)
  (define current-type (type-tag x))
  (define (try-coerce type-to-try)
    (let ((up (get-coercion current-type type-to-try)))
      (if up
          (up (contents x))
          #f)))
  (let* ((tower-from-here (member current-type tower)))
    (if (or (not tower-from-here)
            (not (member target tower-from-here)))
        #f ;; this raise can't happen
        (let rec ((ll (cdr tower-from-here)))
          (if (eqv? target (car ll))
              (try-coerce (car ll))
              (let ((try-harder
                     (rec (cdr ll))))
                (if try-harder
                    try-harder
                    (try-coerce (car ll)))))))))

(put-coercion 'scheme-number 'rational
              (lambda(num)
                (make-rational num 1)))
<<eqnumber>>
(put-coercion 'rational 'real
              (lambda(num)
                (let ((result (div ((get 'numer '(rational)) num)
                                   ((get 'denom '(rational)) num))))
                  (if (number? result)
                      (make-real (exact->inexact result))
                      #f))))
(put-coercion 'real 'complex
              (lambda(num)
                (make-complex-from-real-imag
                 num 0)))
(let ((raised-poly (lambda(num tag)
                       (make-polynomial 'DISCARD-ME
                                        (list (list 0 (attach-tag tag num)))))))
  (put-coercion 'scheme-number 'polynomial
                (lambda(num)
                  (raised-poly num 'scheme-number)))
  (put-coercion 'rational 'polynomial
                (lambda(num)
                  (raised-poly num 'rational)))
  (put-coercion 'real 'polynomial
                (lambda(num)
                  (raised-poly num 'real)))
  (put-coercion 'complex 'polynomial
                (lambda(num)
                  (raised-poly num 'complex))))
```

<a id="code-snippet--apply-generic-raiseto"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
;; Version of apply-generic that tries to drop its type
;; when returning
(define (apply-generic op . args)
  (define types (map type-tag args))
  (define (map-raise highest-type item)
    (if (equal? (type-tag item) highest-type)
        item
        (let ((raised (raise-to item highest-type)))
          (if (not raised)
              (error "MAP-RAISE: could not raise" item highest-type)
              (map-raise highest-type raised)))))

  (drop
   (let ((proc (get op types)))
     (if proc ; is this already doable?
         (apply proc (map contents args))
                                        ; if not, try type coercion

         (let* ((highest-type (apply latest-in-tower types))
                (map-raise-prime (lambda(item)(map-raise highest-type item)))
                (raised (map map-raise-prime args)))
           (if (< (length raised) 3)
               ;; short args
               (let ((f (get op (map type-tag raised))))
                 (if (eqv? #f f)
                     (error "APPLY-GENERIC: could not find procedure for types" (map type-tag raised) raised)
                     (apply f (map contents raised))))
               ;; long args
               (reduce (lambda(elem previous)
                         (apply-generic op previous elem))
                       "ERROR" raised)))))))
```

<a id="code-snippet--polynomial-rf-top"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
(define (install-polynomial-package) 'no)
  ;; internal procedures
  ;; representation of poly
  (define (make-poly variable term-list)
    (cons variable
          (convert-termlist-if-reasonable term-list)))
  (define (convert-termlist-if-reasonable term-list)
    (if (empty-termlist? term-list)
        term-list
        (cond ((sparse-termlist? term-list)
               (let ((tl (sort-sparse-terms term-list)))
                 (if (should-be-sparse? tl)
                     tl
                     (sparse-to-dense tl))))
              ((should-be-sparse? term-list)
               (dense-to-sparse term-list))
              (else term-list))))
  (define (variable p) (car p))
  (define (terms p) (cdr p))
  (define (variable? x) (symbol? x))
  (define (same-variable? v1 v2)
    (and (variable? v1) (variable? v2) (eq? v1 v2)))

  ;; representation of terms and term lists
(define (sparse-termlist? term-list)
  (let ((t (car term-list)))
    (cond ((and (pair? t) ;; looks like a sparse list
                (number? (first t))
                (or (pair? (second t)) ;; or sparse with nested poly
                    (number? (second t))
                    (empty-termlist? (second t)))) #t)
          ((or (number? t) ;; looks dense
               (pair? t)
               (empty-termlist? term-list)) #f) ;; or dense with a nested poly
          (else (error "badly formed term: SPARSE-TERMLIST?" t term-list)))))
(define (sort-sparse-terms term-list)
  (sort term-list (lambda(t1 t2)
                    (> (order t1)
                       (order t2)))))
  (define (should-be-sparse? term-list)
    ;; sparse or dense term-list -> bool
    ;; if more than half of term-list is zeroes, return true
    ;; reasoning:
    ;; - number of elements used for sparse list is (non-zero elements * 2)
    ;; - number of elements used for dense list is (highest order)
    (define (count-zeroes term-list)
      ;; term-list -> (highest order, zeroes)
      (let iter ((length 0)
                 (zeroes 0)
                 (TL (if (sparse-termlist? term-list)
                         (sparse-to-dense term-list)
                         term-list)))
        (if (empty-termlist? TL)
            (list zeroes length)
            (iter (1+ length)
                  (if (=zero? (car TL))
                      (1+ zeroes)
                      zeroes)
                  (cdr TL)))))
    (let ((stats (if (sparse-termlist? term-list) ;; do appropriate measurement
                     (list (- (1+ (order (sparse-first-term term-list)))
                              (length term-list))
                           (1+ (order (sparse-first-term term-list))))
                     (count-zeroes term-list))))
      (let ((zero-elements (first stats))
            (highest-order (second stats)))
        (> (/ zero-elements highest-order)
           (/ 1 2)))))
  (define (sparse-to-dense term-list)
    (let iter ((old-list (reverse term-list))
               (new-list (the-empty-termlist)))
      (if (empty-termlist? old-list)
          new-list
          (iter (rest-terms old-list)
                (adjoin-term-dense (sparse-first-term old-list)
                                   new-list)))))
  (define (dense-to-sparse term-list)
    (let iter ((old-list (reverse term-list))
               (old-order 0)
               (new-list (the-empty-termlist)))
      (if (empty-termlist? old-list)
          new-list
          (iter (rest-terms old-list)
                (1+ old-order)
                (adjoin-term-sparse (make-sparse-term old-order
                                                      (coeff (dense-first-term old-list)))
                                    new-list)))))
  (define (make-sparse-term order coeff)
    (list order coeff))
  (define (dense-termlist-order term-list)
    (1- (length term-list)))
  (define (dense-first-term term-list)
    (make-sparse-term (dense-termlist-order term-list)
                      (car term-list)))
  (define (sparse-first-term term-list)
    (car term-list))
  (define (first-term term-list)
    (if (sparse-termlist? term-list)
        (sparse-first-term term-list)
        (dense-first-term term-list)))
  (define (adjoin-term-sparse term term-list)
    (cons term term-list))
  (define (adjoin-term-dense term term-list)
    ;; if term is exactly 1 order above top of list, adjoin
    ;; if term is more than 1 order above, adjoin 0 and recurse
    (let ((top-order (dense-termlist-order term-list)))
      (cond ((= (1+ top-order) (order term))
             (cons (coeff term) term-list))
            ((<= top-order (order term))
             (adjoin-term-dense term (cons 0 term-list)))
            (else (error "term is lower order than top of list: ADJOIN-TERM-DENSE" term term-list top-order)))))

  ;; ;; I wrote the versions below which can insert into the middle of the list,
  ;; ;; before remembering that a footnote in the text excuses this.
  ;;
  ;; (define (adjoin-term-sparse term term-list)
  ;;   ;; if term is higher order, cons to list
  ;;   ;; if term is lower order than top of list, try to insert in the middle
  ;;   (let ((top-order (order (sparse-first-term term-list))))
  ;;     (cond ((<= (1+ top-order) (order term))
  ;;            (cons term term-list))
  ;;           (else (adjoin-term-sparse (sparse-first-term term-list)
  ;;                                     (adjoin-term-sparse term
  ;;                                                         (rest-terms term-list)))))))
  ;; (define (adjoin-term-dense term term-list)
  ;;   ;; if term is 1 order above top of list, adjoin
  ;;   ;; if term is more than 1 order above, adjoin 0 and recurse
  ;;   ;; if term is lower order than top of list, try to insert in the middle
  ;;   (let ((top-order (dense-termlist-order term-list)))
  ;;     (cond ((= (1+ top-order) (order term))
  ;;            (cons (coeff term) term-list))
  ;;           ((<= top-order (order term))
  ;;            (adjoin-term-dense term (cons 0 term-list)))
  ;;           (else (adjoin-term-dense (dense-first-term term-list)
  ;;                                    (adjoin-term-dense term
  ;;                                                       (rest-terms term-list)))))))

  (define (adjoin-term term term-list)
    (if (=zero? (coeff term))
        term-list
        (if (or (empty-termlist? term-list)
                (sparse-termlist? term-list))
            (adjoin-term-sparse term term-list)
            (adjoin-term-dense term term-list))))
  (define (the-empty-termlist) '())
  (define (rest-terms term-list) (cdr term-list))
  (define (empty-termlist? term-list) (null? term-list))
  (define (order term) (first term))
  (define (coeff term) (second term))
  (define (add-poly p1 p2)
    (if (same-variable? (variable p1) (variable p2))
        (make-poly (variable p1)
                   (add-terms (terms p1) (terms p2)))
        (error "Polys not in same var: ADD-POLY" (list p1 p2))))
  (define (mul-poly p1 p2)
    (if (same-variable? (variable p1) (variable p2))
        (make-poly (variable p1)
                   (mul-terms (terms p1) (terms p2)))
        (error "Polys not in same var: MUL-POLY" (list p1 p2))))
  (define (add-terms L1 L2)
    (cond ((empty-termlist? L1) L2)
          ((empty-termlist? L2) L1)
          (else
           (let ((t1 (first-term L1))
                 (t2 (first-term L2)))
             (cond ((> (order t1) (order t2))
                    (adjoin-term
                     t1 (add-terms (rest-terms L1) L2)))
                   ((< (order t1) (order t2))
                    (adjoin-term
                     t2 (add-terms L1 (rest-terms L2))))
                   (else
                    (adjoin-term
                     (make-sparse-term (order t1)
                                       (add (coeff t1) (coeff t2)))
                     (add-terms (rest-terms L1)
                                (rest-terms L2)))))))))
  (define (mul-terms L1 L2)
    (if (empty-termlist? L1)
        (the-empty-termlist)
        (add-terms (mul-term-by-all-terms (first-term L1) L2)
                   (mul-terms (rest-terms L1) L2))))

  ;; interface to rest of the system
  (define (tag p) (attach-tag 'polynomial p))
  (put 'add '(polynomial polynomial)
       (lambda (p1 p2) (tag (add-poly p1 p2))))
  (put 'mul '(polynomial polynomial)
       (lambda (p1 p2) (tag (mul-poly p1 p2))))
  (put 'make 'polynomial
       (lambda (var terms) (tag (make-poly var terms))))
  (define (if-1st-poly-make-2nd-poly t1 t2)
    (if (and (eqv? 'polynomial (type-tag t1))
             (not (eqv? 'polynomial (type-tag t2))))
        (tag (make-poly (variable (contents t1)) (list t2)))
        t2))
  (define (mul-term-by-all-terms t1 L)
    (if (empty-termlist? L)
        (the-empty-termlist)
        (let* ((t2 (first-term L)) ;; If one coeff is a poly, make the other a poly
               (t1-coeff (if-1st-poly-make-2nd-poly (coeff t2) (coeff t1)))
               (t2-coeff (if-1st-poly-make-2nd-poly (coeff t1) (coeff t2))))

          (adjoin-term
           (make-sparse-term (+ (order t1) (order t2))
                             (mul t1-coeff t2-coeff))
           (mul-term-by-all-terms t1 (rest-terms L))))))
  (define (terms-=zero? L)
    (or (empty-termlist? L)
        (and (=zero? (coeff (first-term L)))
             (terms-=zero? (rest-terms L)))))
  (define (poly-=zero? p)
    (terms-=zero? (terms p)))
  (put '=zero? '(polynomial) poly-=zero?)
  (define (neg-terms TL)
    (let ((negterm (if (sparse-termlist? TL)
                       (lambda(t)
                         (make-sparse-term (order t) (neg (coeff t))))
                       (lambda(t)
                         (neg (coeff t))))))
      (map negterm TL)))
  (define (sub-terms T1 T2)
    (add-terms T1 (neg-terms T2)))
  (define (neg-poly p)
    (make-poly (variable p)
               (neg-terms (terms p))))
  (put 'neg '(polynomial)
       (lambda (p1) (tag (neg-poly p1))))
  (define (sub-poly p1 p2)
    (add-poly p1 (neg-poly p2)))
  (put 'sub '(polynomial polynomial)
       (lambda (p1 p2) (tag (sub-poly p1 p2))))
```

<a id="code-snippet--polynomial-projection"></a>
```scheme { linenos=true, linenostart=1 }
(define (trivial-poly? poly)
  (and (= 1 (length (terms poly)))
       (= 0 (order (first-term (terms poly))))))
;;; TODO: get working once cross-variable comparisons can be done
(put 'project 'polynomial
     (lambda (p)
       (if (not (trivial-poly? p))
           #f
           (coeff (first-term (terms p))))))
(define (equ?-terms t1 t2)
  (and (= (order t1)
          (order t2))
       (equ? (coeff t1)
             (coeff t2))))
(define (equ?-termlists tl1 tl2)
         (let iter ((term-list1 tl1)
                    (term-list2 tl2))
           (cond ((and (empty-termlist? term-list1)
                       (empty-termlist? term-list2))
                  #t)
                 ((or (empty-termlist? term-list1)
                      (empty-termlist? term-list2))
                  #f)
                 ((equ?-terms (first-term term-list1)
                              (first-term term-list2))
                  (iter (rest-terms term-list1)
                        (rest-terms term-list2)))
                 (else #f))))
(define (equ?-poly p q)
  (cond ((and (trivial-poly? p)
              (trivial-poly? q))
         (equ? (coeff (first-term (terms p)))
               (coeff (first-term (terms q)))))
        ((same-variable? (variable p) (variable q))
         (equ?-termlists (terms p) (terms q)))
        ((trivial-poly? p)
         (equ?-poly (make-poly (variable q) (terms p))
                    q))
        ((trivial-poly? q)
         (equ?-poly p
                    (make-poly (variable p) (terms q))))
        (else (error "different vars not supported yet : EQU?-POLY" p q))))
(put 'equ? '(polynomial polynomial)
     equ?-poly)
```

<a id="code-snippet--polynomial-rf-bottom"></a>
```scheme { linenos=true, linenostart=1 }
;; polynomial procedures
;  'done)
(define (make-polynomial var terms)
  ((get 'make 'polynomial) var terms))
```

<a id="code-snippet--generic-arithmetic-rational-functions"></a>
```scheme { linenos=true, linenostart=1 }
(define (add x y) (apply-generic 'add x y))
(define (sub x y) (apply-generic 'sub x y))
(define (mul x y) (apply-generic 'mul x y))
(define (div x y) (apply-generic 'div x y))
(define (real-part z) (apply-generic 'real-part z))
(define (imag-part z) (apply-generic 'imag-part z))
(define (magnitude z) (apply-generic 'magnitude z))
(define (angle z) (apply-generic 'angle z))
;; Now we begin to change code for support
;; These will be named slightly different so the primitive
;; functions aren't shadowed
(define (square x) (mul x 2))
(define (sine x) (apply-generic 'sine x)) ;; (sin)
(define (cosine x) (apply-generic 'cosine x)); (cos)
(define (square-root x) (apply-generic 'square-root x));(sqrt)
(define (arctan x y) (apply-generic 'arctan x y));(atan)

(define (make-scheme-number n)
  ((get 'make 'scheme-number) n))
(define (install-scheme-number-package)
  (define (tag x) (attach-tag 'scheme-number x))
  (put 'add '(scheme-number scheme-number)
       (lambda (x y) (tag (+ x y))))
  (put 'sub '(scheme-number scheme-number)
       (lambda (x y) (tag (- x y))))
  (put 'mul '(scheme-number scheme-number)
       (lambda (x y) (tag (* x y))))
  (put 'div '(scheme-number scheme-number)
       (lambda (x y) (tag (/ x y))))
  (put 'sine '(scheme-number)
       (lambda (x) (tag (sin x))))
  (put 'cosine '(scheme-number)
       (lambda (x) (tag (cos x))))
  (put 'square-root '(scheme-number)
       (lambda (x) (tag (sqrt x))))
  (put 'arctan '(scheme-number scheme-number)
       (lambda (x y) (tag (atan x y))))
  (put 'make 'scheme-number (lambda (x) (tag x)))
  'done)

(define (install-rational-package)
  ;; internal procedures
  (define (numer x) (first x))
  (define (denom x) (second x))
  (define (make-rat n d)
    (list n d))
  (define (add-rat x y)
    (make-rat (add (mul (numer x) (denom y))
                   (mul (numer y) (denom x)))
              (mul (denom x) (denom y))))
  (define (sub-rat x y)
    (make-rat (sub (mul (numer x) (denom y))
                   (mul (numer y) (denom x)))
              (mul (denom x) (denom y))))
  (define (mul-rat x y)
    (make-rat (mul (numer x) (numer y))
              (mul (denom x) (denom y))))
  (define (div-rat x y)
    (make-rat (mul (numer x) (denom y))
              (mul (denom x) (numer y))))
  ;; interface to rest of the system
  (define (tag x) (attach-tag 'rational x))
  (put 'add '(rational rational)
       (lambda (x y) (tag (add-rat x y))))
  (put 'sub '(rational rational)
       (lambda (x y) (tag (sub-rat x y))))
  (put 'mul '(rational rational)
       (lambda (x y) (tag (mul-rat x y))))
  (put 'div '(rational rational)
       (lambda (x y) (tag (div-rat x y))))
  (put 'make 'rational
       (lambda (n d) (tag (make-rat n d))))
  (put 'numer '(rational) numer)
  (put 'denom '(rational) denom)
  (put 'sine '(rational)
       (lambda(r) ((get 'sine '(scheme-number))
                   (div (numer r) (denom r)))))
  (put 'cosine '(rational)
       (lambda(r) ((get 'cosine '(scheme-number))
                   (div (numer r) (denom r)))))
  (put 'square-root '(rational)
       (lambda(r) ((get 'square-root '(scheme-number))
                   (div (numer r) (denom r)))))
  (put 'arctan '(rational)
       (lambda(r s) ((get 'arctan '(scheme-number))
                     (div (numer r) (denom r)) (div (numer s) (denom s)))))
  'done)

;; for future use
(define (numer r)
  ((get 'numer '(rational))
   (contents r)))
(define (denom r)
  ((get 'denom '(rational))
   (contents r)))

(define (make-rational n d)
  ((get 'make 'rational) n d))

(define (install-rectangular-package)
  ;; internal procedures
  (define (real-part z) (car z))
  (define (imag-part z) (cdr z))
  (define (make-from-real-imag x y) (cons x y))
  (define (magnitude z)
    (square-root (add (square (real-part z))
                      (square (imag-part z)))))
  (define (angle z)
    (arctan (imag-part z) (real-part z)))
  (define (make-from-mag-ang r a)
    (cons (mul r (cosine a)) (mul r (sine a))))
  ;; interface to the rest of the system
  (define (tag x) (attach-tag 'rectangular x))
  (put 'real-part '(rectangular) real-part)
  (put 'imag-part '(rectangular) imag-part)
  (put 'magnitude '(rectangular) magnitude)
  (put 'angle '(rectangular) angle)
  (put 'make-from-real-imag 'rectangular
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'rectangular
       (lambda (r a) (tag (make-from-mag-ang r a))))
  'done)

(define (install-polar-package)
  ;; internal procedures
  (define (magnitude z) (car z))
  (define (angle z) (cdr z))
  (define (make-from-mag-ang r a) (cons r a))
  (define (real-part z) (mul (magnitude z) (cosine (angle z))))
  (define (imag-part z) (mul (magnitude z) (sine (angle z))))
  (define (make-from-real-imag x y)
    (cons (sqrt (+ (square x) (square y)))
          (atan y x)))
  ;; interface to the rest of the system
  (define (tag x) (attach-tag 'polar x))
  (put 'real-part '(polar) real-part)
  (put 'imag-part '(polar) imag-part)
  (put 'magnitude '(polar) magnitude)
  (put 'angle '(polar) angle)
  (put 'make-from-real-imag 'polar
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'polar
       (lambda (r a) (tag (make-from-mag-ang r a))))
  'done)

(define (install-complex-package)
  (define (make-from-real-imag x y)
    ((get 'make-from-real-imag 'rectangular) x y))
  (define (make-from-mag-ang r a)
    ((get 'make-from-mag-ang 'polar) r a))
  ;; let's make these generic
  (define (add-complex z1 z2)
    (make-from-real-imag (add (real-part z1) (real-part z2))
                         (add (imag-part z1) (imag-part z2))))
  (define (sub-complex z1 z2)
    (make-from-real-imag (sub (real-part z1) (real-part z2))
                         (sub (imag-part z1) (imag-part z2))))
  (define (mul-complex z1 z2)
    (make-from-mag-ang (mul (magnitude z1) (magnitude z2))
                       (add (angle z1) (angle z2))))
  (define (div-complex z1 z2)
    (make-from-mag-ang (div (magnitude z1) (magnitude z2))
                       (sub (angle z1) (angle z2))))
  ;; interface to rest of the system
  (define (tag z) (attach-tag 'complex z))
  (put 'add '(complex complex)
       (lambda (z1 z2) (tag (add-complex z1 z2))))
  (put 'sub '(complex complex)
       (lambda (z1 z2) (tag (sub-complex z1 z2))))
  (put 'mul '(complex complex)
       (lambda (z1 z2) (tag (mul-complex z1 z2))))
  (put 'div '(complex complex)
       (lambda (z1 z2) (tag (div-complex z1 z2))))
  (put 'make-from-real-imag 'complex
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'complex
       (lambda (r a) (tag (make-from-mag-ang r a))))
  (put 'real-part '(complex) real-part)
  (put 'imag-part '(complex) imag-part)
  (put 'magnitude '(complex) magnitude)
  (put 'angle '(complex) angle))

(define (make-complex-from-real-imag x y)
  ((get 'make-from-real-imag 'complex) x y))
(define (make-complex-from-mag-ang r a)
  ((get 'make-from-mag-ang 'complex) r a))

(define (project x)
  (let ((t1 (type-tag x)))
    (let ((p (get 'project t1)))
      (if p
          (p (contents x))
          #f))))

(define (drop x)
  (if (not (pair? x))
      x
      (let ((projected (project x)))
        (cond ((eqv? projected #f)
               x)
              ((equ? x projected)
               (drop projected))
              (else x)))))

(put 'project 'rational
     (lambda(num)
       ((get 'numer '(rational))
        num)))
(put 'project 'real
     (lambda(num)
       (round num)))
;; projecting a complex number may return something other than a single number
(put 'project 'complex
     (lambda(num)
       (let ((r ((get 'real-part '(complex)) num)))
         (if (number? (contents r))
             (make-real (contents r))
             r))))

;; equality testing with complex numbers also changes
(define (equ? x y) (apply-generic 'equ? x y))
(define (install-equ?)
  (put 'equ? '(scheme-number scheme-number)
       (lambda(x y) (= x y)))
  (put 'equ? '(complex complex)
       (lambda(x y)
         (let ((t1 (type-tag x))
               (t2 (type-tag y)))
           (cond ((and (eqv? t1 'polar)
                       (eqv? t2 'polar))
                  (and (equ? (apply-generic 'magnitude x)
                             (apply-generic 'magnitude y))
                       (equ? (apply-generic 'angle x)
                             (apply-generic 'angle y))))
                 (else
                  (and (equ? (apply-generic 'real-part x)
                             (apply-generic 'real-part y))
                       (equ? (apply-generic 'imag-part x)
                             (apply-generic 'imag-part y))))))))
  (put 'equ? '(rational rational)
       (lambda(x y)
         (and (equ? ((get 'numer '(rational)) x)
                 ((get 'numer '(rational)) y))
              (equ? ((get 'denom '(rational)) x)
                 ((get 'denom '(rational)) y)))))
  (put 'equ? '(real real)
       (lambda(x y) (= x y))))
```

<a id="code-snippet--eqzero?-rf"></a>
```scheme { linenos=true, linenostart=1 }
(define (=zero? x) (apply-generic '=zero? x))
(define (install-=zero?)
  (put '=zero? '(scheme-number)
       (lambda(x) (= x 0)))
  (put '=zero? '(complex)
       (lambda(x)
         (apply-generic '=zero? x)))
  (let ((magnitude (get 'magnitude '(polar))))
    (put '=zero? '(polar)
         (lambda(x)
           (= 0 (magnitude x)))))
  (let ((real-part (get 'real-part '(rectangular)))
        (imag-part (get 'imag-part '(rectangular))))
    (put '=zero? '(rectangular)
         (lambda(x)
           (and (=zero? (real-part x))
                (=zero? (imag-part x))))))
  (put '=zero? '(rational)
       (lambda(x)
         (or (=zero? ((get 'numer '(rational)) x))
             (=zero? ((get 'denom '(rational)) x))))))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-raiseto>>
<<generic-arithmetic-rational-functions>>
<<real-package>>
<<eqzero?-rf>>
<<real-package>>

<<tower-coercions-rf>>

<<polynomial-rf-top>>
<<polynomial-projection>>
<<polynomial-division>>
<<polynomial-rf-bottom>>

<<generic-negation>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
(install-polynomial-package)
(install-negation)

<<gen-math-tests>>

(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-polynomial 'x '((3 2)(1 1))))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
(mattcheck "drop 1"
           (drop (make-complex-from-real-imag 5 0))
           5)
(mattcheck "drop 2"
           (drop (make-real 5))
           5)
(mattcheck "drop 3"
           (drop (make-rational 5 1))
           5)
(mattcheck "complex with nested rational"
           (make-complex-from-real-imag 2 (make-rational 3 5))
           (cons 'complex (cons 'rectangular (cons 2 (list 'rational 3 5)))))
(mattcheck "math on complex with nested rational"
           (add (make-complex-from-real-imag 2 (make-rational 3 5))
                (make-complex-from-mag-ang (make-rational 3 5) 2))
           (cons 'complex (cons 'rectangular
                                (cons (list 'rational 8.751559490358574 5)
                                      (list 'rational 28.639461402385223 25)))))
(mattcheck "polynomial = zero"
           (=zero? (make-polynomial 'x '((0 0)))))
(mattcheck "polynomial != zero" #f
           (=zero? (make-polynomial 'x '((1 1)(0 1)))))

(define p1 '((100 1)(2 2)(0 1)))
(define p2 (list (list 7 (make-polynomial 'x '((3 2))))))
(define p3 '((100 1)(2 1)(0 3)))
(define p4 '((100 -1)(2 -2)(0 -1)))
(define p5 '(8 2 5 -3 -7))
(define p7 '((1 1)(0 1)))
(define p6 '((3 1)(0 1)))
(define p66 '(1 0 0 1))
(define p77 '(1 1))
(define p8 (make-polynomial 'x '((2 1) (0 1))))
(define p9 (make-polynomial 'x '((3 1) (0 1))))
(define p98 (make-rational p9 p8))
  (mattcheck "polynomial addition"
             (add (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (100 2)(2 4)(0 2)))
  (mattcheck "polynomial multiplication"
             (mul (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (200 1) (102 4) (100 2) (4 4) (2 4) (0 1)))
  (mattcheck "nested polynomial addition"
             (add (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (100 1) (7 (polynomial x (3 2))) (2 2) (0 1)))
  (mattcheck "nested polynomial mult"
             (mul (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (107 (polynomial x (3 2))) (9 (polynomial x (3 4))) (7 (polynomial x (3 2)))))
  (mattcheck "negation scheme-number"
             (neg 5) -5)
  (mattcheck "negation rational"
             (neg (make-rational 1 5))
             (make-rational -1 5))
  (mattcheck "negation rectangular complex"
             (neg (make-complex-from-real-imag 3 7))
             (make-complex-from-real-imag -3 -7))
  (mattcheck "negation polar complex"
             (neg (make-complex-from-mag-ang 3 7))
             (make-complex-from-mag-ang -3 7))

  (mattcheck "negation polynomials"
             (neg (make-polynomial 'x p1))
             (make-polynomial 'x p4))
  (mattcheck "polynomial subtraction"
             (sub (make-polynomial 'x p1)
                  (make-polynomial 'x p3))
             '(polynomial x 1 0 -2))
  (mattcheck "polynomial division 1"
             (div (make-polynomial 'x p6)
                  (make-polynomial 'x p7))
             '((polynomial x 1 -1 1) (polynomial x)))
  (mattcheck "polynomial division 2"
             (div (make-polynomial 'x p7)
                  (make-polynomial 'x p6))
             '((polynomial x) (polynomial x 1 1)))
  (mattcheck "polynomial division 3"
             (div (make-polynomial 'x p66)
                  (make-polynomial 'x p77))
             '((polynomial x 1 -1 1) (polynomial x)))
  (mattcheck "rational functions"
             (add p98 p98)
             '(rational (polynomial x 2 0 2 2 0 2) (polynomial x 1 0 2 0 1)))
```

```text
<...>
SUCCEED at rational functions
```


### <span class="section-num">3.107</span> Exercise 2.94: GCD of polynomials {#exercise-2-dot-94-gcd-of-polynomials}


#### <span class="section-num">3.107.1</span> Question {#question}

Using <span class="inline-src language-scheme" data-lang="scheme">`div-terms`</span>, implement the procedure <span class="inline-src language-scheme" data-lang="scheme">`remainder-terms`</span>
and use this to define <span class="inline-src language-scheme" data-lang="scheme">`gcd-terms`</span> as above. Now write a procedure
<span class="inline-src language-scheme" data-lang="scheme">`gcd-poly`</span> that computes the polynomial GCD of two polys. (The
procedure should signal an error if the two polys are not in the same variable.)
Install in the system a generic operation <span class="inline-src language-scheme" data-lang="scheme">`greatest-common-divisor`</span>
that reduces to <span class="inline-src language-scheme" data-lang="scheme">`gcd-poly`</span> for polynomials and to ordinary
<span class="inline-src language-scheme" data-lang="scheme">`gcd`</span> for ordinary numbers. As a test, try

```scheme { linenos=true, linenostart=1 }
(define p1 (make-polynomial
            'x '((4 1) (3 -1) (2 -2) (1 2))))
(define p2 (make-polynomial 'x '((3 1) (1 -1))))
(greatest-common-divisor p1 p2)
```

and check your result by hand.


#### <span class="section-num">3.107.2</span> Answer {#answer}

An important change had to be made here. Dense termlists are padded with zeroes,
while sparse ones are not. This is fine for addition (and subtraction on the
right side) but it can be a problem otherwise. So `dense-first-term` needs to
find the first non-zero coefficient to return, `rest-terms` needs to chop off
leading zeroes for dense lists, and `adjoin-term-sparse` should probably be
amended to skip zeroes so this doesn't happen with sparse lists.

I've also had to rescue some "refugees" from [Exercise 2.92](#exercise-2-dot-92-operating-on-polys-in-different-variables), such as `map-terms`.

<a id="code-snippet--polynomial-densepadding-top"></a>
```scheme { linenos=true, linenostart=1 }
(use-srfis '(1))
(define (install-polynomial-package) 'no)
;; internal procedures
;; representation of poly
(define (make-poly variable term-list)
  (cons variable
        (convert-termlist-if-reasonable term-list)))
(define (convert-termlist-if-reasonable term-list)
  (if (empty-termlist? term-list)
      term-list
      (cond ((sparse-termlist? term-list)
             (let ((tl (sort-sparse-terms term-list)))
               (if (should-be-sparse? tl)
                   tl
                   (sparse-to-dense tl))))
            ((should-be-sparse? term-list)
             (dense-to-sparse term-list))
            (else term-list))))
(define (variable p) (car p))
(define (terms p) (cdr p))
(define (variable? x) (symbol? x))
(define (same-variable? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))

;; representation of terms and term lists
(define (sparse-termlist? term-list)
  (if (empty-termlist? term-list)
      #t
      (let ((t (car term-list)))
        (cond ((and (pair? t) ;; looks like a sparse list
                    (number? (first t))
                    (or (pair? (second t)) ;; or sparse with nested poly
                        (number? (second t)))) #t)
              ((or (number? t) ;; looks dense
                   (and (pair? t)
                        (not (number? (first t))));; or dense with a nested poly
                   (eq? #f t)) #f) ;; or dense with an empty entry
              (else (error "badly formed term: SPARSE-TERMLIST?" t term-list))))))
(define (sort-sparse-terms term-list)
  (sort term-list (lambda(t1 t2)
                    (> (order t1)
                       (order t2)))))
(define (should-be-sparse? term-list)
  ;; sparse or dense term-list -> bool
  ;; if more than half of term-list is zeroes, return true
  ;; reasoning:
  ;; - number of elements used for sparse list is (non-zero elements * 2)
  ;; - number of elements used for dense list is (highest order)
  (define (count-zeroes term-list)
    ;; term-list -> (highest order, zeroes)
    (let iter ((length 0)
               (zeroes 0)
               (TL (if (sparse-termlist? term-list)
                       (sparse-to-dense term-list)
                       term-list)))
      (if (empty-termlist? TL)
          (list zeroes length)
          (iter (1+ length)
                (if (=zero? (car TL))
                    (1+ zeroes)
                    zeroes)
                (cdr TL)))))
  (let ((stats (if (sparse-termlist? term-list) ;; do appropriate measurement
                   (list (- (1+ (order (sparse-first-term term-list)))
                            (length term-list))
                         (1+ (order (sparse-first-term term-list))))
                   (count-zeroes term-list))))
    (let ((zero-elements (first stats))
          (highest-order (second stats)))
      (> (/ zero-elements highest-order)
         (/ 1 2)))))
(define (sparse-to-dense term-list)
  (let iter ((old-list (reverse term-list))
             (new-list (the-empty-termlist)))
    (if (empty-termlist? old-list)
        new-list
        (iter (rest-terms old-list)
              (adjoin-term-dense (sparse-first-term old-list)
                                 new-list)))))
(define (dense-to-sparse term-list)
  (let iter ((old-list (reverse term-list))
             (old-order 0)
             (new-list (the-empty-termlist)))
    (if (empty-termlist? old-list)
        new-list
        (iter (rest-terms old-list)
              (1+ old-order)
              (adjoin-term-sparse (make-sparse-term old-order
                                                    (coeff (dense-first-term old-list)))
                                  new-list)))))
(define (make-sparse-term order coeff)
  (list order coeff))
(define (dense-rest-terms term-list)
  (let ((rest (cdr term-list)))
    (if (empty-termlist? rest)
        (the-empty-termlist)
        (let ((c (car rest)))
          (if (eq? #f c)
              (dense-rest-terms rest)
              rest)))))
(define (rest-terms term-list)
  (if (sparse-termlist? term-list)
      (cdr term-list)
      (dense-rest-terms term-list)))
(define (dense-termlist-order term-list)
  (1- (length term-list)))
(define (sparse-termlist-order term-list)
  (order (sparse-first-term term-list)))
(define (termlist-order term-list)
  (if (sparse-termlist? term-list)
      (sparse-termlist-order term-list)
      (dense-termlist-order term-list)))
;; always O(n)
(define (dense-first-term term-list)
  (let ((c (car term-list)))
    (if (eq? #f c)
        (dense-first-term (dense-rest-terms term-list))
        (make-sparse-term (dense-termlist-order term-list) c))))
(define (sparse-first-term term-list)
  (car term-list))
(define (add-sparse-term-to-sparse-term t1 t2)
  (make-sparse-term (order t1)
                    (add (coeff t1) (coeff t2))))
(define (first-term term-list)
  (if (sparse-termlist? term-list)
      (sparse-first-term term-list)
      (dense-first-term term-list)))
(define (adjoin-term-sparse term term-list)
  ;; if term is higher order, cons to list
  ;; if equal, replace or add
  ;; if term is lower order than top of list, try to insert in the middle
  (if  (empty-termlist? term-list)
       (cons term term-list)
       (let ((top-order (order (sparse-first-term term-list))))
         (cond ((<= (1+ top-order) (order term))
                (cons term term-list))
               ((= top-order (order term))
                (if (=zero? (coeff (sparse-first-term term-list)))
                    ;; replace if it's zero
                    (cons term (rest-terms term-list))
                    ;; and add if it's not
                    (let ((result (add-sparse-term-to-sparse-term term
                                                                  (sparse-first-term term-list))))
                      (cons result
                            (rest-terms term-list)))))
               (else (adjoin-term-sparse (sparse-first-term term-list)
                                         (adjoin-term-sparse term
                                                             (rest-terms term-list))))))))
(define (adjoin-term-dense term term-list)
  ;; if term is lower order than top of list, try to insert in the middle
  (let ((top-order (dense-termlist-order term-list)))
    (cond ((= (1+ top-order) (order term))
           ;; if term is 1 order above top of list, adjoin
           (cons (coeff term) term-list))
          ;; if term shares order with top of list,
          ((= top-order (order term))
           (if (=zero? (coeff (dense-first-term term-list)))
               ;; replace if it's zero
               (cons (coeff term)
                     (rest-terms term-list))
               ;; and add if it's not
               (let ((result (add-sparse-term-to-sparse-term term
                                                             (dense-first-term term-list))))
                 (cons (coeff result)
                       (rest-terms term-list)))))
          ((< top-order (order term))
           (adjoin-term-dense term (cons #f term-list)))
          ;; if term is more than 1 order above, adjoin 0 and recurse
          (else (adjoin-term-dense (dense-first-term term-list)
                                   (adjoin-term-dense term
                                                      (rest-terms term-list)))))))

(define (adjoin-term term term-list)
  (if (=zero? (coeff term))
      term-list
      (if (or (empty-termlist? term-list)
              (sparse-termlist? term-list))
          (adjoin-term-sparse term term-list)
          (adjoin-term-dense term term-list))))
(define (the-empty-termlist) '())
(define (empty-termlist? term-list)
  (or (null? term-list)
      (and (eq? #f (car term-list))
           (empty-termlist? (cdr term-list)))))
(define (order term) (first term))
(define (coeff term) (second term))
(define (map-terms f tl)
  ;; f is called (f order coeff)
  (let iter ((result '())
             (term-list tl))
    (if (empty-termlist? term-list)
        (reverse result)
        (iter (cons (let ((t (first-term term-list)))
                      (f (order t) (coeff t)))
                    result)
              (rest-terms term-list)))))
(define (map2-terms f tl1 tl2)
  (let iter ((result '())
             (term-list1 tl1)
             (term-list2 tl2))
    (if (or (empty-termlist? term-list1)
            (empty-termlist? term-list2))
        (reverse result)
        (iter (cons (let ((t1 (first-term term-list))
                          (t2 (first-term term-list)))
                      (f (order t1) (coeff t1)
                         (order t2) (coeff t2)))
                    result)
              (rest-terms term-list1)
              (rest-terms term-list2)))))
(define (add-poly p1 p2)
  (if (same-variable? (variable p1) (variable p2))
      (make-poly (variable p1)
                 (add-terms (terms p1) (terms p2)))
      (error "Polys not in same var: ADD-POLY" (list p1 p2))))
(define (mul-poly p1 p2)
  (if (same-variable? (variable p1) (variable p2))
      (make-poly (variable p1)
                 (mul-terms (terms p1) (terms p2)))
      (error "Polys not in same var: MUL-POLY" (list p1 p2))))
(define (add-terms L1 L2)
  (cond ((empty-termlist? L1) L2)
        ((empty-termlist? L2) L1)
        (else
         (let ((t1 (first-term L1))
               (t2 (first-term L2)))
           (cond ((> (order t1) (order t2))
                  (adjoin-term
                   t1 (add-terms (rest-terms L1) L2)))
                 ((< (order t1) (order t2))
                  (adjoin-term
                   t2 (add-terms L1 (rest-terms L2))))
                 (else
                  (adjoin-term
                   (make-sparse-term (order t1)
                                     (add (coeff t1) (coeff t2)))
                   (add-terms (rest-terms L1)
                              (rest-terms L2)))))))))
(define (mul-terms L1 L2)
  (if (empty-termlist? L1)
      (the-empty-termlist)
      (add-terms (mul-term-by-all-terms (first-term L1) L2)
                 (mul-terms (rest-terms L1) L2))))

;; interface to rest of the system
(define (tag p) (attach-tag 'polynomial p))
(put 'add '(polynomial polynomial)
     (lambda (p1 p2) (tag (add-poly p1 p2))))
(put 'mul '(polynomial polynomial)
     (lambda (p1 p2) (tag (mul-poly p1 p2))))
(put 'make 'polynomial
     (lambda (var terms) (tag (make-poly var terms))))
(define (if-1st-poly-make-2nd-poly t1 t2)
  (if (and (eqv? 'polynomial (type-tag t1))
           (not (eqv? 'polynomial (type-tag t2))))
      (tag (make-poly (variable (contents t1)) (list t2)))
      t2))
(define (mul-term-by-all-terms t1 L)
  (if (empty-termlist? L)
      (the-empty-termlist)
      (let* ((t2 (first-term L)) ;; If one coeff is a poly, make the other a poly
             (t1-coeff (if-1st-poly-make-2nd-poly (coeff t2) (coeff t1)))
             (t2-coeff (if-1st-poly-make-2nd-poly (coeff t1) (coeff t2))))

        (adjoin-term
         (make-sparse-term (+ (order t1) (order t2))
                           (mul t1-coeff t2-coeff))
         (mul-term-by-all-terms t1 (rest-terms L))))))
(define (terms-=zero? L)
  (or (empty-termlist? L)
      (and (=zero? (coeff (first-term L)))
           (terms-=zero? (rest-terms L)))))
(define (poly-=zero? p)
  (terms-=zero? (terms p)))
(put '=zero? '(polynomial) poly-=zero?)
(define (neg-terms TL)
  (let ((negterm (lambda(o c)
                   (make-sparse-term o (neg c)))))
    (map-terms negterm TL)))
(define (sub-terms T1 T2)
  (add-terms T1 (neg-terms T2)))
(define (neg-poly p)
  (make-poly (variable p)
             (neg-terms (terms p))))
(put 'neg '(polynomial)
     (lambda (p1) (tag (neg-poly p1))))
(define (sub-poly p1 p2)
  (add-poly p1 (neg-poly p2)))
(put 'sub '(polynomial polynomial)
     (lambda (p1 p2) (tag (sub-poly p1 p2))))
```

<a id="code-snippet--polynomial-gcd"></a>
```scheme { linenos=true, linenostart=1 }
(define (remainder-terms tl1 tl2)
  (second (div-terms tl1 tl2)))
(define (gcd-terms a b)
  (if (empty-termlist? b)
      a
      (gcd-terms b (remainder-terms a b))))
(define (gcd-poly p q)
  (cond ((same-variable? (variable p) (variable q))
         (make-poly (variable p)
                    (gcd-terms (terms p) (terms q))))
        ((trivial-poly? p)
         (gcd-poly (make-poly (variable q) (terms p))
                   q))
        ((trivial-poly? q)
         (gcd-poly p
                   (make-poly (variable p) (terms q))))
        (else (error "different vars not supported : GCD-POLY" p q))))
(put 'greatest-common-divisor '(polynomial polynomial)
     (lambda (x y) (tag (gcd-poly x y))))
```

<a id="code-snippet--generic-gcd"></a>
```scheme { linenos=true, linenostart=1 }
(define (install-gcd) 'no)
(put 'greatest-common-divisor '(scheme-number scheme-number)
     (lambda (x y) (attach-tag 'scheme-number (gcd x y))))
(put 'greatest-common-divisor '(real real)
     (lambda (x) (attach-tag 'scheme-number (gcd x y))))
;'done)
(define (greatest-common-divisor a b)
  (apply-generic 'greatest-common-divisor a b))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-raiseto>>
<<generic-arithmetic-rational-functions>>
<<real-package>>
<<eqzero?-rf>>
<<real-package>>

<<tower-coercions-rf>>

<<polynomial-densepadding-top>>
<<polynomial-projection>>
<<polynomial-division>>
<<polynomial-gcd>>
<<polynomial-rf-bottom>>

<<generic-negation>>
<<generic-gcd>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
(install-polynomial-package)
(install-negation)

<<gen-math-tests>>

(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-polynomial 'x '((3 2)(1 1))))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
(mattcheck "drop 1"
           (drop (make-complex-from-real-imag 5 0))
           5)
(mattcheck "drop 2"
           (drop (make-real 5))
           5)
(mattcheck "drop 3"
           (drop (make-rational 5 1))
           5)
(mattcheck "complex with nested rational"
           (make-complex-from-real-imag 2 (make-rational 3 5))
           (cons 'complex (cons 'rectangular (cons 2 (list 'rational 3 5)))))
(mattcheck "math on complex with nested rational"
           (add (make-complex-from-real-imag 2 (make-rational 3 5))
                (make-complex-from-mag-ang (make-rational 3 5) 2))
           (cons 'complex (cons 'rectangular
                                (cons (list 'rational 8.751559490358574 5)
                                      (list 'rational 28.639461402385223 25)))))
(mattcheck "polynomial = zero"
           (=zero? (make-polynomial 'x '((0 0)))))
(mattcheck "polynomial != zero" #f
           (=zero? (make-polynomial 'x '((1 1)(0 1)))))

(define p1 '((100 1)(2 2)(0 1)))
(define p2 (list (list 7 (make-polynomial 'x '((3 2))))))
(define p3 '((100 1)(2 1)(0 3)))
(define p4 '((100 -1)(2 -2)(0 -1)))
(define p5 '(8 2 5 -3 -7))
(define p7 '((1 1)(0 1)))
(define p6 '((3 1)(0 1)))
(define p66 '(1 0 0 1))
(define p77 '(1 1))
(define p8 (make-polynomial 'x '((2 1) (0 1))))
(define p9 (make-polynomial 'x '((3 1) (0 1))))
(define p98 (make-rational p9 p8))
  (mattcheck "polynomial addition"
             (add (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (100 2)(2 4)(0 2)))
  (mattcheck "polynomial multiplication"
             (mul (make-polynomial 'x p1)
                  (make-polynomial 'x p1))
             '(polynomial x (200 1) (102 4) (100 2) (4 4) (2 4) (0 1)))
  (mattcheck "nested polynomial addition"
             (add (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (100 1) (7 (polynomial x (3 2))) (2 2) (0 1)))
  (mattcheck "nested polynomial mult"
             (mul (make-polynomial 'x p2)
                  (make-polynomial 'x p1))
             '(polynomial x (107 (polynomial x (3 2))) (9 (polynomial x (3 4))) (7 (polynomial x (3 2)))))
(define p10 (make-polynomial
            'x '((4 1) (3 -1) (2 -2) (1 2))))
(define p11 (make-polynomial 'x '((3 1) (1 -1))))
  (mattcheck "negation scheme-number"
             (neg 5) -5)
  (mattcheck "negation rational"
             (neg (make-rational 1 5))
             (make-rational -1 5))
  (mattcheck "negation rectangular complex"
             (neg (make-complex-from-real-imag 3 7))
             (make-complex-from-real-imag -3 -7))
  (mattcheck "negation polar complex"
             (neg (make-complex-from-mag-ang 3 7))
             (make-complex-from-mag-ang -3 7))

  (mattcheck "negation polynomials"
             (neg (make-polynomial 'x p1))
             (make-polynomial 'x p4))
  (mattcheck "polynomial subtraction"
             (sub (make-polynomial 'x p1)
                  (make-polynomial 'x p3))
             '(polynomial x 1 #f -2))
  (mattcheck "polynomial division 1"
             (div (make-polynomial 'x p6)
                  (make-polynomial 'x p7))
             '((polynomial x 1 -1 1) (polynomial x)))
  (mattcheck "polynomial division 2"
             (div (make-polynomial 'x p7)
                  (make-polynomial 'x p6))
             '((polynomial x) (polynomial x 1 1)))
  (mattcheck "polynomial division 3"
             (div (make-polynomial 'x p66)
                  (make-polynomial 'x p77))
             '((polynomial x 1 -1 1) (polynomial x)))
  (mattcheck "rational functions"
             (add p98 p98)
             '(rational (polynomial x 2 #f 2 2 #f 2) (polynomial x 1 #f 2 #f 1)))
  (mattcheck "GCD for integers"
             (greatest-common-divisor 72 30)
             6)
  (mattcheck "GCD for polys"
             (greatest-common-divisor p10 p11)
             '(polynomial x -1 1 #f))
```

```text
<...>
SUCCEED at polynomial subtraction
SUCCEED at polynomial division 1
SUCCEED at polynomial division 2
SUCCEED at polynomial division 3
SUCCEED at rational functions
SUCCEED at GCD for integers
SUCCEED at GCD for polys
```


### <span class="section-num">3.108</span> Exercise 2.95: a quirk in rational functions {#exercise-2-dot-95-a-quirk-in-rational-functions}


#### <span class="section-num">3.108.1</span> Question {#question}

Define \\(P\_1\\), \\(P\_2\\), and
\\(P\_3\\) to be the polynomials

$$

\begin{array}{l@{{}:}l}
	P\_1 	& \quad x^2 - 2x + 1, \\\\
	P\_2 	& \quad 11x^2 + 7, \\\\
	P\_3 	& \quad 13x + 5.
\end{array}

$$

Now define \\(Q\_1\\) to be the product of \\(P\_1\\) and \\(P\_2\\) and \\(Q\_2\\) to be
the product of \\(P\_1\\) and \\(P\_3\\), and use <span class="inline-src language-scheme" data-lang="scheme">`greatest-common-divisor`</span>
(@ref{Exercise 2.94}) to compute the GCD of \\(Q\_1\\)
and \\(Q\_2\\).

Note that the answer is not the same as \\(P\_1\\). This example introduces
noninteger operations into the computation, causing difficulties with the GCD
algorithm.&nbsp;[^fn:13] To
understand what is happening, try tracing <span class="inline-src language-scheme" data-lang="scheme">`gcd-terms`</span> while computing
the GCD or try performing the division by hand.


#### <span class="section-num">3.108.2</span> Answer {#answer}

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-raiseto>>
<<generic-arithmetic-rational-functions>>
<<real-package>>
<<eqzero?-rf>>
<<real-package>>

<<tower-coercions-rf>>

<<polynomial-densepadding-top>>
<<polynomial-projection>>
<<polynomial-division>>
<<polynomial-gcd>>
<<polynomial-rf-bottom>>

<<generic-negation>>
<<generic-gcd>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
(install-polynomial-package)
(install-negation)

(define p1 (make-polynomial 'x '(1 2 1)))
(define p2 (make-polynomial 'x '((2 11)(0 7))))
(define p3 (make-polynomial 'x '(13 5)))
(define q1 (mul p1 p2))
(define q2 (mul p1 p3))
(echo "P1: " p1)
(echo "P2: " p2)
(echo "P3: " p3)
(echo "Q1: " q1)
(echo "Q2: " q2)
(echo "GCD(Q1, Q2): " (greatest-common-divisor q1 q2))
```

```text
P1:  (polynomial x 1 2 1)
P2:  (polynomial x 11 #f 7)
P3:  (polynomial x 13 5)
Q1:  (polynomial x 11 22 18 14 7)
Q2:  (polynomial x 13 31 23 5)
GCD(Q1, Q2):  (polynomial x 1458/169 2916/169 1458/169)
```


### <span class="section-num">3.109</span> Exercise 2.96: pseudodivision of polynomials {#exercise-2-dot-96-pseudodivision-of-polynomials}


#### <span class="section-num">3.109.1</span> Text formulas {#text-formulas}

More precisely, if \\(P\\) and \\(Q\\) are polynomials, let \\(O\_1\\) be the order of
\\(P\\) (i.e., the order of the largest term of \\(P\\)) and let \\(O\_2\\) be the
order of \\(Q\\). Let \\(c\\) be the leading coefficient of \\(Q\\). Then it can be
shown that, if we multiply \\(P\\) by the **integerizing factor** \\(c^{1 + O\_1 -
O\_2}\\), the resulting polynomial can be divided by \\(Q\\) by using the
<span class="inline-src language-scheme" data-lang="scheme">`div-terms`</span> algorithm without introducing any fractions. The operation
of multiplying the dividend by this constant and then dividing is sometimes
called the **pseudodivision** of \\(P\\) by \\(Q\\). The remainder of the division is
called the **pseudoremainder**.


#### <span class="section-num">3.109.2</span> Questions 1 and 2 {#questions-1-and-2}

1.  Implement the procedure <span class="inline-src language-scheme" data-lang="scheme">`pseudoremainder-terms`</span>, which is just like
    <span class="inline-src language-scheme" data-lang="scheme">`remainder-terms`</span> except that it multiplies the dividend by the
    integerizing factor described above before calling <span class="inline-src language-scheme" data-lang="scheme">`div-terms`</span>.
    Modify <span class="inline-src language-scheme" data-lang="scheme">`gcd-terms`</span> to use <span class="inline-src language-scheme" data-lang="scheme">`pseudoremainder-terms`</span>, and
    verify that <span class="inline-src language-scheme" data-lang="scheme">`greatest-common-divisor`</span> now produces an answer with
    integer coefficients on the example in [Exercise 2.95](#exercise-2-dot-95-a-quirk-in-rational-functions).

2.  The GCD now has integer coefficients, but they are larger than those of
    \\(P\_1\\). Modify <span class="inline-src language-scheme" data-lang="scheme">`gcd-terms`</span> so that it removes common factors from
    the coefficients of the answer by dividing all the coefficients by their
    (integer) greatest common divisor.


#### <span class="section-num">3.109.3</span> Answers 1 and 2 {#answers-1-and-2}

<a id="code-snippet--polynomial-gcd-pseudo"></a>
```scheme { linenos=true, linenostart=1 }
(define (remainder-terms tl1 tl2)
  (second (div-terms tl1 tl2)))
(define (find-integerizing-factor p q)
  (let ((o1 (termlist-order p))
        (o2 (termlist-order q))
        (c (coeff (first-term q))))
    (expt c (+ 1 (- o1 o2)))))
(define (pseudoremainder-terms tl1 tl2)
  (let* ((intize (find-integerizing-factor tl1 tl2))
         (tl1-prime (mul-terms tl1
                               (list (make-sparse-term 0 intize)))))
    (second (div-terms tl1-prime tl2))))
(define (gcd-terms a b)
  (let ((result (if (empty-termlist? b)
                    a
                    (gcd-terms b (pseudoremainder-terms a b)))))
    (if (empty-termlist? result)
        (the-empty-termlist)
        (let ((list-gcd (reduce gcd "ERROR"
                                (map-terms (lambda(o c) c) result))))
          (map-terms (lambda(o c)
                       (make-sparse-term o
                                         (div c list-gcd)))
                     result)))))
(define (gcd-poly p q)
  (cond ((same-variable? (variable p) (variable q))
         (make-poly (variable p)
                    (gcd-terms (terms p) (terms q))))
        ((trivial-poly? p)
         (gcd-poly (make-poly (variable q) (terms p))
                   q))
        ((trivial-poly? q)
         (gcd-poly p
                   (make-poly (variable p) (terms q))))
        (else (error "different vars not supported : GCD-POLY" p q))))
(put 'greatest-common-divisor '(polynomial polynomial)
     (lambda (x y) (tag (gcd-poly x y))))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-raiseto>>
<<generic-arithmetic-rational-functions>>
<<real-package>>
<<eqzero?-rf>>
<<real-package>>

<<tower-coercions-rf>>

<<polynomial-densepadding-top>>
<<polynomial-projection>>
<<polynomial-division>>
<<polynomial-gcd-pseudo>>
<<polynomial-rf-bottom>>

<<generic-negation>>
<<generic-gcd>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
(install-polynomial-package)
(install-negation)

<<gen-math-tests>>

(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-polynomial 'x '((3 2)(1 1))))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
(mattcheck "drop 1"
           (drop (make-complex-from-real-imag 5 0))
           5)
(mattcheck "drop 2"
           (drop (make-real 5))
           5)
(mattcheck "drop 3"
           (drop (make-rational 5 1))
           5)
(mattcheck "complex with nested rational"
           (make-complex-from-real-imag 2 (make-rational 3 5))
           (cons 'complex (cons 'rectangular (cons 2 (list 'rational 3 5)))))
(mattcheck "math on complex with nested rational"
           (add (make-complex-from-real-imag 2 (make-rational 3 5))
                (make-complex-from-mag-ang (make-rational 3 5) 2))
           (cons 'complex (cons 'rectangular
                                (cons (list 'rational 8.751559490358574 5)
                                      (list 'rational 28.639461402385223 25)))))
(mattcheck "polynomial = zero"
           (=zero? (make-polynomial 'x '((0 0)))))
(mattcheck "polynomial != zero" #f
           (=zero? (make-polynomial 'x '((1 1)(0 1)))))

(define p1 '((100 1)(2 2)(0 1)))
(define p2 (list (list 7 (make-polynomial 'x '((3 2))))))
(define p3 '((100 1)(2 1)(0 3)))
(define p4 '((100 -1)(2 -2)(0 -1)))
(define p5 '(8 2 5 -3 -7))
(define p7 '((1 1)(0 1)))
(define p6 '((3 1)(0 1)))
(define p66 '(1 0 0 1))
(define p77 '(1 1))
(define p8 (make-polynomial 'x '((2 1) (0 1))))
(define p9 (make-polynomial 'x '((3 1) (0 1))))
(define p98 (make-rational p9 p8))
(mattcheck "polynomial addition"
           (add (make-polynomial 'x p1)
                (make-polynomial 'x p1))
           '(polynomial x (100 2)(2 4)(0 2)))
(mattcheck "polynomial multiplication"
           (mul (make-polynomial 'x p1)
                (make-polynomial 'x p1))
           '(polynomial x (200 1) (102 4) (100 2) (4 4) (2 4) (0 1)))
(mattcheck "nested polynomial addition"
           (add (make-polynomial 'x p2)
                (make-polynomial 'x p1))
           '(polynomial x (100 1) (7 (polynomial x (3 2))) (2 2) (0 1)))
(mattcheck "nested polynomial mult"
           (mul (make-polynomial 'x p2)
                (make-polynomial 'x p1))
           '(polynomial x (107 (polynomial x (3 2))) (9 (polynomial x (3 4))) (7 (polynomial x (3 2)))))
(define p10 (make-polynomial
             'x '((4 1) (3 -1) (2 -2) (1 2))))
(define p11 (make-polynomial 'x '((3 1) (1 -1))))
(mattcheck "negation scheme-number"
           (neg 5) -5)
(mattcheck "negation rational"
           (neg (make-rational 1 5))
           (make-rational -1 5))
(mattcheck "negation rectangular complex"
           (neg (make-complex-from-real-imag 3 7))
           (make-complex-from-real-imag -3 -7))
(mattcheck "negation polar complex"
           (neg (make-complex-from-mag-ang 3 7))
           (make-complex-from-mag-ang -3 7))

(mattcheck "negation polynomials"
           (neg (make-polynomial 'x p1))
           (make-polynomial 'x p4))
(mattcheck "polynomial subtraction"
           (sub (make-polynomial 'x p1)
                (make-polynomial 'x p3))
           '(polynomial x 1 #f -2))
(mattcheck "polynomial division 1"
           (div (make-polynomial 'x p6)
                (make-polynomial 'x p7))
           '((polynomial x 1 -1 1) (polynomial x)))
(mattcheck "polynomial division 2"
           (div (make-polynomial 'x p7)
                (make-polynomial 'x p6))
           '((polynomial x) (polynomial x 1 1)))
(mattcheck "polynomial division 3"
           (div (make-polynomial 'x p66)
                (make-polynomial 'x p77))
           '((polynomial x 1 -1 1) (polynomial x)))
(mattcheck "rational functions"
           (add p98 p98)
           '(rational (polynomial x 2 #f 2 2 #f 2) (polynomial x 1 #f 2 #f 1)))
(mattcheck "GCD for integers"
           (greatest-common-divisor 72 30)
           6)
(mattcheck "GCD for polys"
           (greatest-common-divisor p10 p11)
           '(polynomial x -1 1 #f))
(let* ((p1p (make-polynomial 'x '(1 2 1)))
       (p2p (make-polynomial 'x '((2 11)(0 7))))
       (p3p (make-polynomial 'x '(13 5)))
       (q1p (mul p1p p2p))
       (q2p (mul p1p p3p)))
  (mattcheck "greatest-common-divisor integerizing for polynomials"
             (greatest-common-divisor q1p q2p)
             p1p))
```

```text
<...>
SUCCEED at greatest-common-divisor integerizing for polynomials
```


### <span class="section-num">3.110</span> Exercise 2.97: reducing terms of rational functions {#exercise-2-dot-97-reducing-terms-of-rational-functions}


#### <span class="section-num">3.110.1</span> Questions 1 and 2 {#questions-1-and-2}

1.  Implement this algorithm as a procedure <span class="inline-src language-scheme" data-lang="scheme">`reduce-terms`</span> that takes
    two term lists <span class="inline-src language-scheme" data-lang="scheme">`n`</span> and <span class="inline-src language-scheme" data-lang="scheme">`d`</span> as arguments and returns a
    list <span class="inline-src language-scheme" data-lang="scheme">`nn`</span>, <span class="inline-src language-scheme" data-lang="scheme">`dd`</span>, which are <span class="inline-src language-scheme" data-lang="scheme">`n`</span> and
    <span class="inline-src language-scheme" data-lang="scheme">`d`</span> reduced to lowest terms via the algorithm given above. Also
    write a procedure <span class="inline-src language-scheme" data-lang="scheme">`reduce-poly`</span>, analogous to <span class="inline-src language-scheme" data-lang="scheme">`add-poly`</span>,
    that checks to see if the two polys have the same variable. If so,
    <span class="inline-src language-scheme" data-lang="scheme">`reduce-poly`</span> strips off the variable and passes the problem to
    <span class="inline-src language-scheme" data-lang="scheme">`reduce-terms`</span>, then reattaches the variable to the two term lists
    supplied by <span class="inline-src language-scheme" data-lang="scheme">`reduce-terms`</span>.

2.  Define a procedure analogous to <span class="inline-src language-scheme" data-lang="scheme">`reduce-terms`</span> that does what the
    original <span class="inline-src language-scheme" data-lang="scheme">`make-rat`</span> did for integers:
    ```scheme
       (define (reduce-integers n d)
         (let ((g (gcd n d)))
           (list (/ n g) (/ d g))))
    ```
    and define <span class="inline-src language-scheme" data-lang="scheme">`reduce`</span> as a generic operation that calls
    <span class="inline-src language-scheme" data-lang="scheme">`apply-generic`</span> to dispatch to either <span class="inline-src language-scheme" data-lang="scheme">`reduce-poly`</span> (for
    <span class="inline-src language-scheme" data-lang="scheme">`polynomial`</span> arguments) or <span class="inline-src language-scheme" data-lang="scheme">`reduce-integers`</span> (for
    <span class="inline-src language-scheme" data-lang="scheme">`scheme-number`</span> arguments). You can now easily make the
    rational-arithmetic package reduce fractions to lowest terms by having
    <span class="inline-src language-scheme" data-lang="scheme">`make-rat`</span> call <span class="inline-src language-scheme" data-lang="scheme">`reduce`</span> before combining the given
    numerator and denominator to form a rational number. The system now handles
    rational expressions in either integers or polynomials. To test your program,
    try the example at the beginning of this extended exercise:


#### <span class="section-num">3.110.2</span> Answers 1 and 2 {#answers-1-and-2}

<a id="code-snippet--polynomial-gcd-reduce"></a>
```scheme { linenos=true, linenostart=1 }
(define (remainder-terms tl1 tl2)
  (second (div-terms tl1 tl2)))
(define (find-integerizing-factor o1 o2 c)
  (expt c (+ 1 (- o1 o2))))
(define (pseudoremainder-terms tl1 tl2)
  (let* ((intize (find-integerizing-factor (termlist-order tl1)
                                           (termlist-order tl2)
                                           (coeff (first-term tl2))))
         (tl1-prime (mul-terms tl1
                               (list (make-sparse-term 0 intize)))))
    (second (div-terms tl1-prime tl2))))

(define (gcd-of-coeffs-in-terms tl)
  (reduce gcd 'ERROR
          (map-terms (lambda(o c) c) tl)))
(define (map-coeffs f tl)
  (map-terms (lambda(o c)
               (make-sparse-term o
                                 (f c)))
             tl))
(define (div-coeffs-by-gcd tl)
  (let ((g (gcd-of-coeffs-in-terms tl)))
    (map-coeffs (lambda(c)(div c g)) tl)))
(define (gcd-terms a b)
  (let ((result (if (empty-termlist? b)
                    a
                    (gcd-terms b (pseudoremainder-terms a b)))))
    (if (empty-termlist? result)
        (the-empty-termlist)
        (div-coeffs-by-gcd result))))
(define (gcd-poly p q)
  (cond ((same-variable? (variable p) (variable q))
         (make-poly (variable p)
                    (gcd-terms (terms p) (terms q))))
        ((trivial-poly? p)
         (gcd-poly (make-poly (variable q) (terms p))
                   q))
        ((trivial-poly? q)
         (gcd-poly p
                   (make-poly (variable p) (terms q))))
        (else (error "different vars not supported : GCD-POLY" p q))))
(put 'greatest-common-divisor '(polynomial polynomial)
     (lambda (x y) (tag (gcd-poly x y))))
(define (reduce-terms n d)
  (let* ((nd-gcd (gcd-terms n d))
         (intize (find-integerizing-factor (termlist-order nd-gcd)
                                           (max (termlist-order n)
                                                (termlist-order d))
                                           (coeff (first-term nd-gcd))))
         (nn (div-terms (mul-terms
                         n (list (make-sparse-term
                                  0 intize)))
                        nd-gcd))
         (dd (div-terms (mul-terms
                         d (list (make-sparse-term
                                  0 intize)))
                        nd-gcd)))
    (if (or (not (empty-termlist? (second nn)))
            (not (empty-termlist? (second dd))))
        (error "unexpected remainder from term reduction : REDUCE-TERMS" n d)
        (list (div-coeffs-by-gcd (first nn))
              (div-coeffs-by-gcd (first dd))))))
(define (reduce-poly p q)
  (let ((mp (lambda(target-poly reduced)
              (let ((v (variable target-poly)))
                (list (make-poly v (first reduced))
                      (make-poly v (second reduced)))))))
    (cond ((same-variable? (variable p) (variable q))
           (mp p (reduce-terms (terms p) (terms q))))
          ((trivial-poly? p)
           (mp q (reduce-terms (terms p) (terms q))))
          ((trivial-poly? q)
           (mp p (reduce-terms (terms p) (terms q))))
          (else (error "different vars not supported : GCD-POLY" p q)))))
(put 'reduce '(polynomial polynomial)
     (lambda(p q)
       (let ((result (reduce-poly p q)))
         (list (tag (first result))
               (tag (second result))))))
```

<a id="code-snippet--generic-reduce-function"></a>
```scheme { linenos=true, linenostart=1 }
(define (generic-reduce a b)
  (apply-generic 'reduce a b))
(define (reduce-integers n d)
  (if (and (integer? n)
           (integer? d))
      (let ((g (gcd n d)))
        (list (/ n g) (/ d g)))
      (list n d)))
(put 'reduce '(scheme-number scheme-number)
     reduce-integers)
```

<a id="code-snippet--generic-arithmetic-rf-reduce"></a>
```scheme { linenos=true, linenostart=1 }
(define (add x y) (apply-generic 'add x y))
(define (sub x y) (apply-generic 'sub x y))
(define (mul x y) (apply-generic 'mul x y))
(define (div x y) (apply-generic 'div x y))
(define (real-part z) (apply-generic 'real-part z))
(define (imag-part z) (apply-generic 'imag-part z))
(define (magnitude z) (apply-generic 'magnitude z))
(define (angle z) (apply-generic 'angle z))
;; Now we begin to change code for support
;; These will be named slightly different so the primitive
;; functions aren't shadowed
(define (square x) (mul x 2))
(define (sine x) (apply-generic 'sine x)) ;; (sin)
(define (cosine x) (apply-generic 'cosine x)); (cos)
(define (square-root x) (apply-generic 'square-root x));(sqrt)
(define (arctan x y) (apply-generic 'arctan x y));(atan)

(define (make-scheme-number n)
  ((get 'make 'scheme-number) n))
(define (install-scheme-number-package)
  (define (tag x) (attach-tag 'scheme-number x))
  (put 'add '(scheme-number scheme-number)
       (lambda (x y) (tag (+ x y))))
  (put 'sub '(scheme-number scheme-number)
       (lambda (x y) (tag (- x y))))
  (put 'mul '(scheme-number scheme-number)
       (lambda (x y) (tag (* x y))))
  (put 'div '(scheme-number scheme-number)
       (lambda (x y) (tag (/ x y))))
  (put 'sine '(scheme-number)
       (lambda (x) (tag (sin x))))
  (put 'cosine '(scheme-number)
       (lambda (x) (tag (cos x))))
  (put 'square-root '(scheme-number)
       (lambda (x) (tag (sqrt x))))
  (put 'arctan '(scheme-number scheme-number)
       (lambda (x y) (tag (atan x y))))
  (put 'make 'scheme-number (lambda (x) (tag x)))
  'done)

(define (install-rational-package)
  ;; internal procedures
  (define (numer x) (first x))
  (define (denom x) (second x))
  (define (make-rat n d)
    (generic-reduce n d))
  (define (add-rat x y)
    (make-rat (add (mul (numer x) (denom y))
                   (mul (numer y) (denom x)))
              (mul (denom x) (denom y))))
  (define (sub-rat x y)
    (make-rat (sub (mul (numer x) (denom y))
                   (mul (numer y) (denom x)))
              (mul (denom x) (denom y))))
  (define (mul-rat x y)
    (make-rat (mul (numer x) (numer y))
              (mul (denom x) (denom y))))
  (define (div-rat x y)
    (make-rat (mul (numer x) (denom y))
              (mul (denom x) (numer y))))
  ;; interface to rest of the system
  (define (tag x) (attach-tag 'rational x))
  (put 'add '(rational rational)
       (lambda (x y) (tag (add-rat x y))))
  (put 'sub '(rational rational)
       (lambda (x y) (tag (sub-rat x y))))
  (put 'mul '(rational rational)
       (lambda (x y) (tag (mul-rat x y))))
  (put 'div '(rational rational)
       (lambda (x y) (tag (div-rat x y))))
  (put 'make 'rational
       (lambda (n d) (tag (make-rat n d))))
  (put 'numer '(rational) numer)
  (put 'denom '(rational) denom)
  (put 'sine '(rational)
       (lambda(r) ((get 'sine '(scheme-number))
                   (div (numer r) (denom r)))))
  (put 'cosine '(rational)
       (lambda(r) ((get 'cosine '(scheme-number))
                   (div (numer r) (denom r)))))
  (put 'square-root '(rational)
       (lambda(r) ((get 'square-root '(scheme-number))
                   (div (numer r) (denom r)))))
  (put 'arctan '(rational)
       (lambda(r s) ((get 'arctan '(scheme-number))
                     (div (numer r) (denom r)) (div (numer s) (denom s)))))
  'done)

;; for future use
(define (numer r)
  ((get 'numer '(rational))
   (contents r)))
(define (denom r)
  ((get 'denom '(rational))
   (contents r)))

(define (make-rational n d)
  ((get 'make 'rational) n d))

(define (install-rectangular-package)
  ;; internal procedures
  (define (real-part z) (car z))
  (define (imag-part z) (cdr z))
  (define (make-from-real-imag x y) (cons x y))
  (define (magnitude z)
    (square-root (add (square (real-part z))
                      (square (imag-part z)))))
  (define (angle z)
    (arctan (imag-part z) (real-part z)))
  (define (make-from-mag-ang r a)
    (cons (mul r (cosine a)) (mul r (sine a))))
  ;; interface to the rest of the system
  (define (tag x) (attach-tag 'rectangular x))
  (put 'real-part '(rectangular) real-part)
  (put 'imag-part '(rectangular) imag-part)
  (put 'magnitude '(rectangular) magnitude)
  (put 'angle '(rectangular) angle)
  (put 'make-from-real-imag 'rectangular
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'rectangular
       (lambda (r a) (tag (make-from-mag-ang r a))))
  'done)

(define (install-polar-package)
  ;; internal procedures
  (define (magnitude z) (car z))
  (define (angle z) (cdr z))
  (define (make-from-mag-ang r a) (cons r a))
  (define (real-part z) (mul (magnitude z) (cosine (angle z))))
  (define (imag-part z) (mul (magnitude z) (sine (angle z))))
  (define (make-from-real-imag x y)
    (cons (sqrt (+ (square x) (square y)))
          (atan y x)))
  ;; interface to the rest of the system
  (define (tag x) (attach-tag 'polar x))
  (put 'real-part '(polar) real-part)
  (put 'imag-part '(polar) imag-part)
  (put 'magnitude '(polar) magnitude)
  (put 'angle '(polar) angle)
  (put 'make-from-real-imag 'polar
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'polar
       (lambda (r a) (tag (make-from-mag-ang r a))))
  'done)

(define (install-complex-package)
  (define (make-from-real-imag x y)
    ((get 'make-from-real-imag 'rectangular) x y))
  (define (make-from-mag-ang r a)
    ((get 'make-from-mag-ang 'polar) r a))
  ;; let's make these generic
  (define (add-complex z1 z2)
    (make-from-real-imag (add (real-part z1) (real-part z2))
                         (add (imag-part z1) (imag-part z2))))
  (define (sub-complex z1 z2)
    (make-from-real-imag (sub (real-part z1) (real-part z2))
                         (sub (imag-part z1) (imag-part z2))))
  (define (mul-complex z1 z2)
    (make-from-mag-ang (mul (magnitude z1) (magnitude z2))
                       (add (angle z1) (angle z2))))
  (define (div-complex z1 z2)
    (make-from-mag-ang (div (magnitude z1) (magnitude z2))
                       (sub (angle z1) (angle z2))))
  ;; interface to rest of the system
  (define (tag z) (attach-tag 'complex z))
  (put 'add '(complex complex)
       (lambda (z1 z2) (tag (add-complex z1 z2))))
  (put 'sub '(complex complex)
       (lambda (z1 z2) (tag (sub-complex z1 z2))))
  (put 'mul '(complex complex)
       (lambda (z1 z2) (tag (mul-complex z1 z2))))
  (put 'div '(complex complex)
       (lambda (z1 z2) (tag (div-complex z1 z2))))
  (put 'make-from-real-imag 'complex
       (lambda (x y) (tag (make-from-real-imag x y))))
  (put 'make-from-mag-ang 'complex
       (lambda (r a) (tag (make-from-mag-ang r a))))
  (put 'real-part '(complex) real-part)
  (put 'imag-part '(complex) imag-part)
  (put 'magnitude '(complex) magnitude)
  (put 'angle '(complex) angle))

(define (make-complex-from-real-imag x y)
  ((get 'make-from-real-imag 'complex) x y))
(define (make-complex-from-mag-ang r a)
  ((get 'make-from-mag-ang 'complex) r a))

(define (project x)
  (let ((t1 (type-tag x)))
    (let ((p (get 'project t1)))
      (if p
          (p (contents x))
          #f))))

(define (drop x)
  (if (not (pair? x))
      x
      (let ((projected (project x)))
        (cond ((eqv? projected #f)
               x)
              ((equ? x projected)
               (drop projected))
              (else x)))))

(put 'project 'rational
     (lambda(num)
       ((get 'numer '(rational))
        num)))
(put 'project 'real
     (lambda(num)
       (round num)))
;; projecting a complex number may return something other than a single number
(put 'project 'complex
     (lambda(num)
       (let ((r ((get 'real-part '(complex)) num)))
         (if (number? (contents r))
             (make-real (contents r))
             r))))

;; equality testing with complex numbers also changes
(define (equ? x y) (apply-generic 'equ? x y))
(define (install-equ?)
  (put 'equ? '(scheme-number scheme-number)
       (lambda(x y) (= x y)))
  (put 'equ? '(complex complex)
       (lambda(x y)
         (let ((t1 (type-tag x))
               (t2 (type-tag y)))
           (cond ((and (eqv? t1 'polar)
                       (eqv? t2 'polar))
                  (and (equ? (apply-generic 'magnitude x)
                             (apply-generic 'magnitude y))
                       (equ? (apply-generic 'angle x)
                             (apply-generic 'angle y))))
                 (else
                  (and (equ? (apply-generic 'real-part x)
                             (apply-generic 'real-part y))
                       (equ? (apply-generic 'imag-part x)
                             (apply-generic 'imag-part y))))))))
  (put 'equ? '(rational rational)
       (lambda(x y)
         (and (equ? ((get 'numer '(rational)) x)
                 ((get 'numer '(rational)) y))
              (equ? ((get 'denom '(rational)) x)
                 ((get 'denom '(rational)) y)))))
  (put 'equ? '(real real)
       (lambda(x y) (= x y))))
```

```scheme { linenos=true, linenostart=1 }
(load "mattcheck2.scm")
<<op-table>>
<<type-table>>
<<sqrt>>
<<echo>>
<<smarter-type-tagging>>
<<attach-tag-fixed>>
<<list-indices>>
<<tower-predicates>>
<<apply-generic-raiseto>>
<<generic-arithmetic-rf-reduce>>
<<real-package>>
<<eqzero?-rf>>
<<real-package>>

<<tower-coercions-rf>>

<<polynomial-densepadding-top>>
<<polynomial-projection>>
<<polynomial-division>>
<<polynomial-gcd-reduce>>
<<polynomial-rf-bottom>>

<<generic-negation>>
<<generic-gcd>>
<<generic-reduce-function>>

(install-rational-package)
(install-rectangular-package)
(install-polar-package)
(install-complex-package)
(install-scheme-number-package)
(install-real-package)
(install-equ?)
(install-=zero?)
(install-polynomial-package)
(install-negation)

<<gen-math-tests>>

(mattcheck "raise success"
           (raise 78)
           (make-rational 78 1))
(mattcheck "raise fail"
           (raise (make-polynomial 'x '((3 2)(1 1))))
           #f)
(mattcheck "apply-generic 1"
           (add 1 (make-rational 3 5))
           (make-rational 8 5))
(mattcheck "apply-generic 2"
           (add (make-real 2)
                (make-complex-from-mag-ang 3 5))
           (make-complex-from-real-imag 2.850986556389679 -2.8767728239894153))
(mattcheck "drop 1"
           (drop (make-complex-from-real-imag 5 0))
           5)
(mattcheck "drop 2"
           (drop (make-real 5))
           5)
(mattcheck "drop 3"
           (drop (make-rational 5 1))
           5)
(mattcheck "complex with nested rational"
           (make-complex-from-real-imag 2 (make-rational 3 5))
           (cons 'complex (cons 'rectangular (cons 2 (list 'rational 3 5)))))
(mattcheck "math on complex with nested rational"
           (add (make-complex-from-real-imag 2 (make-rational 3 5))
                (make-complex-from-mag-ang (make-rational 3 5) 2))
           (cons 'complex (cons 'rectangular
                                (cons (list 'rational 8.751559490358574 5)
                                      (list 'rational 28.639461402385223 25)))))
(mattcheck "polynomial = zero"
           (=zero? (make-polynomial 'x '((0 0)))))
(mattcheck "polynomial != zero" #f
           (=zero? (make-polynomial 'x '((1 1)(0 1)))))

(define p1 '((100 1)(2 2)(0 1)))
(define p2 (list (list 7 (make-polynomial 'x '((3 2))))))
(define p3 '((100 1)(2 1)(0 3)))
(define p4 '((100 -1)(2 -2)(0 -1)))
(define p5 '(8 2 5 -3 -7))
(define p7 '((1 1)(0 1)))
(define p6 '((3 1)(0 1)))
(define p66 '(1 0 0 1))
(define p77 '(1 1))
(define p8 (make-polynomial 'x '((2 1) (0 1))))
(define p9 (make-polynomial 'x '((3 1) (0 1))))
(define p98 (make-rational p9 p8))
(mattcheck "polynomial addition"
           (add (make-polynomial 'x p1)
                (make-polynomial 'x p1))
           '(polynomial x (100 2)(2 4)(0 2)))
(mattcheck "polynomial multiplication"
           (mul (make-polynomial 'x p1)
                (make-polynomial 'x p1))
           '(polynomial x (200 1) (102 4) (100 2) (4 4) (2 4) (0 1)))
(mattcheck "nested polynomial addition"
           (add (make-polynomial 'x p2)
                (make-polynomial 'x p1))
           '(polynomial x (100 1) (7 (polynomial x (3 2))) (2 2) (0 1)))
(mattcheck "nested polynomial mult"
           (mul (make-polynomial 'x p2)
                (make-polynomial 'x p1))
           '(polynomial x (107 (polynomial x (3 2))) (9 (polynomial x (3 4))) (7 (polynomial x (3 2)))))
(define p10 (make-polynomial
             'x '((4 1) (3 -1) (2 -2) (1 2))))
(define p11 (make-polynomial 'x '((3 1) (1 -1))))
(mattcheck "negation scheme-number"
           (neg 5) -5)
(mattcheck "negation rational"
           (neg (make-rational 1 5))
           (make-rational -1 5))
(mattcheck "negation rectangular complex"
           (neg (make-complex-from-real-imag 3 7))
           (make-complex-from-real-imag -3 -7))
(mattcheck "negation polar complex"
           (neg (make-complex-from-mag-ang 3 7))
           (make-complex-from-mag-ang -3 7))

(mattcheck "negation polynomials"
           (neg (make-polynomial 'x p1))
           (make-polynomial 'x p4))
(mattcheck "polynomial subtraction"
           (sub (make-polynomial 'x p1)
                (make-polynomial 'x p3))
           '(polynomial x 1 #f -2))
(mattcheck "polynomial division 1"
           (div (make-polynomial 'x p6)
                (make-polynomial 'x p7))
           '((polynomial x 1 -1 1) (polynomial x)))
(mattcheck "polynomial division 2"
           (div (make-polynomial 'x p7)
                (make-polynomial 'x p6))
           '((polynomial x) (polynomial x 1 1)))
(mattcheck "polynomial division 3"
           (div (make-polynomial 'x p66)
                (make-polynomial 'x p77))
           '((polynomial x 1 -1 1) (polynomial x)))
(mattcheck "rational functions (unsimplified, should fail)"
           (add p98 p98)
           '(rational (polynomial x 2 #f 2 2 #f 2) (polynomial x 1 #f 2 #f 1)))
(mattcheck "GCD for integers"
           (greatest-common-divisor 72 30)
           6)
(mattcheck "GCD for polys"
           (greatest-common-divisor p10 p11)
           '(polynomial x -1 1 #f))
(let* ((p1p (make-polynomial 'x '(1 2 1)))
       (p2p (make-polynomial 'x '((2 11)(0 7))))
       (p3p (make-polynomial 'x '(13 5)))
       (q1p (mul p1p p2p))
       (q2p (mul p1p p3p)))
  (mattcheck "greatest-common-divisor integerizing for polynomials"
             (greatest-common-divisor q1p q2p)
             p1p))
(mattcheck "rational functions (correctly simplified)"
           (add p98 p98)
           '(rational (polynomial x 1 #f #f 1) (polynomial x 1 #f 1)))
```

```text
<...>
FAIL at rational functions (unsimplified, should fail)
expected: (rational (polynomial x 2 #f 2 2 #f 2) (polynomial x 1 #f 2 #f 1))
returned: (rational (polynomial x 1 #f #f 1) (polynomial x 1 #f 1))
<...>
SUCCEED at greatest-common-divisor integerizing for polynomials
SUCCEED at rational functions (correctly simplified)
```

This exercise has been pretty exhausting. I'll likely take a step back here,
maybe work on other projects a bit, and dive back in for Chapter 3.

[^fn:1]: <https://codology.net/post/sicp-solution-exercise-1-14/>
[^fn:2]: <https://youtu.be/MfN1lqArwAg>
[^fn:3]: <https://wernerdegroot.wordpress.com/2015/08/01/sicp-exercise-2-43/>
[^fn:4]: <https://git.elephly.net/gitweb.cgi?p=software/guile-picture-language.git;a=blob;f=pict.scm;h=54f0ce09f4ac33c3ecc3340f038d4c9da5f4a443;hb=HEAD>
[^fn:5]: <http://pipecode.blogspot.com/2013/04/sicp-exercise-252.html>
[^fn:6]: see the answer of `aos` here:
    <http://community.schemewiki.org/?sicp-ex-2.72>
[^fn:7]: <https://mk12.github.io/sicp/exercise/2/3.html#ex2.72> and others.
[^fn:8]: <https://www.gnu.org/software/guile/manual/html_node/Hash-Table-Reference.html>
[^fn:9]: <http://c2.com/cgi/wiki?ExpressionProblem>
[^fn:10]: <http://community.schemewiki.org/?sicp-ex-2.76>
[^fn:11]: starting on line 269
    <https://github.com/danielpi/SICP-Exercises/blob/46a6b38fd83faae21db239f40d913ff24062d2e6/Racket/Ex%202.82%20Generalized%20apply-generic.rkt#L269>
[^fn:12]: A real
    number can be projected to an integer using the <span class="inline-src language-scheme" data-lang="scheme">`round`</span> primitive,
    which returns the closest integer to its argument.
[^fn:13]: In an implementation like MIT Scheme, this produces a polynomial
    that is indeed a divisor of \\(Q\_1\\) and \\(Q\_2\\), but with rational coefficients.
    In many other Scheme systems, in which division of integers can produce
    limited-precision decimal numbers, we may fail to get a valid divisor.
