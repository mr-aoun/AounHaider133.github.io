#include <stdio.h>
int main()   {

int a=50,b=20;
printf("Values before swapping");
printf("a=%d\nb=%d",a,b);

a= a+b;
b=a-b;
a=a-b;
printf("\nValues after swaping:");
printf("\na=%d \n b=%d",a,b);
return 0;
}
