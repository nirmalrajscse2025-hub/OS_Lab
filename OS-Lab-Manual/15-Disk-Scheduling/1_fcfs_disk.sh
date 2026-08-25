#!/bin/bash
# Experiment 15 - Program A: FCFS Disk Scheduling (Shell)
queue=(98 183 37 122 14 124 65 67)
head=53
seek=0

for req in "${queue[@]}"
do
   diff=$((req-head))
   if [ $diff -lt 0 ]
   then
      diff=$(( -diff ))
   fi

  seek=$((seek+diff))
  head=$req
done

echo "Total Head Movement = $seek"
