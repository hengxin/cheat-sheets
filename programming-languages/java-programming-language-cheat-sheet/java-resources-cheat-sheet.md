# Java Programming Resources Cheat Sheet

## Books

## Awesome Libraries

- [google/guava @ GitHub](https://github.com/google/guava); [its wiki](https://github.com/google/guava/wiki)

  The Guava project contains several of Google's core libraries that we rely on in our Java-based projects: 
  collections, caching, primitives support, concurrency libraries, common annotations, string processing, I/O, and so forth.

- [cbeust/jcommander](https://github.com/cbeust/jcommander)

  Command line parsing framework for Java.
  This is an *annotation* based parameter parsing framework for Java.

- [Java Hamcrest](http://hamcrest.org/JavaHamcrest/)

  Matchers that can be combined to create flexible expressions of intent.

- [BeanIO](http://www.beanio.org/)

  BeanIO is an open source Java framework for marshalling and unmarshalling Java beans from a flat file, stream, or simple String object.

## Code Snippets

- [Collected Java Practices](http://www.javapractices.com/home/HomeAction.do)

  javapractices.com offers concise presentations of Java practices, tasks, and designs, illustrated with 
  syntax-highlighted code examples. The code examples are available for download. See below for user comments on the site.

## Tools

### `jar`
- [`unzip youFile.jar "*.java"`](http://stackoverflow.com/a/25973296/1833118): JAR - extracting specific files
- [`jar xf myFile.jar foo bar`](http://stackoverflow.com/a/25973035/1833118): JAR - extracting specific files; regex not supported
  - `jar xf my.jar @myfiles.lst` with the file `myfiles.lst`:
    ```
    com/my/MyClass.java
	com/my/MySecondClass.java
    ```
- [`unzip file.jar -d dir_name_where_extracting`](http://stackoverflow.com/a/23887468/1833118): extracting jar to dir




## Videos
