#include<stdio.h>
int main()
{
    int j,a[10];
        printf("Enter all the elements of arrays:");

    for (j =0;j<10;j++)  {
        scanf("%d",&a[j]);
      }
      for (j =0;j<10;j++)  {
        a[j] *= 4;
        printf("%d\t",a[j]);
      }
}
