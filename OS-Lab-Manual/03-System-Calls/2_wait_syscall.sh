#!/bin/bash
# Experiment 3 - Program 2 (Shell equivalent): wait
(
echo "Child Process Running"
sleep 5
echo "Child Process Completed"
)&

wait

echo "Parent Resumes Execution"
