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

## Doc [`{@inheritDoc}`](http://docs.oracle.com/javase/6/docs/technotes/tools/solaris/javadoc.html#@inheritDoc)

Inherits (copies) documentation from the "nearest" inheritable class or implementable interface into the current doc comment at this tag's location. 
This tag is valid only in these places in a doc comment:

- In the main description block of a method.
- In `@return`, `@param` and `@throws` tags of a method.

  ```
    /**
     * @param phase {@inheritDoc}. There are two phases in the 2PC protocol.
     *                           So the value of @param phase here is either 0 or 1.
     * @param registeredParties {@inheritDoc}.
     *
     * @return {@code true} if both phases have been finished; {@code false}, otherwise.
     *
     * @throws IllegalArgumentException thrown if no such a phase exists.
     */
    @Override
    protected boolean onAdvance(int phase, int registeredParties) { }
  ```

## Table
