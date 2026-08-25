#!/bin/bash
# Experiment 5: IPC (Shell equivalent using UNIX pipes)
# Shell scripting does not directly support the pipe() system call,
# but IPC can be demonstrated using UNIX pipes.
echo "Hello from Child Process" | cat
