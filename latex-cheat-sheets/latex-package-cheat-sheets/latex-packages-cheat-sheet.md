# LaTeX Packages Cheat Sheet (Alphabetically)

## [`comment`](https://www.ctan.org/tex-archive/macros/latex/contrib/comment?lang=en): Selectively include exclude portions of text.

```
\begin{comment}
  text here
\end{comment}
```

The comment package also allows one to define your own comment-like environments.
```
\excludecomment{arxivproof}

\begin{arxivproof}
  \begin{proof}
  \end{proof}
\end{arxivproof}
```

## [`docmute`](http://www.ctan.org/pkg/docmute): Input files ignoring LATEX preamble, etc.

## [`emptypage`](https://www.ctan.org/pkg/emptypage?lang=en): Make empty pages really empty

## [`savesym`](https://www.ctan.org/pkg/savesym?lang=en): Redefine symbols where names conflict

- `\savesymbol{XXX}`: renames a symbol from `\XXX` to `\origXXX` 
- `\restoresymbols{yyy}{XXX}`: renames `\origXXX` back to `\XXX` 
  and defines a new command, `\yyyXXX`, which corresponds to the most recently loaded version of `\XXX`.

```
\usepackage{savesym}
\usepackage{the-first-package}
\savesymbol{a-symbol}
\usepackage{the-second-package}
```
