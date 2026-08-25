# Experiment 8: Deadlock Detection Algorithm

Compile and run:
```
gcc deadlock_detection.c -o deadlock_detection
./deadlock_detection
```

## Note on the manual's sample output
The manual's own **Sample Input** (Allocation, Request, Available matrices)
was checked by actually compiling and running the algorithm exactly as
written in the manual. Tracing/running it shows **no deadlock** for that
specific input (every process can finish), not "P1 P4" as printed in the
manual. This is an inconsistency in the source manual itself (the sample
output there does not match its own sample input under its own algorithm),
not an error introduced here — the code is a faithful, compiling
transcription of the manual's C program and correctly implements the
Deadlock Detection Algorithm described in the manual's steps.

To reproduce a genuine deadlock (so you can see "Deadlocked Processes: P1 P4"-style
output), use a Request matrix where the outstanding requests truly exceed what
`Available` (plus resources released by finishing processes) can ever satisfy.
