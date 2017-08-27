# LaTeX Tables Cheat Sheet

## `table` and `table*`

- `table*` for spanning two columns
- `\renewcommand{\arraystretch}{1.2}` to stretch the table vertically
- `\resizebox{\textwidth}{!}{% ... %}` to scale the table to text width

```
\begin{table}[t!]
  \renewcommand{\arraystretch}{1.2}
  \centering
  \caption{}
  \label{tbl:}
  \resizebox{\textwidth}{!}{%
  \begin{tabular}{}
  \end{tabular}%
  }
\end{table}
```

## package `xcolor`

- [Table cell color](http://tex.stackexchange.com/a/50351/23098)

```
\usepackage[table]{xcolor}% http://ctan.org/pkg/xcolor
text & \cellcolor{blue!25}text & text \\
```

- [Coloring multi-row tables in LaTeX](http://texblog.org/2014/05/19/coloring-multi-row-tables-in-latex/)

```
\rowcolor{}, 
\columncolor{}
```

## package `multirow`

- [Vertical Alignment in multirow using cells with more than one lines](http://tex.stackexchange.com/a/66599/23098)

Adjust the alignment manually using the fixup-parameter `[1em]`: 

```
% \multirow{nrows}[bigstruts]{width}[fixup]{text}
\multirow{-10}{\*}[1em]{\cellcolor{yellow}\begin{sideways}TEST\end{sideways}}
```

- [Create a table with two parts with different tabular features](http://tex.stackexchange.com/a/26354/23098)

Within a table environment, you can use different tabular environments, 
of different types and with a different number of columns. 

```
\begin{table}
\centering
\caption{An interesting table}
	\subcaption*{Panel A: Some stuff}
	\begin{tabular}{lcr}
	First name & Last name  & Product \\
	Bubba & Gump & Shrimp \\
	Steve & Jobs & Happiness
	\end{tabular}

	\bigskip

	\subcaption*{Panel B: Other stuff}
	\begin{tabular}{ll}
	School & State \\
	Harvard & MA \\
	Yale & CT \\
	Brown & RI
	\end{tabular}
\end{table}
```

## `threeparttable` package
- [`\tnote` and `tablenotes` @ Section 9.3.1 Footnotes within Tables (HOWTO IEEEtran)](https://www.cs.cmu.edu/~steffan/personal/tmp/IEEEtran_HOWTO.pdf)
- [Resizing table when using package {threeparttable}](http://tex.stackexchange.com/a/205525/23098)

```
\begin{table*}[t!]
  \renewcommand{\arraystretch}{1.1}
  \centering
  \caption{}
  \label{tbl:}
  \resizebox{\textwidth}{!}{% OR: \begin{adjustbox}{max width=\textwidth}
  \begin{threeparttable}[b]
  \begin{tabular}{|c||c|c|}
  \hline
  & data1 \tnote{a} & data2 \tnote{1} & data3 \tnote{a}
  \hline
  \end{tabular}%
  \begin{tablenotes}
    \footnotesize
    \item[a] footnote for {a}.
    \item[1] footnote for {1}.
  \end{tablenotes}
  \end{threeparttable}
}%                            OR: \end{adjustbox}
\end{table*}
```

## [`dcolumn` package](https://puzzling.org/technology/2012/06/useful-latex-packages-tables-and-figures/)
The dcolumn package produces tabular columns that are perfectly aligned on a decimal point.

```
usepackage{dcolumn}
% create a new column type, d, which takes the . out of numbers, replacing the .
% with a cdot and aligning on it.
newcolumntype{d}[1]{D{.}{cdot}{#1}}

% a tabular enviroment with a 1 and 3 figures after the decimal point column
begin{tabular}{d{1}d{3}}
multicolumn{1}{c}{Heading 1} & multicolumn{1}{c}{Heading 2}\
1.6 & 1.657
\
2.0 & 6.563
\
end{tabular}
```
