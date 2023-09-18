#include <stdio.h>
#define Size 10
int main()  {
int arr[Size] = {2,6,-4,8,10,-12,14,16,18,20};
int *ptr=arr;
int *array=arr;
int i;

       printf("The arrays elements are given as:\n");
for(i=0;i<Size;i++)  {
       printf("%4d\n",arr[i]);     }
for(i=0;i<Size;i++)   {
       printf("ptr[%d]=%d\n",i,ptr[i]);    }
for(i=0;i<Size;i++)   {
       printf("*(array+%d)=%d\n",i,*(array+i));    }

for(i=0;i<Size;i++)   {
       printf("*(ptr+%d)=%d\n",i,*(ptr+i));    }
for(i=0;i<Size;i++)   {
       printf("*ptr %d=%d\n",i,*ptr);    }
       return 0;
    }
