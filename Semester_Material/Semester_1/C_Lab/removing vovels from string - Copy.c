#include <stdio.h>
int main()   {

char str[100];
int i,length=0,j;
puts("Enter string:");
gets(str);
length= strlen(str);
for (i=0;i<length;i++)  {
if (str[i]=='a'||str[i]=='e'||str[i]=='i'||str[i]=='o'||str[i]=='u'||str[i]=='A'||str[i]=='E'||str[i]=='O'||str[i]=='U') {
for (j=i;j<length;j++)  {
str[j]=str[j+1];          }
i--;
length--;    }
str[length+1]='\0';
}
   printf("String after removing vovels is:%s",str);
   return 0;


}
