# Java RMI Cheat Sheet

## Tutorials
- [Oracle: Getting Started Using Java RMI](https://docs.oracle.com/javase/8/docs/technotes/guides/rmi/hello/hello-world.html)

## Server Side

### RMI Registry
- [RMI server: `rmiregistry` or `LocateRegistry.createRegistry`](http://stackoverflow.com/a/99286/1833118)

  They are the same thing. 

  `rmiregistry` is a separate program, which you can run from a command line or a script, 
  while `LocateRegistry.createRegistry` does the same thing programatically.

- [`java.rmi.UnmarshalException`: error unmarshalling arguments](http://stackoverflow.com/a/14077286/1833118)

  That class isn't available on the CLASSPATH of the RMI Registry. 
  The simplest way to fix it is to start the Registry in the same JVM, via `LocateRegistry.createRegistry()`. 
  Store the result in a static field.

- [How to close `rmiregistry` running on particular port?](http://stackoverflow.com/q/8386001/1833118)

  - Bring it foreground: `% fg` and then close it via `Ctrl + C`.
  - `ps -ax | grep rmiregistry` and then `kill -9 <pid>`; see [here](http://www.coderanch.com/t/208280/java/java/kill-rmiregistry-Linux).

### Export Remote Objects


## Client Side

