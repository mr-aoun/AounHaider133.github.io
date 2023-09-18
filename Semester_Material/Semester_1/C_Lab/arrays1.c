#include <stdio.h>
#define Size 10
void getArray(int b[]) {
  int i;
 int a[Size] = {2,3,4,6,9};
    printf("The stored numbers in array are:\n");
for (i=0;i<Size;i++)   {
        printf("%d\n",a[i]);   }
}
int FindEven(int b[])      {
    int i,counter=0,j;
for (i=0;i<Size;i++)  {
    printf("Enter number:");
     scanf("%d",&b[i]);               }
for (j=0;j<Size;j++)   {
if (b[j]%2==0)   {
        counter++;   }
}

printf("Even numbers are =%d",counter);    }
int modifyArray(int a[]) {

    int j;
        printf("Enter all the elements of arrays:");

    for (j =0;j<10;j++)  {
        scanf("%d",&a[j]);
      }
      for (j =0;j<10;j++)  {
        a[j] *= 4;
        printf("%d\t",a[j]);
      }
    }
int FindMax(int d[])    {

    int max,i;
    printf("Enter all the elements of arrays:");

for (i =1;i<Size;i++)  {
    scanf("%d",&d[i]);   }
    max = d[0];
for (i=1;i<Size;i++)   {
if (d[i]>max)  {
    max = d[i];   }
}
    printf("Maximum number is :%d",max);  }
int main ()  {
    int c[Size];
    printf("Stored numbers array function is :\n");
    getArray(c);
    printf("\nFunction for finding Even number is :\n");
    FindEven(c);
    printf("\nFunction for multiples of four is :\n");
    modifyArray(c);
    printf("\nFunction for finding maximum number is :\n");
    FindMax(c);

return 0;
}



