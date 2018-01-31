# LaTeX Theorem Cheat Sheet

## Packages
- [`\usepackage{amsthm}`]()

```
\documentclass{article}
\usepackage{amsthm}
 
\begin{document}
  \begin{lemma}
    Lemma here.
  \end{lemma}
 
  \begin{proof}
    Proof here.
  \end{proof}
\end{document}
```

## Theorem Styles

- [Spacing before and after with `\newtheoremstyle`](https://tex.stackexchange.com/a/37475/23098)

```
\usepackage{amsthm}% http://ctan.org/pkg/amsthm

\newtheorem{thm}{Theorem}[chapter]

\newtheoremstyle{exampstyle}
  {\topsep} % Space above
  {\topsep} % Space below
  {} % Body font
  {} % Indent amount
  {\bfseries} % Theorem head font
  {.} % Punctuation after theorem head
  {.5em} % Space after theorem head
  {} % Theorem head spec (can be left empty, meaning `normal')

\theoremstyle{exampstyle} \newtheorem{examp}[thm]{Example}
```

## Theorem Numbering

- [Theorem/Definition/Lemma problem — Numbering](https://tex.stackexchange.com/a/45821/23098)

```
\usepackage{amsthm}

\theoremstyle{plain}
\newtheorem{thm}{Theorem}[section] % reset theorem numbering for each section

\theoremstyle{definition}
\newtheorem{defn}[thm]{Definition} % definition numbers are dependent on theorem numbers
\newtheorem{exmp}[thm]{Example} % same for example numbers
```
