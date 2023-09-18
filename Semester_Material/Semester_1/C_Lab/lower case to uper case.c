#include <stdio.h>
void ConvertToUpercase(char *sptr)   {
while (*sptr !='\0')   {
if (tolower(*sptr))   {
*sptr = toupper(*sptr);      }
++sptr;        }
}
int main(void)   {
char a[100];
       puts("Enter string:\n");
       gets(&a);
       ConvertToUpercase(a);

       printf("\n%s",a);
return 0;
}
