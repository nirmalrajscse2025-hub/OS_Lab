# Experiment 3: System Calls - Fork, Exit, Getpid, Wait, Close

Compile and run:
```
gcc 1_fork_getpid_wait_exit.c -o prog1 && ./prog1
gcc 2_wait_syscall.c -o prog2 && ./prog2
gcc 3_close_syscall.c -o prog3 && ./prog3
```
Program 3 (`3_close_syscall.c`) expects a file named `sample.txt` in the
same directory (already included) so that `open()` succeeds and the
output matches the manual exactly.

Shell equivalents:
```
chmod +x *.sh
./1_fork_getpid_wait_exit.sh
./2_wait_syscall.sh
./3_close_syscall.sh
```
