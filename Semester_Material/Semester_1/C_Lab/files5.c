#include <stdio.h>
int main() {
int request,account;
float balance;
char name[30];
FILE *fp;
      fp = fopen("a.c","r");
if (fp=fopen("a.c","r")==NULL)  {
      printf("File could not be opened!!!\n");    }
else   {
      printf("Enter request:"
            "1-list account with zero balances\n"
            "2-list account with credit balances\n"
            "3-list account with debt balances\n");
      scanf("%d",&request);
while (request!=4)  {
fsacnf(fp,"%d%s%f",&account,name,&balance);
switch(request)   {
case 1:
    printf("Account with zero balances:\n");
while (!feof(fp))   {
if (balance==0)
   printf("%10d%13s%7.2f\n",account,name,balance);
   fsacnf(fp,"%d%s%f",&account,name,&balance);       }
   break;
case 2:
   printf("Account with credit balances:\n");
while (!feof(fp))   {
if (balance>0)
   printf("%10d%13s%7.2f\n",account,name,balance);
   fsacnf(fp,"%d%s%f",&account,name,&balance);
}
   break;
case 3:
   printf("Account with debt balances:\n");
while (!feof(fp))   {
if (balance>0)
   printf("%10d%13s%7.2f\n",account,name,balance);
   fsacnf(fp,"%d%s%f",&account,name,&balance);
}

break;
}
rewind(fp);
   printf("\n?:");
   scanf("%d",&request);
}
   printf("End!!!\n");
   fclose(fp);
}

return 0;
}




