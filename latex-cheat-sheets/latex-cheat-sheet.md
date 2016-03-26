# LaTeX Cheat Sheet

## Document Class

- article

### For Chinese Language

- [ctexart @ tex.stackexchange](http://tex.stackexchange.com/a/17637/23098)

  `ctexart` is designed for Chinese typesetting. 
  Font sizes, indentation, name translation, line spacing, ... everything is set.
  
  ```
  % UTF-8 encoding
  % Compile with latex+dvipdfmx, pdflatex, xelatex or lualatex
  % XeLaTeX is recommanded
  \documentclass[UTF8]{ctexart}
  \begin{document}
  文章内容。
  \end{document}
  ```
 OR,
 
 ```
 \documentclass{article}
 \usepackage[UTF8]{ctex}
 ```
 
## Theorems and Proofs

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

## Resources

### Packages

### Tools
- [Tables Generator](http://www.tablesgenerator.com/)

  It is for LaTeX tables, HTML tables, Text tables, Markdown tables, and MediaWiki tables.
