
#!/bin/bash

# set tmux panes
if [ "$#" -eq 0 ]; then
    tmux split-window -h
    tmux split-window -v
    tmux resize-pane -D 15
    tmux select-pane -t 1
    tmux split-window -v
    tmux select-pane -t 1
    tmux select-pane -L
    tmux split-window -v
    tmux resize-pane -D 5
    tmux select-pane -U
else
  case $1 in
    1)
      tmux split-window -v
      tmux resize-pane -D 15
      tmux select-pane -D
      clear
      ;;
    2)
      tmux split-window -h
      tmux split-window -v
      tmux resize-pane -D 15
      tmux select-pane -t 1
      tmux split-window -v
      tmux select-pane -t 1
      clear
      ;;
    *)
      echo [ERROR] "$1" は設定されていない引数です。
      ;;
  esac
fi