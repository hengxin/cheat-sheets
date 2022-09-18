# Lambda in Java Programming Languages Cheat Sheets

## Resources

- [Java 8 Cheatsheet by Nikolche Mihajlovski](http://www.java8.org/)

## [`Stream`]()

- [How to Convert a Java 8 Stream to an Array?](http://stackoverflow.com/a/23079174/1833118)

```
String[] stringArray = streamString.toArray(String[]::new);
```


## [`IntStream`](https://docs.oracle.com/javase/8/docs/api/java/util/stream/IntStream.html)
```
IntStream.range(0,20).forEach(i -> doSomething());
```

## [`Collectors`](https://docs.oracle.com/javase/8/docs/api/java/util/stream/Collectors.html)
- [Collectors returns HashSet](http://stackoverflow.com/a/30082600/1833118)
```
Collectors.toCollection(HashSet::new)
```

## Collections
- [Applying a change to all values in a List](http://stackoverflow.com/a/19710021/1833118)
```
List<String> list = Arrays.asList("Bob", "Steve", "Jim", "Arbby");
list.replaceAll(String::toUpperCase);
```

### [`reduce`](https://docs.oracle.com/javase/tutorial/collections/streams/reduction.html)

- [`T reduce(T identity, BinaryOperator<T> accumulator)`](https://docs.oracle.com/javase/8/docs/api/java/util/stream/Stream.html#reduce-T-java.util.function.BinaryOperator-)
```
Integer sum = integers.reduce(0, Integer::sum);
```

## Collectors

- [Collectors.joining](https://docs.oracle.com/javase/8/docs/api/java/util/stream/Collectors.html#joining-java.lang.CharSequence-java.lang.CharSequence-java.lang.CharSequence-)

[Examples](http://www.concretepage.com/java/jdk-8/java-8-collectors-joining-example):
```
result = list.stream().collect(Collectors.joining("-","[","]"));
```

## References

- [How do Java 8 array constructor references work?]()

```
IntFunction<int[]> i;
i = int[]::new
```

The [answer](http://stackoverflow.com/a/29448239/1833118) is that:
The compiler desugars array constructor references `Foo[]::new` to a lambda 
`(i -> new Foo[i])`.
