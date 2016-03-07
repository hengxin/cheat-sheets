# Java Cheat Sheet

## File

- [`File.separator` and `File.pathSeparator` (from stackoverflow)](http://stackoverflow.com/a/5972020/1833118)
  - Using them to write OS-independent code.

## Networking

## Time and Date

- [Format an elapsed time interval in HH:mm:ss.S format (from stackoverflow)](http://stackoverflow.com/q/6710094/1833118)
  - `DurationFormatUtils.formatDuration(millis, "HH:mm:ss.S");` provided by `Apache Commons Lang`.

## Exceptions

- [The try-with-resources Statement (from java-docs)](https://docs.oracle.com/javase/tutorial/essential/exceptions/tryResourceClose.html)

  ```
  try (BufferedReader br =
                   new BufferedReader(new FileReader(path))) {
        return br.readLine();
    }
  ```
  
  No need to `close` the resources declared in `try ()` explicitly, for example, in `finally` block. 
  
  > `try-with-resources` requires `>= java1.7`.
