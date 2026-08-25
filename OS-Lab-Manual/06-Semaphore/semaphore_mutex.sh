#!/bin/bash
# Experiment 6: Semaphore (Shell equivalent using a lock file)
# Shell scripting does not provide a direct semaphore mechanism.
# Mutual exclusion can be simulated using a lock file.
LOCKFILE="/tmp/mylock"

while [ -f "$LOCKFILE" ]
do
   sleep 1
done

touch "$LOCKFILE"

echo "Entering Critical Section"
sleep 5
echo "Leaving Critical Section"

rm -f "$LOCKFILE"
