#include <stdio.h>
#include <string.h>
int main()  {
     char str[50];
    char *p;

puts("Enter string:");
gets(str);
p= strtok(str," ");

while (p!=NULL)   {
      printf("%c.",*p);

    p=strtok(NULL," ");      }

return 0;

}
