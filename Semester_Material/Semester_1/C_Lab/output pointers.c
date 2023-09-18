#include <stdio.h>
int main()   {
int one, two, three;
one =5;
two = 10;
three = 15;
find(one,&two,&three);
printf("%d %d %d\n",one ,two,three);
find(two,&one,&three);
printf("%d %d %d\n",one ,two,three);
find(three,&two,&one);
printf("%d %d %d\n",one ,two,three);
find(two,&three,&one);
printf("%d %d %d\n",one ,two,three);
return 0;
}
void find(int a,int *b,int *c)   {
int temp;
*c= a+*b;
temp =a;
a = *b;
*b = 2*temp;
}

