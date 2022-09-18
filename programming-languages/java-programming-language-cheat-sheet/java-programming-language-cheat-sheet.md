# Java Programming Language Cheat Sheet

## [Java String](https://docs.oracle.com/javase/8/docs/api/java/lang/String.html)

- [`myString.split("\\s+");`](http://stackoverflow.com/a/225360/1833118): split with any whitespace

Note that: `\\s` is equivalent to `[ \\t\\n\\x0B\\f\\r]`.

## File

### New/Create

- New a `File`, creating directories if necessary.
  
  ```
  public static File create(path) {
      File file = new File(path);
      path.getParentFile().mkdirs();
      return file;
  }
  ```

- [How to create a file in Java only if one doesn't already exist?](http://stackoverflow.com/a/1556140/1833118)

```
File file = new File(fileName);
file.createNewFile();
```

[`File#createNewFile()`](http://docs.oracle.com/javase/6/docs/api/java/io/File.html#createNewFile%28%29) atomically creates a new, empty file named by this abstract pathname 
if and only if a file with this name does not yet exist.

### Read and Write Files Using [Guava: Files](https://google.github.io/guava/releases/19.0/api/docs/com/google/common/io/Files.html)

```
List<String> lines = Files.readLines(file, Charsets.UTF_8);
Files.write(CharSequence from, File to, Charset charset);
```
There is also `Files.readLines(File file, Charset charset, LineProcessor<T> callback)`.

### Read/Write/Modify

- [how to delete the content of text file without deleting itself](http://stackoverflow.com/a/6994664/1833118)

```
PrintWriter writer = new PrintWriter(file);
writer.print("");
writer.close();
```

### List a Directory

Using `FileFilter` or `FilenameFilter` to filter listed files obtained from `list()` or `listFiles()`.

```
File[] directories = new File("/your/path/").listFiles(new FileFilter() {
    @Override
    public boolean accept(File file) {
        return file.isDirectory();
    }
});

String[] list = dir.list(new FilenameFilter() {
    @Override
    public boolean accept(File dir, String name) {
        return name.matches("[0-9]+");
    }
});
```
Or, written as lambda expression in JDK 8+.

```
File[] directories = new File("/your/path/").listFiles(File::isDirectory);
String[] list = dir.list( (dir, name) -> name.matches("[0-9]+") );
```

### Copy

In JDK 7+, using `Files.copy` as follows (stolen code: [Copy a file](http://www.javapractices.com/topic/TopicAction.do?Id=246)):

```
Path FROM = Paths.get("C:\\Temp\\from.txt");
Path TO = Paths.get("C:\\Temp\\to.txt");
CopyOption[] options = new CopyOption[]{ StandardCopyOption.REPLACE_EXISTING, StandardCopyOption.COPY_ATTRIBUTES }; 
Files.copy(FROM, TO, options);
```

### OS-independent Code
- [`File.separator` and `File.pathSeparator` (from stackoverflow)](http://stackoverflow.com/a/5972020/1833118)
  - Using them to write OS-independent code.
- Using [`System.lineSeparator()`](http://docs.oracle.com/javase/8/docs/api/java/lang/System.html#lineSeparator--) to get the system-dependent line separator string. On UNIX systems, it returns `"\n"`; on Microsoft Windows systems it returns `"\r\n"`.


## IO

### java.io.Reader

### java.io.Writer

- [`newLine() in java.io.BufferedWriter`](http://docs.oracle.com/javase/6/docs/api/java/io/BufferedWriter.html#newLine()) uses the platform's own notion of line separator as defined by the system property `line.separator`. Using this method to write OS-independent code. 

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
