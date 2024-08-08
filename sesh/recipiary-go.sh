#!/bin/bash

session="backend"
tmux rename-session $session
# tmux send-keys "cd ~/dev/recipiary/go" Enter
tmux send-keys "nvim ." Enter
tmux new-window
tmux split-window -v
tmux select-pane -t 0
tmux send-keys "go run main.go" Enter
tmux select-pane -t 1
# tmux select-window -t 0
