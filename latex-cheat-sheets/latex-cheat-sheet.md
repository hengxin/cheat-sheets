# LaTeX Cheat Sheet

This document is for basic LaTeX typesetting. See other documents for [`TikZ`](https://github.com/hengxin/cheat-sheets/blob/master/latex-cheat-sheets/latex-tikz-cheat-sheet.md) and [`PGFPlots`](https://github.com/hengxin/cheat-sheets/blob/master/latex-cheat-sheets/latex-pgfplots-cheat-sheet.md).

For Chinese language, see [latex-chinese-cheat-sheet.md](https://github.com/hengxin/cheat-sheets/blob/master/latex-cheat-sheets/latex-chinese-cheat-sheet.md).


## Basic LaTeX Typesetting

### Text
- [Strikethrough text](http://tex.stackexchange.com/a/23712/23098)
  - `\usepackage[normalem]{ulem} \sout{Hello World}`; see [ulem](http://ctan.org/pkg/ulem)
  - `\usepackage{soul} \st{Hellow world}`
  - `\sout{\textcolor{blue}{text}}`: with textcolor; It seems that `soul` does not work.
- [Thickness for \sout{} (strikethrough) command from ulem package](http://tex.stackexchange.com/a/287603/23098)
```
\usepackage{ulem}
\newcommand{\soutthick}[1]{%
    \renewcommand{\ULthickness}{2.4pt}%
       \sout{#1}%
    \renewcommand{\ULthickness}{.4pt}% Resetting to ulem default
}
\soutthick{text}
\sout{text}
```

### Alignment

- `\begin{center}  \end{center}`
- [`\centerline{}`](http://tex.stackexchange.com/a/24187/23098)
- [What commands are there for horizontal spacing?](http://tex.stackexchange.com/a/74354/23098)

lots of spacing units

### Fonts
- [Font Size](http://tex.stackexchange.com/a/107058/23098)

  - `\tiny  \scriptsize  \footnotesize  \small  \normalsize  \large  \Large  \LARGE  \huge  \Huge`
  - In Math: `\displaystyle  \textstyle  \scriptstyle  \scriptscriptstyle`
- [Change font size of an align environment](http://tex.stackexchange.com/a/33589/23098)
  ```
  {\tiny
    \begin{align}
      a &< b
    \end{align}
  }%
  Following paragraph.
  ```
  *Note:* Insert a `%` symbol after closing the group with `\tiny`.


- [How to remove the warnings “Font shape `OT1/cmss/m/n' in size <4> not available” and “Size substitutions with differences” in beamer?](http://tex.stackexchange.com/a/58088/23098)
  
  Adding `\usepackage{lmodern} % http://ctan.org/pkg/lm`

- [Simplest way to typeset entire document in sans serif](http://tex.stackexchange.com/a/2097/23098)
```
\renewcommand{\familydefault}{\sfdefault} % switch to using sans-serif for everything except mathematics
```

### Colors
- [Page 8 of "A very minimal introduction to TikZ"](http://cremeronline.com/LaTeX/minimaltikz.pdf)
  
  It shows pre-defined colors: `black, blue, brown, cyan, darkgray, gray, green, lightgray, lime, magenta, olive, orange, pink, purple, red, teal, violet, white, yellow`.
- [LaTeX Color Definition](http://latexcolor.com/)

  It lists a collection of color definitions like `\definecolor{airforceblue}{rgb}{0.36, 0.54, 0.66}`.
- [LaTeX/Colors @ wiki](https://en.wikibooks.org/wiki/LaTeX/Colors)
  
  It gives pre-defined colors and shows how to define colors. It also mentions other packages like `color` and `xcolor`.

- [Lighten colors](http://tex.stackexchange.com/a/48663/23098)
  Using the `xcolor` package: `red!60`

### Hyperlinks and URLs
- [How to change the color of `\href` links](http://tex.stackexchange.com/a/13424/23098)
```
\definecolor{links}{HTML}{2A1B81}
\hypersetup{colorlinks,linkcolor=,urlcolor=links}
% then in body
\href{http://tex.stackexchange.com/questions/13423/how-to-color-href-links-in-beamer}{Your question}
```

- [How to change the font of URL in the bibliography](https://tex.stackexchange.com/a/106623/23098)

```
\usepackage{url}
\urlstyle{same}
```

## Floats

### General Settings
- [How to change the spacing between figures/tables and text?](http://tex.stackexchange.com/a/26522/23098)
 - Single column: `\setlength{\textfloatsep}{10pt plus 1.0pt minus 2.0pt}`

```
\textfloatsep — distance between floats on the top or the bottom and the text;
\floatsep — distance between two floats;
\intextsep — distance between floats inserted inside the page text (using h) and the text proper.

When typesetting in two column mode, two more lengths are available:
\dbltextfloatsep — distance between a float spanning both columns and the text;
\dblfloatsep — distance between two floats spanning both columns.
```

### General Packages

- [rotating](https://puzzling.org/technology/2012/06/useful-latex-packages-tables-and-figures/)

  It is for a big table (`\begin{sidewaystable}`) or figure (`\begin{sidewaysfigure}`) that should be rotated sideways onto its own page.


## Miscellaneous

- [\rule{0.5\textwidth}{.4pt}](http://tex.stackexchange.com/a/128640/23098): horizontal line
