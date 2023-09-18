#include<stdio.h> 
int main()
{
    FILE *p,*q;
    char file1[20],file2[20];
    char ch;
    printf("\nEnter the source file name to be copied:");
    gets(file1);
    p=fopen("a.c","r");
    if(p==NULL){
                printf("Cannot open %s",file1);
                exit(0);
                }
    printf("\nEnter the destination file name:");
    gets(file2);
    q=fopen("fre2.c","w");
 if(q==NULL){
                printf("Cannot open %s",file2);
                exit(0);
                }
    while((ch=fgetc(p))!=EOF)
    {
        if(isupper(ch))
             ch=tolower (ch);
        fputc(ch,q);
        }
    printf("\nCOMPLETED");
    fclose(p);
    fclose(q);
    return 0;
    }
