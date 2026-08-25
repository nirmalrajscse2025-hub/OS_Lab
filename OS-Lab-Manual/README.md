# Operating Systems Lab Manual — Programs

Each folder corresponds to one experiment from the OS Lab Manual. Every
`.c` file compiles cleanly with `gcc` and every `.sh` script runs cleanly
with `bash`. All programs were compiled, executed with the manual's own
sample inputs, and their outputs were checked against the manual.

## How to run
```
gcc <file>.c -o <name> && ./<name>
chmod +x <file>.sh && ./<file>.sh
```
Programs using threads or semaphores need `-pthread`:
```
gcc 09-Threading/thread.c -o thread -pthread
```

## Folder index
| Folder | Experiment |
|---|---|
| 01-Windows-Installation | Installation of Windows OS (verification commands) |
| 02-Unix-Commands-Shell-Programming | UNIX commands + 8 shell programs |
| 03-System-Calls | fork, getpid, wait, exit, close |
| 04-CPU-Scheduling | FCFS, SJF, Priority, Round Robin |
| 05-IPC-Pipe | Inter-Process Communication using pipes |
| 06-Semaphore | Mutual exclusion using semaphores |
| 07-Bankers-Algorithm | Deadlock avoidance |
| 08-Deadlock-Detection | Deadlock detection |
| 09-Threading | POSIX threads (pthreads) |
| 10-Paging | Logical → physical address translation |
| 11-Memory-Allocation | First Fit, Best Fit, Worst Fit |
| 12-Page-Replacement | FIFO, LRU, Optimal |
| 13-File-Organization | Sequential, Direct, Indexed |
| 14-File-Allocation | Sequential, Indexed, Linked |
| 15-Disk-Scheduling | FCFS, SSTF, SCAN, C-SCAN |

## Known issues found in the source manual (and how they were handled)
While verifying every program by actually compiling and running it against
the manual's own sample inputs, two places were found where the manual's
**printed C code does not reproduce the manual's own printed sample
output**. These are documented (with a `README.md`) inside the relevant
folders rather than silently "corrected" without explanation:

- **08-Deadlock-Detection**: the algorithm is transcribed exactly as
  printed in the manual and compiles/runs correctly, but running it on the
  manual's own sample input yields "No Deadlock Detected", not "P1 P4" as
  the manual states. This looks like an error in the manual's sample
  output itself, not a bug in the code.
- **11-Memory-Allocation** (Worst Fit): same situation — the manual's own
  Worst Fit algorithm run on its own sample input gives a different
  allocation table than the manual's printed sample output.
- **12-Page-Replacement** (Optimal): here there genuinely was a bug in the
  manual's C code (it computes the correct frame to evict but then always
  evicts frame 0 instead). This one was fixed in `3_optimal.c` so it
  actually produces the manual's stated "Total Page Faults = 7" — the fix
  is called out clearly in a comment and in that folder's README.

Everything else matched the manual's stated sample output exactly on the
first run.
