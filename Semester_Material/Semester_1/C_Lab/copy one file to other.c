#include <stdio.h>
int main()  {
FILE *p,*q;
char file1[20],file2[20],c;


    printf("Enter the characters to be copied!!!\n");
    gets(file1);
    p= fopen("a.c","r");
if (p==0)  {
    printf("File could not be opened!!!\n");    }
    printf("Enter the file name in which we want to copy:\n");
    gets(file2);
     q= fopen("fre2.c","w");
if (q==0)  {
    printf("File could not be opened!!!\n");    }
while ((c=fgetc(p))!=EOF)  {
    if (isupper(c))

    c=tolower(c);
    fputc(c,q);

}
printf("COMPLETED!!\n");
fclose(p);
fclose(q);
return 0;
}
