#include <stdio.h>
#define Size 7
void swap(int *aptr,int *bptr)   {
int hold;
hold = *aptr;
*aptr = *bptr;
*bptr=hold;       }
void bublesort(int *const a, const int size )  {
int s,j;
for (s=0;s<Size-1;s++)  {
for (j=0;j<Size-1;j++)   {
if (a[j]>a[j+1])   {
swap(&a[j],&a[j+1]);     }
}
}
}
int main()   {
 int b[Size] = {78,56,34,22,21,89,54};
 int i;
 printf("Data in orignal order:\n");
 for (i=0;i<Size;i++)   {
    printf("%4d",b[i]);
}
bublesort(b,Size);
    printf("\nData in ascending order:\n");
for (i=0;i<Size;i++)   {
    printf("%4d",b[i]);     }
    printf("\n");    }
