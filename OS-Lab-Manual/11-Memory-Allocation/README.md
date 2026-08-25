# Experiment 11: Memory Allocation Methods (First Fit, Best Fit, Worst Fit)

Compile and run (sample input: 5 blocks = 100 500 200 300 600,
4 processes = 212 417 112 426):
```
gcc 1_first_fit.c -o first_fit   && ./first_fit
gcc 2_best_fit.c  -o best_fit    && ./best_fit
gcc 3_worst_fit.c -o worst_fit   && ./worst_fit
```

Shell versions (`.sh` files) only echo the demonstration data/labels as
written in the manual — the manual's own shell scripts for this
experiment do not actually implement the allocation logic in Bash.

## Verified against manual
- **First Fit**: matches manual sample output exactly.
- **Best Fit**: matches manual sample output exactly.
- **Worst Fit**: running the manual's own C algorithm on the manual's own
  sample input produces `P1->Block5, P2->Block2, P3->Block5, P4->Not Allocated`,
  not `P1->5, P2->Not Allocated, P3->2, P4->Not Allocated` as printed in the
  manual. This is a discrepancy in the source manual (its sample output
  does not match its own algorithm/input), not an error in this file —
  the code is a faithful, compiling transcription of the manual's program.
