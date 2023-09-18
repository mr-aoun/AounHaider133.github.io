#include <stdio.h>
#define Size 5
int main()    {
int e[Size];
int nohw,hourly_rate,i,basic_salary=1,j;
for (i=0;i<5;i++) {

   printf("Enter number of hours worked:\n");
   scanf("%d",&nohw);
   printf("Enter hourly rate:\n");
   scanf("%d",&hourly_rate);
   basic_salary= (nohw)*(hourly_rate);
   printf("Basic Salary for employe %d is :\n",i+1);
   printf("%23d%33d\n",i+1,basic_salary);
}


   return 0;



}
