# IntelliJ Shortcuts Cheet Sheet

The Table Of Content (*nearly*) corresponds to the menus of Android Studo IDE.

## The Most Powerful Ones

- `Ctrl + Shift + A (Help)`: Find Action; Type "action or option name" to search.
- `Double Shift`: Search Everywhere; `Double Shift` *again*: to include non-project items
  - `Ctrl + E`: Find Recent Files
  - `Ctrl + Shift + E`: Fine Recently Edited Files
  - `Ctrl + N`: Find Classes
  - `Ctrl + Shift + N`: Find Files
  - `Ctrl + Alt + Shift + N`: Find Symbols
- `Alt + Enter`: Quick Fix

## File

- `Alt + Insert (File | New)`: Create New Files, including Class, Package, file, Layout, etc.
- `Ctrl + Alt + S`: Settings...
- `Ctrl + Alt + Shift + S`: Project Structure...

  > *Note:* You (in Ubuntu) may need to first disable `Ctrl + Alt + S` for `Toggle shaded state` in `Keyboard | Windows`
- `Alt + F4`: Exit IntelliJ

## Edit

- `Alt + F7 (Edit | Find)`: Find Usages

  > *Note:* You (in Ubuntu) may need to first disable `Alt + F7` for `Move Window` in `Keyboard | Windows`.
- `Ctrl + Shift + F7 (Edit | Find | Highlight Usages in File)`: Highlight usages of some variable in the current file
  - `F3 | Shift + F3`: navigate through highlighted usages
  - `Escape`: remove highlighting

- `Shift + Insert`: Copy

## View

-  `Ctrl + E`: Recent Files; Then type to search.
-  `Ctrl + Shift + E`: Recently Changed Files
-  `Ctrl + Q`: Quick Documentation
-  `Ctrl + P`: Parameter Info

## Navigate

- `Ctrl + B (Navigate | Declaration)`: Navigate to the declaration of a class, method, or variable; OR `Ctrl + Click`
- `Ctrl + Alt + B (Navigate | Implementation(s))`: Navigate to *implementation* methods of an `abstract` method
- `Ctrl + N (Navigate | Class)`: Typing the Class name to locate it
- `Ctrl + F12 (Navigate | File Structure)`: Navigate in the currently edited file; list of members of the current class
- `F2`: Next Highlighted Error
- `Shift + F2`: Previous Highlighted Error
- `Alt + Down`: Next Method
- `Alt + Up`: Previous Method
- `Ctrl + U`: Super Method
- `Ctrl + H`: Type Hierarchy (shown in side toolwindow)
- `Ctrl + Alt + H`: Call Hierarchy
- `Ctrl + Shift + H`: Method Hierarchy
- `Ctrl + ]`: Jump to Declaration

## Code

- `Ctrl + O`: Override Methods
- `Ctrl + I`: Implements Methods
- `Ctrl + Space`: Code Completion
- `Alt + Insert (Code | Generate)`: Generate `getter` And `setter` Methods
- `Ctrl + Alt + I`: Auto-Indent Lines
- `Ctrl + /`: Comment with Line Comment `//`
- `Ctrl + Shift + /`: Comment with Block Comment `/**  */`
- `Ctrl + NumPad + (Code | Folding)`: Expand
- `Ctrl + NumPad - (Code | Folding)`: Collapse

## Analyze

## Refactor

- [Ctrl + Alt + Shift + T](https://plus.google.com/+PhilippeBreault/posts/NDiu73V43ip): "Refactor This" Dialog
- `F5 (Refactor | Copy...)`: Select a file first; Make a copy of this file.
- [`F6 (Refactor | Move...)`](http://stackoverflow.com/a/31569235/1833118): Select the Class name first; Move inner class to upper level
- `F6 (Refactor | Move...)`: Select a file first; Move the file to another package/directory.
- `Shift + F6`: Rename

## Build

- `Ctrl + F9`: Make Project
- `Ctrl + Shift + Alt + F9`: ReBuild Project (user-defined)

## Run

- `Alt + Shift + F10`: Run... (pop `Run` dialog)
- `Alt + Shift + F9`: Debug... (pop `Debug` dialog)
- `Shift + F10`: Run the current chosen app
- `Shift + F9`: Debug the current chosen app
- `Ctrl + F5`: Rerun
- `Ctrl + F2`: Stop
- `Ctrl + F8`: Toggle Line Breakpoint
- `F7`: Step Into
- `F8`: Step Over (debug the next line)
- `F9`: Resume Program
- `Ctrl + F8`: Toggle Line Breakpoint
- `Ctrl + Shift + F8`: View All Breakpoint (Conditions)

## Tools

## VCS

## Window

- `Alt + Right (Window | Editor Tabs)`: Select Next Tab
- `Alt + Left  (Window | Editor Tabs)`: Select Previous Tab
- `Ctrl + F4   (Window | Editor Tabs)`: Close
- `Ctrl + Alt + <NUM>`: Go To Tabs; see the [plugin:GoToTabs](https://plugins.jetbrains.com/plugin/7784)

### Active Tool Window
- `Shift + Escape`: Hide active tool window
- `Alt + <NUM>`: Activate some Tool Window
- `Alt + M`: Show/Hide side `Maven Projects`
- `Alt + P`: Show/Hide side `PlantUML`
- `Alt + F`: Show/Hide `Find` tool window
- `Alt + H`: Show/Hide `Hierarchy` tool window (You maybe need to first configure this mapping.)

## Help

- `Ctrl + Shift + A (Help)`: Find Action; Type "action or option name" to search.

## Others

## Unit Tests
- `Alt + Enter | Create Test`: on a Class name to pop a dialog for creating unit tests

### Search and Replace

- `Ctrl + Shift + F`: Find in Path...

## Code Template `File | Settings | Editor | Live Templates`

- `sout` = `System.out.println($END$);`
- `psfs` = `public static final String $END$`
- `psflog` = `private static final Logger LOGGER = getLogger($CLASS_NAME$.class);`
  - `$CLASS_NAME$`: the result of pre-defined function `className()`

### Template Group: Java Exception (user-defined)
- `thiae` = `throw new IllegalArgumentException($END$);`
- `thusoe` = `throw new UnsupportedOperationException($END$)`

### Template Group: System (user-defined)
- `serr` = `System.err.println($END$);`
- `sexit` = `System.exit(1); $END$`
- `soptime` = 
      ```
      long start_time = System.currentTimeMillis();
      $END$
      long finish_time = System.currentTimeMillis();
      System.out.println("Time: " + DurationFormatUtils.formatDurationHMS(finish_time - start_time));
      ```

### Template Group: plain
- `main` = `public static void main(String[] args) {$END$}`

## Related Resources

- [Android Studio Tips & Tricks: Moving Around](http://www.developerphil.com/android-studio-tips-tricks-moving-around/)