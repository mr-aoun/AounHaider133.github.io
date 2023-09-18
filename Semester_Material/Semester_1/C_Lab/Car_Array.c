#include <stdio.h>
int main()
{
    int car[3] ={1,2,3};
    float h1,h2,h3,charges,hr,charge1=0,charge2=0,charge3=0,t_charges,total;
    printf("Enter hour 1=");
    scanf("%f",&h1);
    printf("Enter hour 2=");
    scanf("%f",&h2);
    printf("Enter hour 3=");
    scanf("%f",&h3);

    if (h1<=3)
     {
        charge1 +=2;
     }
    if (h1>3&&h1<=24)   {charge1 =2+ceil(h1-3)*.5;  }
    if (h2<=3)  {charge2 +=2; }
    if (h2>3&&h2<=24)   {charge2 =2+ceil(h2-3)*.5;  }
    if (h3<=3)  {charge3 +=2; }
    if (h3>3&&h3<=24)   {charge3 =2+ceil(h3-3)*.5;  }
    printf("%s\t\t%s\t\t%s\n","Car","Hours","Charges");
    printf("\n%d\t\t%.2f\t\t%.2f",car[0],h1,charge1);
    printf("\n%d\t\t%.2f\t\t%.2f",car[1],h2,charge2);
    printf("\n%d\t\t%.2f\t\t%.2f",car[2],h3,charge3);
    hr = h1+h2+h3;
    t_charges = charge1 +charge2+charge3;

    printf("\n%s\t\t%.1f\t\t%.2f","Total",hr,t_charges);
    return 0;
}
