#include <stdio.h>
int main()   {
int a = 7;
int *aptr;
aptr = &a;

   printf("adress of a is:%p\nvalue of ptr is :%p",&a,aptr);
   printf("\nvalue of a is: %d\nvalue of aptr is:%d\n",a,*aptr);
   printf("\nadress of pointer is :%p\nadress of pointer :%p\n",&*aptr,*&aptr);

   return 0;
   }
