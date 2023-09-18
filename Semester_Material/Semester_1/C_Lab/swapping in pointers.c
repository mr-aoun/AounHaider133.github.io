#include <stdio.h>
#include <stdlib.h>
void swap (int a, int b);
int main()
{
int c = 10, d = 25,*cptr=c,*dptr=d;
printf("\nBefore calling the function swap, c=%d and d=%d", c, d);
swap(*cptr,*dptr);
printf("\nAfter calling the function swap, c=%d and d=%d\n", *(cptr+0), *(dptr+0));
return 0;
}
void swap(int a, int b)
{
int temp;
temp = a;
a = b;
b = temp;
}
