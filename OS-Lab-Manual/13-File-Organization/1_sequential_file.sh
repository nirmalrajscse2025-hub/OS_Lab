#!/bin/bash
# Experiment 13 - Program A: Sequential File Organization (Shell)
echo "Enter Register Number:"
read regno

echo "Enter Name:"
read name

echo "$regno $name" > student.txt

echo "Contents of File"

cat student.txt
