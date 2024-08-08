#!/bin/bash

session="frontend"
tmux rename-session $session
# tmux send-keys "cd ~/dev/recipiary/nuxt" Enter
tmux send-keys "nvim ." Enter
tmux new-window
tmux split-window -v
tmux select-pane -t 0
tmux send-keys "npx nuxi dev" Enter
tmux select-window -t 0
