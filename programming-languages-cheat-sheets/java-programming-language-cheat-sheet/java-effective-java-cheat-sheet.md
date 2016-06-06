# Effective Java Cheat Sheet

## Exception
- [Throwing exception vs returning null value with switch statement](http://stackoverflow.com/a/2567967/1833118)

  Using `throw new IllegalArgumentException(<msg>)`. 
  
  Do not forget to declare this exception in `@throw` clause in JavaDoc (instead of in the surrounding method).
