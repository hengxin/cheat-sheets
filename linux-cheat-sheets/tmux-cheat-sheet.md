# Tmux Cheat Sheet

## Install

## Methodology

## Tutorials
- [A tmux Crash Course, Josh Clayton, January 18, 2011](https://robots.thoughtbot.com/a-tmux-crash-course)

## Session Management

- `tmux new -s <session-name>`: create session
- `tmux attach -t <session_name>`: attach to an existing session
- `tmux switch -t <session_name>`: switch to an existing session
- `tmux list-sessions`: listing sessions
- `tmux detach`: detach the currently attached session

## Windows

## Panes

### Split Pane
- `<prefix> + %`: split horizontally
- `<prefix> + "`: split vertically

### [Select Pane](http://stackoverflow.com/a/21022528/1833118)
- `<prefix> + q + <select the number>`: Select Pane by Number
- `set display-panes-time 5000 #5s` in `.tmux.conf` to set the display time
- `set -g pane-base-index 1` in `.tmux.conf` to start the number from 1 instead of 0

## 
- `tmux list-keys`: lists out every bound key and the tmux command it runs
- `tmux list-commands`: lists out every tmux command and its arguments
- `tmux info`: lists out every session, window, pane, its pid, etc.
- `tmux source-file ~/.tmux.conf`: reloads the current tmux configuration (based on a default tmux config)
