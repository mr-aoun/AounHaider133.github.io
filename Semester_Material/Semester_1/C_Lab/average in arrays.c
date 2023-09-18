#include <stdio.h>
#define Size 11
int main (void)   {

int mark[Size],aggregate=0;
float average;
for (int i =1;i<Size;i++)  {
        int num;
    printf("Enter number=");
    scanf("%d",&mark[i]);

    aggregate += mark[i];
    average = (aggregate)/10;   }
    printf("\nAggregate = %d",aggregate);
    printf("\nAverage = %.2f",average);
return 0;  }
