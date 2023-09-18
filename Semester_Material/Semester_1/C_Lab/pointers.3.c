#include <stdio.h>
void PrintCharacters(const char *sptr)   {
for ( ;*sptr!='\0';sptr++)   {
printf("%c",*sptr);            }
}
int main(void)   {
char s[]="My name is aoun haider";

  printf("the string is :\n");
  PrintCharacters(s);
  printf("\n");
  return 0;
}
