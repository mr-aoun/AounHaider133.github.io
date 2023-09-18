#include<stdio.h>
#include<conio.h>
int main()
{
char ch;
FILE *fp;

fp = fopen("a.c","w");
if(fp == 0)
{
    printf("File openning Error!!!");
    return 1;
}
while(!feof(fp))
{
     printf("%c",fgetc(fp));
}
fclose(fp);
return 0;
}
