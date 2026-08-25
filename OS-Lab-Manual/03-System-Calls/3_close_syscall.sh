#!/bin/bash
# Experiment 3 - Program 3 (Shell equivalent): close
# Shell scripting does not provide a direct close() system call.
# File descriptors can be opened and closed as follows:
exec 3< sample.txt

echo "File Opened Successfully"

exec 3<&-

echo "File Closed Successfully"
