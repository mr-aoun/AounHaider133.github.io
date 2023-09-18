#include <stdio.h>
int main()   {

char str[100];
int i,j;
puts("Enter string:");
gets(str);
for (i=0;str[i]!='\0';i++)  {
while (!((str[i]>='a'&&str[i]<='z')||(str[i]>='A'&&str[i]<='Z')||(str[i]=='\0')))  {
for (j=i;str[j]!='\0';j++)   {
str[j]=str[j+1];                }
str[j]='\0';        }
}
printf("String after removing characters except alphabets:%s\n",str);

return 0;
}
