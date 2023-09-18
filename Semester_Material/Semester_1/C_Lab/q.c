#include<stdio.h>
#include<conio.h>
int main()
{
char c;
FILE *fp;

fp = fopen("a.c","w");
if(fp == 0)
{
    printf("File openning Error!!!");
    return 1;
}
while((c=getche())!=13)
{
     fputc(c,fp);
}
fclose(fp);
return 0;
}
