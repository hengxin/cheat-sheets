# Lambda in Java Programming Languages Cheat Sheets

## Resources

- [Java 8 Cheatsheet by Nikolche Mihajlovski](http://www.java8.org/)

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
