# LaTeX Maths Cheat Sheet

## Docs and Tools

- [Short Math Guide for LaTeX](ftp://ftp.ams.org/pub/tex/doc/amsmath/short-math-guide.pdf)
- [Comprehensive LaTeX Symbol List](http://mirror.jmu.edu/pub/CTAN/info/symbols/comprehensive/symbols-a4.pdf)
- [Detexify: LaTeX Handwritten Symbol Recognition](http://detexify.kirelabs.org/classify.html)

## Maths Packages

- `\usepackage{amsfonts}`: font (e.g., $\mathbb{R}$)
- `\usepackage{amssymb}`: load `amsfonts` automatically
- `usepackage{amsmath}`
- `[usepackage{mathtools}](http://ctan.sharelatex.com/tex-archive/macros/latex/contrib/mathtools/mathtools.pdf)`

## Math Symbols

- [What is the difference between the different vertical bars: \mid, | (vertical bar), \vert, \lvert, \rvert, \divides](https://tex.stackexchange.com/a/506/23098)

- [bold math symbols](http://tex.stackexchange.com/questions/595/how-can-i-get-bold-math-symbols)
  - `$\boldsymbol{\infty}$` or `$\pmb{\infty}$` to one symbol at a time
  - `\boldmath$x^2$` or `$\mathbf{x^2}$`
  - using `bm` package: `$\bm{a}=\bm{\alpha}$`

- [Change the size of a math symbol](https://tex.stackexchange.com/a/348114/23098)

  - Using `\text`
    ```
    \[ F \longrightarrow \text{\Large$ G $}\longrightarrow H \]
    ```
  - Using `\mathlarger` from `relsize`
    ```
    \[ F \longrightarrow \mathlarger{G}\longrightarrow H \]
    ```

- [Force the subscripts to be under the summation](https://tex.stackexchange.com/a/218605/23098)

```
\sum\limits_{j=1} A_{xj}
```

- [How can I write multiple lines in a subscript?](https://tex.stackexchange.com/a/7504/23098)

```
\usepackage{amsmath}
\[
  \underbrace{...}_{\substack{\text{Some long text that} \\ \text{should be multiline}}}
\]
```

[OR,](https://tex.stackexchange.com/a/7575/23098)

```
\[
 \underbrace{some equation}_{\text{Some long text that}\atop\text{should be multilined}}
\]
```

- [Command for argmin or argmax](http://tex.stackexchange.com/a/284054/23098)

```
% limits underneath
\DeclareMathOperator*{\argminA}{arg\,min} % Jan Hlavacek
\DeclareMathOperator*{\argminB}{argmin}   % Jan Hlavacek
\DeclareMathOperator*{\argminC}{\arg\min}   % rbp

\newcommand{\argminD}{\arg\!\min} % AlfC
\newcommand{\argminE}{\mathop{\mathrm{argmin}}}          % ASdeL
\newcommand{\argminF}{\mathop{\mathrm{argmin}}\limits}   % ASdeL

% limits on side
\DeclareMathOperator{\argminG}{arg\,min} % Jan Hlavacek
\DeclareMathOperator{\argminH}{argmin}   % Jan Hlavacek
\newcommand{\argminI}{\mathop{\mathrm{argmin}}\nolimits} % ASdeL
```

- [\Rightarrow vs. \implies, and "does not imply" symbol](https://tex.stackexchange.com/q/47063/23098)

```
\usepackage{amsmath}
\usepackage{centernot}

$A \centernot\implies B$
```

- [\Rightarrow with text above it](http://tex.stackexchange.com/a/103993/23098)

```
\usepackage{mathtools}
$\xrightarrow{hello}$
$\xrightarrow[world]{hello}$ % The optional argument is for "under"
$\xRightarrow[world]{hello}$
```

- ["def" over the equal sign](https://tex.stackexchange.com/a/353325)

```
\usepackage{amsmath}
$\overset{\mathrm{def}}{=}$
```

- [Typesetting the "define equals :=" symbol](https://tex.stackexchange.com/q/28836)

Using `mathtools` directly:
```
\usepackage{mathtools}
$a\coloneqq b \qquad b\eqqcolon a$
```

Or, define it:
```
\usepackage{mathtools}
\newcommand{\defeq}{\vcentcolon=}
\newcommand{\eqdef}{=\vcentcolon}
```

- [xmark and checkmark](http://tex.stackexchange.com/a/42620/23098)

```
\usepackage{amssymb, pifont}
\newcommand{\cmark}{\ding{51}}
\newcommand{\xmark}{\ding{55}}
```

OR, using tikz:

```
\usepackage{tikz}
\def\checkmark{\tikz\fill[scale=0.5](0,.35) -- (.25,0) -- (1,.7) -- (.25,.15) -- cycle;} 
```

- [Placeholder for variable as in f(x, .)](https://tex.stackexchange.com/q/47060/23098)

I use

```
f(x,\_)
```

## Labels

- [Label equation with a symbol](https://tex.stackexchange.com/a/12027/23098)

```
\usepackage{mathtools}   % loads amsmath

\begin{equation}  \label{eqn:einstein}
  E=mc^2  \tag{*}
\end{equation}
\eqref{eqn:einstein}
```

- [Labelled in-line equation](https://tex.stackexchange.com/a/78580/23098)

Warning: This is not a good idea!

```
\usepackage{amsmath}

The equation $a+1=b~\refstepcounter{equation}(\theequation)\label{myeq}$

Here is a reference: \eqref{myeq}
```

## Array
- [Adjusting space between array rows and columns](http://tex.stackexchange.com/a/103511/23098)
  - Using `\arraycolsep` and `\arraystretch`
  ```
  \[\arraycolsep=1.0pt\def\arraystretch{1.5}
    \begin{array}{rll}
      x(1) &= \dfrac{x(0)}{1} &= x(0)\\
      x(2) &= \dfrac{x(1)}{2} &= \dfrac{x(0)}{2}\\
    \end{array}
  \]
  ```

## Cases

- [How to write cases with LaTeX?](https://tex.stackexchange.com/a/240911/23098)

```
$\begin{displaystyle}
  X(m, n) = \left.
  \begin{cases}
    x(n), & \text{for } 0 \leq n \leq 1 \\
    x(n - 1), & \text{for } 0 \leq n \leq 1 \\
    x(n - 1), & \text{for } 0 \leq n \leq 1
  \end{cases}
  \right\} = xy
\end{displaystyle}$
```

## Align
- [amsmath align environment: row spacing](http://tex.stackexchange.com/a/14680/23098)

```
\begin{align*}
  X &= \frac{\textit{Some text here}}{\textit{And some text here}}\\[1em]
  Y &= \frac{\textit{Will make everything}}{\textit{Look too close together}}
\end{align*}
```

Or, to add a little extra spacing to every row of an align:

```
\begingroup
  \addtolength{\jot}{1em}
  \begin{align*}
    X &= \frac{\textit{Some text here}}{\textit{And some text here}}\\
    Y &= \frac{\textit{Will make everything}}{\textit{Look too close together}}
  \end{align*}
\endgroup
```
