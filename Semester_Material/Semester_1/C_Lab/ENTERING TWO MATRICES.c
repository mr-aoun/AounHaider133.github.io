#include <stdio.h>
#include <conio.h>
void main()   {
int arr[3][3],i,j;
     printf("Enter the elements of each matrix:");

for (i=0;i<3;i++)  {
   for (j=0;j<3;j++)   {
   scanf("%d",&arr[i][j]);
}
}
   printf("Elements of 1st matrix are:\n");
for (i=0;i<3;i++)   {
for (j=0;j<3;j++)  {
    printf("%d",arr[i][j]);       }
    printf("\n");     }
}
