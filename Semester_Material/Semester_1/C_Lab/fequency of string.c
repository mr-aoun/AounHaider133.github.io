#include<stdio.h>
int main()  {
char str[100];
int counter=0,count[26]={0},x;
    puts("Enter string:");
    gets(str);
while (str[counter]!='\0')  {
if (str[counter]>='a'&&str[counter]<='z')   {
  x=str[counter]-'a';
  count[x]++;                   }
  counter++;
  }
  for(counter=0;counter<26;counter++)  {
    printf("%c occurs %d times in string\n ",counter+'a',count[counter]);

}
return 0;
}
