This file collects syntax, semantics, and common usages of Mathematica (mma, for short).

# List Manipulation

## Constructing Lists

## Elements of Lists
- [Extract x|y coordinates](http://mathematica.stackexchange.com/a/110990/22068)
```
data = RandomInteger[{1, 100}, {10, 2}];
data[[All, 1]]; (* all x values *)
data[[All, 2]]; (* all y values *)
```

## Rearranging & Restructuring Lists

- Partition

  `In:= Partition[{1,2,3,4,5,6},2]` => `Out:= {{1,2}, {3,4}, {5,6}}`
  
## Filtering Lists

> *Refer to [Filtering Lists in Mathematica@mma.se](http://mathematica.stackexchange.com/q/16676/22068)*.

- Select
  
  `In:= Select[{1,2,3,4,5,6}, # > 3 &]` => `Out:= {4,5,6}`

## Math & Counting Operations

### Statistics
- `Quantile[dataList, {2/100, 1/4, 1/2, 3/4, 98/100}, {{1/2, 0}, {0, 1}}];`
- `Mean[dataList]`
- `Median[dataList]`

## Displaying & Visualizing Lists

# Files

## Directory and Files

- [List Files in a Directory]()
```
SetDirectory[dir];
FileNames[];  OR  FileNames[form]  OR FileNames[form, {dir1, dir2, ...}]
```

## Data Importing

- Numerical data file, e.g., `10, 20, 30` , one data per line

  `dataList = Flatten[Import[filePath, "Data"]];` => `{ 10, 20, 30 }`
  
  - `filePath`: The file will be searched under `$Path`. Note that in Linux, `/home/$USER/` is in `$Path`.
  - `Flatten`: `Import` returns a `n * 1` matrix. We use `Flatten` to obtain a list of data.
- Numerical data file, e.g., `1 10 \\ 2 20 \\ 3 30`, a pair per line
  
  `dataList = Import[filePath, "Table"];` => `{ {1,10}, {2,20}, {3,30} }`

## Data Exporting

