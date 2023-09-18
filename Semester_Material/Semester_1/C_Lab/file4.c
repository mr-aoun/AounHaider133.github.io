#include<stdio.h>
#include<conio.h>

int main()
{
char ch;
FILE *fp;

fp = fopen("untitled6.c","w");
if(fp == 0)
{
       printf("File creation Error!!!");
       return 1;
}
while((ch = getche()) !=13)
          fputc(ch,fp);
fclose(fp);
return 0;
}

