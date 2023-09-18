#include <stdio.h>
int cube (int *nptr)   {
*nptr= *nptr**nptr**nptr;        }
int main ()   {
int s=5;
int *sptr;

    printf("The orignal value is :%d\n",s);
    cube (&s);
    printf("The cube of given value is:%d",s);

    return 0;
    }
