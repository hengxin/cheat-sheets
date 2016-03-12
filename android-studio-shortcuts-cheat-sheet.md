# Android Studio Shortcuts Cheet Sheet

The Table Of Content corresponds to the menus of Android Studo IDE.

## The Most Powerful Ones

- `Double Shift`: Search Everywhere; `Double Shift` *again*: to include non-project items
- `Alt + Enter`: Quick Fix

## File

- `Alt + Insert (File | New)`: Create New Files, including Class, Package, file, Layout, etc.

## Edit

- `Alt + F7 (Edit | Find)`: Find Usages

  > *Note:* In my Ubuntu system, I need to first disable the system default setting of `Alt + F7` for "Move Window" in "Keyboard" panel.

## View

-  `Ctrl + E`: Recent Files
-  `Ctrl + Q`: Quick Documentation
-  `Ctrl + P`: Parameter Info

## Navigate

- `Ctrl + B (Navigate | Declaration)`: navigate to the declaration of a class, method, or variable; OR `Ctrl + Click`
- `Ctrl + N (Navigate | Class)`: typing the class name to locate it
- `Ctrl + F12 (Navigate | File Structure)`: navigate in the currently edited file; list of members of the current class
- `F2`: Next Highlighted Error
- `Shift + F2`: Previous Highlighted Error
- `Alt + Down`: Next Method
- `Alt + Up`: Previous Method

## Code

- `Ctrl + Space`: Code Completion
- `Alt + Insert (Code | Generate)`: Generate `getter` And `setter` Methods
- `Ctrl + Alt + I`: Auto-Indent Lines
- `Ctrl + /`: Comment with Line Comment `//`
- `Ctrl + Shift + /`: Comment with Block Comment `/**  */`

## Analyze

## Refactor

- `Shift + F6`: Rename

## Build

- `Ctrl + F9`: Make Project
- `What is this???`: Build APK

## Run

- `Alt + Shift + F10`: Run... (pop `Run` dialog)
- `Alt + Shift + F9`: Debug... (pop `Debug` dialog)
- `Shift + F10`: Run the current chosen app
- `Shift + F9`: Debug the current chosen app
- `Ctrl + F2`: Stop

## Tools

## VCS

## Window

- `Alt + Right (Window | Editor Tabs)`: Select Next Tab
- `Alt + Left  (Window | Editor Tabs)`: Select Previous Tab
- `Ctrl + F4   (Window | Editor Tabs)`: Close

## Help

## Code Template `File | Settings | Editor | Live Templates`

- `sout` = `System.out.println($END$);`
- `psfs` = `public static final String $END$`

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

