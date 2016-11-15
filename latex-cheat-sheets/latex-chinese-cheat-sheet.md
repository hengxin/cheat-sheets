# LaTeX for Chinese Cheat Sheet (LaTeX 中文环境)

## Docs and Tutorials

- [[LaTeX基础]](http://olliewiki.com/NoteBook/latex/latexnote.html)

## Chinese Setups

### Using Documentclass `ctexart`

- [ctexart @ ShareLaTeX](https://www.sharelatex.com/learn/Chinese#Simplified_Chinese_with_ctex_classes)

*Note:* Please note that when using Chinese language fonts, 
you will need to compile the document in XƎLATEX.

```
\documentclass{ctexart}
 
\setCJKmainfont{SimSun.ttf}
\setCJKsansfont{SimHei.ttf}
\setCJKmonofont{SimFang.ttf}
```

- [ctexart @ tex.stackexchange](http://tex.stackexchange.com/a/17637/23098)

  `ctexart` is designed for Chinese typesetting. 
  Font sizes, indentation, name translation, line spacing, ... everything is set.
  
  ```
  % UTF-8 encoding
  % Compile with latex+dvipdfmx, pdflatex, xelatex or lualatex
  % XeLaTeX is recommanded
  \documentclass[UTF8, a4paper]{ctexart}
  \renewcommand{\proofname}{证明}
  \begin{document}
  文章内容。
  \end{document}
  ```
 OR,
 
 ```
 \documentclass{article}
 \usepackage[UTF8]{ctex}
 ```
 
### Using `XeLaTex`

- Other easy way to create Chinese documents is 
[by importing the `xeCJK` package](https://www.sharelatex.com/learn/Chinese#XeLaTeX)
and setting up your favourite font.

```
\usepackage{xeCJK}
 
\setCJKmainfont{simsun.ttf}
\setCJKsansfont{simhei.ttf}
\setCJKmonofont{simfang.ttf}
```

### Using `pdfLaTeX`

- [The CJK package can also be used to generate a document with pdfLaTeX](https://www.sharelatex.com/learn/Chinese#pdfLaTeX).
You may not be able to use external fonts, but here you can use traditional and 
simplified characters as well as Latin characters.

```
\usepackage{CJKutf8}
 
\begin{document}
 
\begin{CJK*}{UTF8}{gbsn} % encoding + font
  text here.
\end{CJK*}
```

## Theorems Environment

```
\usepackage{amsthm}

\theoremstyle{plain}
\newtheorem{cdef}{定义}[section]
\newtheorem{ctheorem}{定理}[section]
\newtheorem{cquestion}{问题:}[section]
\newtheorem{cobservation}{观察:}[section]

\theoremstyle{proof}
\newtheorem{cproof}{证明}[section]
```

## Floats Environment

## Packages for Chinese

### Package [`zhnumber`](http://www.ctan.org/pkg/zhnumber)

The package `zhnumber` provides many macros to convert numbers, counters, dates and times into their Chinese representation.

- [Date and time macros in Chinese](http://tex.stackexchange.com/a/96395/23098)

```
\documentclass{article}
\usepackage{xeCJK}
\setCJKmainfont{SimSun}
\usepackage{zhnumber}
\begin{document}
Date: \zhtoday

Time: \zhcurrtime

\zhnumsetup{time=Chinese}
Date: \zhtoday

Time: \zhcurrtime

\zhnumsetup{time=Arabic}
1586/08/17: \zhdate{1586/08/17}
\end{document}
```


## LaTeX for PhD Thesis in Nanjing University

