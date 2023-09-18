/*ADDITION OF TWO ARRAYS USING 2D ARRAY*/
#include <stdio.h>
int main()   {
int row1,row2,col1,col2;
   printf("\nEnter number of rows in 1st matrix:");
   scanf("%d",&row1);
   printf("\nEnter number of colomns in 1st matrix:");
   scanf("%d",&col1);
   printf("\nEnter number of rows in 1st matrix:");
   scanf("%d",&row2);
   printf("\nEnter number of colomns in 2nd matrix:");
   scanf("%d",&col2);
if (row1==row2 && col1==col2)  {
int m1[row1][col1],m2[row2][col2],r[row2][col2],i,j;
   printf("\nEnter first matrix:\n");

for (i=0;i<row1;i++)   {
for (j=0;j<col1;j++)   {
     scanf("\t%d",&m1[i][j]);
} }
    printf("Enter 2nd matrix:");

for (i=0;i<row2;i++)   {
for (j=0;j<col2;j++)   {
     scanf("\t%d\n",&m2[i][j]);
}
}
for (i=0;i<row2;i++)   {
for (j=0;j<col2;j++)   {
    r[i][j]=m1[i][j]*m2[i][j];

}
}
    printf("\nThe resultant matrix is:\n");
for (i=0;i<row2;i++)   {
for (j=0;j<col2;j++)   {
    printf("\t%d",r[i][j]);

}
   printf("\n");
}



}

else     {
      printf("Addition is not possible!!!");      }
return 0;
}



