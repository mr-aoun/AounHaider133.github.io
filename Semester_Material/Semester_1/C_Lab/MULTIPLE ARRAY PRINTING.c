#include <stdio.h>
void printarray(const int a[][3]);
int main(void)    {
    int array1[2][3]={{2,3,8},{5,7,9}};
    int array2[2][3]= {{5,9,0},{1,7,5}};
    int array3[2][3]={{5,7},{3,5,8}};
    printf("value in array1 are:\n");
    printarray(array1);
    printf("value in array2 are:\n");
    printarray(array2);
    printf("Value in array3 are:\n");
    printarray(array3);
}
void printarray(const int a[][3])   {
    int i,j;
for (i=0;i<=1;i++)    {
for (j=0;j<=2;j++)   {
        printf("%d",a[i][j]);        }
        printf("\n");                }
}
