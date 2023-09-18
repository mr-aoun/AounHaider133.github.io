#include <stdio.h>
float celcius(float c)   {

 return (c*1.8)+32;   }
float farenheit(float f)   {
return (f-32)*5/9;     }
int main()   {
float x,y;
y = farenheit(y);
   printf("%3s%11s","Temperature","Celcius");
for(int i=0;i<=100;i++)   {
  x = celcius(i);
   printf("\n%3d%18.2f\n",i,x);  }
   printf("%3s%11s","Temperature","Farenhiet");
for (int i=32;i<=212;i++)  {
  y= farenheit(i);
  printf("\n%3d%18.2f\n",i,y);    }

return 0;
}
