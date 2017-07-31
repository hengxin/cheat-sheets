# LaTeX Theorem Cheat Sheet

## Notations

- [Theorem versus Proposition](https://mathoverflow.net/q/18352/28199)

```
The way I do it is this: 

- main results are theorems
- smaller results are called propositions
- A Lemma is a technical intermediate step which has no standing as an independent result.
 Lemmas are only used to chop big proofs into handy pieces.
```

## Package `amsthm`

- [Not numbering Remarks](https://tex.stackexchange.com/a/52452/23098)

```
\usepackage{amsthm}
\newtheorem*{remark}{Remark}

\begin{remark}[Remark]
  Some remark here.
\end{remark}
```

- [Suggestions for nested proofs](https://tex.stackexchange.com/a/223977/23098)

```
\newenvironment{subproof}[1][\proofname]{%
  \renewcommand{\qedsymbol}{$\blacksquare$}%
  \begin{proof}[#1]%
}{%
  \end{proof}%
}

\begin{proof}
  \begin{subproof}
  \end{subproof}
\end{proof}
```

- [How to make the optional title of a theorem bold with amsthm?](https://tex.stackexchange.com/a/43971/23098)

Redefines the `plain` and `definition` theorem styles in order that the theorem title has the same font attributes as the theorem heading:

```
\usepackage{amsthm}
\makeatletter
\def\th@plain{%
  \thm@notefont{}% same as heading font
  \itshape % body font
}
\def\th@definition{%
  \thm@notefont{}% same as heading font
  \normalfont % body font
}
\makeatother
```

## Package `ntheorem`
