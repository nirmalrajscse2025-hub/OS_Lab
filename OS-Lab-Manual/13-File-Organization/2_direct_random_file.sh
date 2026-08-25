#!/bin/bash
# Experiment 13 - Program B: Direct (Random) File Organization (Shell)
echo "Enter Record:"
read rec

echo "$rec" > random.txt

echo "Random Access Record"

sed -n '1p' random.txt
