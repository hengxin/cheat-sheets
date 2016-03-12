# Javadoc Style Guide Cheat Sheet

## Overview

Read the official document for [How to Write Doc Comments for the Javadoc Tool](http://www.oracle.com/technetwork/articles/java/index-137868.html).

## Code `{@code }`

- `{@code arg}`: Refer to Method Parameter [(from stackoverflow)](http://stackoverflow.com/q/1667212/1833118).

  ```
  /**
   * If {@code arg} is null, ....
   * @param arg
   */
  void foo(String arg) {...}
  ```

## Link `{@link }`

- `{@link ClassName}`: Link to a Class
- `{@link #field}`: Link to field of *this* class 

## Hyperlink

## List: Enumerate and Itemize

- `<ul> <li> </ul>`: un-numbered list

  ```
  /**
   * <ul>
   * <li> item
   * <li> item
   * </ul>
   */
  ```
  
- `<ol> <list> </ol>`: numbered list

  ```
  /**
   * <ol>
   * <li> first
   * <li> second
   * </ol>
   */
  ```
  
## Table
