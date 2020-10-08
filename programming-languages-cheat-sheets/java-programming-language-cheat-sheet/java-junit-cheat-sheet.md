# Java JUnit Cheat Sheet

## [`assertThat` of `Java Hamcrest`](http://hamcrest.org/JavaHamcrest/)

- [CollectionAssert in JUnit?](http://stackoverflow.com/a/1086720/1833118)

```
List<String> l = Arrays.asList("foo", "bar");
assertThat(l, hasItems("foo", "bar"));
assertThat(l, not(hasItem((String) null)));
assertThat(l, not(hasItems("bar", "quux")));

assertEquals(l, Arrays.asList("foo", "bar")));
assertThat(l, is(Arrays.asList("foo", "bar")));
assertThat(l, is(equalTo(Arrays.asList("foo", "bar"))));
```

*Important:* Using this approach you will automagically get a good description of the assert when it fails.

## [`assertEquals`](http://junit.sourceforge.net/javadoc/org/junit/Assert.html#assertEquals(java.lang.Object, java.lang.Object))

- [JUnit 4 compare Collections](http://stackoverflow.com/q/2313229/1833118)

```
assertEquals(msg, expectedSet, actualSet)
```

It calls the [`Set#equals()`](https://docs.oracle.com/javase/8/docs/api/java/util/Set.html#equals-java.lang.Object-) method 
and will pass if the two Sets are the same size and contain the same elements.

This works for [`Map`](https://docs.oracle.com/javase/8/docs/api/java/util/Map.html) too.