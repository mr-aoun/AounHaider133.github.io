#include<stdio.h>
int main()  {
int account;
char name[20];
float balance;
FILE *f;
 f = fopen("fre2.c","w");
 if ((f = fopen("fre2.c","w"))==NULL)  {
 printf("File could'nt open!!\n");   }
 else  {
    printf("Enter account number:\n");
    printf("?:");
    scanf("%d",&account);
    printf("Enter name:");
    scanf("%s",name);
    printf("Enter balance:");
    scanf("%f",&balance);     }
while (!feof(stdin))  {
    fprintf(f,"Account no:%d\nName:%s\nbalance:%f",account,name,balance);
    scanf("%d%s%f",&account,name,&balance);


}

fclose(f);
return 0;
}
