# Tmux Cheat Sheet

## Install

## Methodology

## Tutorials

## Session

### Create Session
`tmux new -s <session-name>`

## Pane

### Split Pane
- `<prefix> + %`: split horizontally
- `<prefix> + "`: split vertically

### [Select Pane](http://stackoverflow.com/a/21022528/1833118)
- `<prefix> + q + <select the number>`: Select Pane by Number
- `set display-panes-time 5000 #5s` in `.tmux.conf` to set the display time
- `set -g pane-base-index 1` in `.tmux.conf` to start the number from 1 instead of 0
