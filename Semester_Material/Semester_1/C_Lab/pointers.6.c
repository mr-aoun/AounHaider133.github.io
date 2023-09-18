#include <stdio.h>
int main(void)   {
char c,short s,int i,long l,float f,double d,long double ld,int a[20],int *ptr=a;

   printf("size of c=%d\t sizeof(char)=%d ",sizeof c,sizeof(char));
   printf("size of s=%d\t sizeof(short)=%d ",sizeof s,sizeof(short));
   printf("size of i=%d\t sizeof(int)=%d ",sizeof i,sizeof(int));
   printf("size of l=%d\t sizeof(l)=%d ",sizeof l,sizeof(long));
   printf("size of f=%d\t sizeof(float)=%d ",sizeof f,sizeof(float));
   printf("size of d=%d\t sizeof(double)=%d ",sizeof d,sizeof(double));
   printf("size of ld=%d\t sizeof(long double)=%d ",sizeof ld,sizeof(long double));
   printf("size of a=%d\t",sizeof a,sizeof(a));
   printf("size of *ptr=%d\t",sizeof *ptr);
   return 0;      }
