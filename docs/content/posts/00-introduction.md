+++
title = "Introduction Notes"
author = ["ProducerMatt"]
draft = false
+++

<div class="ox-hugo-toc toc has-section-numbers">

<div class="heading">Table of Contents</div>

- <span class="section-num">1</span> [Text Foreword](#text-foreword)
- <span class="section-num">2</span> [Preface, 1e](#preface-1e)
        - <span class="section-num">2.0.1</span> [Techniques for controlling complexity](#techniques-for-controlling-complexity)

</div>
<!--endtoc-->


## <span class="section-num">1</span> Text Foreword {#text-foreword}

This book centers on three areas: the human mind, collections of computer
programs, and the computer.

Every program is a model of a real or mental process, and these processes are at
any time only partially understood. We change these programs as our
understandings of these processes evolve.

Ensuring the correctness of programs becomes a Herculean task as complexity
grows. Because of this, it's important to make fundamentals that can be relied
upon to support larger structures.


## <span class="section-num">2</span> Preface, 1e {#preface-1e}

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


#### <span class="section-num">2.0.1</span> Techniques for controlling complexity {#techniques-for-controlling-complexity}

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
