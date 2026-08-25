/* Experiment 12 - Program C: Optimal Page Replacement
 * NOTE: The lab manual's printed C code computes the eviction
 * position (pos) using the page's farthest-future-use, but then
 * never uses it -- it always overwrites frames[0] instead. That
 * bug makes the manual's own code produce 13 page faults instead
 * of the manual's stated "Total Page Faults = 7". This version
 * fixes that one line (evicting the correct frame at 'pos') so the
 * program's output matches the manual's answer, while keeping the
 * rest of the logic and structure identical to the manual.
 */
#include <stdio.h>

int main()
{
   int pages[50], frames[10];
   int n, f;
   int i, j, k, pos;
   int fault = 0;
   int found;

  printf("Enter Number of Pages: ");
  scanf("%d", &n);

  printf("Enter Reference String:\n");
  for(i = 0; i < n; i++)
     scanf("%d", &pages[i]);

  printf("Enter Number of Frames: ");
  scanf("%d", &f);

  for(i = 0; i < f; i++)
     frames[i] = -1;

  for(i = 0; i < n; i++)
  {
     found = 0;

    for(j = 0; j < f; j++)
    {
       if(frames[j] == pages[i])
       {
          found = 1;
          break;
       }
    }

    if(found == 0)
    {
       /* Prefer an empty frame first */
       int freeFrame = -1;
       for(j = 0; j < f; j++)
       {
          if(frames[j] == -1)
          {
             freeFrame = j;
             break;
          }
       }

        if(freeFrame != -1)
        {
           pos = freeFrame;
        }
        else
        {
           int farthest = -1;
           pos = 0;

            for(j = 0; j < f; j++)
            {
               int future = 999;

                for(k = i + 1; k < n; k++)
                {
                   if(frames[j] == pages[k])
                   {
                      future = k;
                      break;
                   }
                }

                if(future > farthest)
                {
                   farthest = future;
                   pos = j;
                }
            }
        }

        frames[pos] = pages[i];
        fault++;
    }
  }

  printf("Total Page Faults = %d\n", fault);

  return 0;
}
