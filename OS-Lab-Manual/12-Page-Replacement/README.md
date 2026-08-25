# Experiment 12: Page Replacement Algorithms (FIFO, LRU, Optimal)

Sample input used by the manual: Reference String = 7 0 1 2 0 3 0 4 2 3 0 3 2,
Number of Frames = 3.

```
gcc 1_fifo.c    -o fifo    && ./fifo      # -> Total Page Faults = 10  (matches manual)
gcc 2_lru.c     -o lru     && ./lru       # -> Total Page Faults = 9   (matches manual)
gcc 3_optimal.c -o optimal && ./optimal   # -> Total Page Faults = 7   (matches manual, after bug fix below)
```

## Bug fix note (Optimal Page Replacement)
The manual's printed C program for Optimal Page Replacement computes the
correct frame to evict (farthest future use) into a variable `pos`, but
then has a bug: it always overwrites `frames[0]` instead of `frames[pos]`.
Running the manual's code exactly as printed gives `Total Page Faults = 13`,
not the manual's own stated `7`. `3_optimal.c` in this folder fixes that
one line (uses `frames[pos]`, and also correctly prioritizes an empty frame
before evicting) so it actually implements Optimal Page Replacement and
reproduces the manual's stated answer of 7 faults.

Shell scripts (`.sh`) only echo the reference string/labels, matching the
manual — the manual's own shell scripts for this experiment don't
implement the replacement logic in Bash either.
