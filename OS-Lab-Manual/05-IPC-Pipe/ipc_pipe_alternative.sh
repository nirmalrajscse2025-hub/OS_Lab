#!/bin/bash
# Experiment 5: IPC - Alternative Shell Script
(
echo "Message from Child Process"
) | while read msg
do
    echo "Parent Received: $msg"
done
