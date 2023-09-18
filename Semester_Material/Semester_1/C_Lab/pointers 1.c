#include <stdio.h>
int main()   {
int i = 10;
 char c= 'A';
 double f = 25.5;
 int *iptr = &i;
 char *cptr = &c;
      printf("Value of i=%d\n\nAdress of i =%p\n\nValue of iptr=%d\n\nAdress of iptr=%p\n\n"
      "Derefernced value of *iptr=%d\n\nSize of iptr=%d\n\nSize of i=%d\n",i,&i,*iptr,&*iptr,*iptr,sizeof(iptr),sizeof(i));
      printf("Value of c=%d\n\nAdress of c=%p\n\nValue of cptr=%d\n\nAdress of cptr=%p\n\n"
      "Derefernced value of *cptr=%d\n\nSize of cptr=%d\n\nSize of c=%d\n",c,&c,*cptr,&*cptr,*cptr,sizeof(cptr),sizeof(c));

return 0;
}
