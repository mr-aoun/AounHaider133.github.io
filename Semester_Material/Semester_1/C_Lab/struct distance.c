#include <stdio.h>

struct distance   {
    int feet,inches;     };
int main(){

struct distance d1,d2,d3;
   printf("Enter distance1 :\n");
   printf("Feet:");
   scanf("%d",&d1.feet);
   printf("Inches:");
   scanf("%d",&d1.inches);
   printf("Enter distance2 :\n");
   printf("Feet:");
   scanf("%d",&d2.feet);
   printf("Inches:");
   scanf("%d",&d2.inches);
d3.feet = d1.feet+d2.feet+(d1.inches+d2.inches)/12;
d3.inches = (d1.inches+d2.inches)%12;
printf("Feet = %d\n",d3.feet);
printf("Inches = %d",d3.inches);


}

