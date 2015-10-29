#!/bin/bash
session_name=butts
cd ~
tmux new-session -s "$session_name"
WINDOW_NAMES=(first second third fourth)

for i in {1..4}; do
	tmux new-window -t "$sn:$i" -n "${WINDOW_NAMES[${i}]}"
done

tmux select-window -t "$session_name:1"
tmux -2 attach-session -t "$session_name"
