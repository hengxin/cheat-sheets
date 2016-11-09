# LaTeX Framed Packages Cheat Sheet

## Package [`mdframed`](http://mirror.unl.edu/ctan/macros/latex/contrib/mdframed/mdframed.pdf)

```
% mdf: mdframed; #1: frame color; #2: frame title color; #3: frame title; #4: text color; #5: text
\newcommand{\mdf}[5]{
\begin{mdframed}[frametitle={
  \tikz[baseline = (current bounding box.east), outer sep = 0pt]
  \node[anchor = east, rectangle, fill = #1!20, font = \small]{\strut \textcolor{#2}{#3:}};},
  innertopmargin = 2pt, linecolor = #1!20, linewidth = 2pt, topline = true,
  frametitleaboveskip=\dimexpr-\ht\strutbox\relax]
  \begin{center}
	\textcolor{#4}{#5}
  \end{center}
\end{mdframed}
}
```

## Package `framed`
