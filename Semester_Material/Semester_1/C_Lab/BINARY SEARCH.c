#include <stdio.h>
#define Size 15
int binarysearch(const int b[],int searchkey,int low,int high)   {
    int midle;
while (low<=high)   {
        midle = (low +high)/2;
printrow(b,low,midle, high);
if (searchkey==b[midle])   {
        return midle;        }
else if (searchkey<b[midle])  {
        high = midle-1;          }
else {
        low =midle+1;             }
}     return -1;
}
void printheader(void)   {
    int i;
    printf("scripts:\n");
for (i=0;i<Size;i++)   {
        printf("%3d",i);
}
printf("\n\n");
for (i=1;i<=5*Size;i++)   {
    printf("*");             }
printf("\n");
}
void printrow(const int  b[],int low,int midle,int high)    {
    int i;
for (i=0;i<Size;i++)     {
if (i<low||i>high)   {
        printf("  ");    }
else if(i==midle)    {
        printf("%3d",b[i]);    }
else  {
        printf("%3d",b[i]);     }
}
printf("\n");    }
int main(void)   {
    int a[Size],i,result;
    int key;
    for (i =0;i<Size;i++)   {
    a[i] =2*i;               }
    printf("Enter number between 0 and 28 :");
    scanf("%d",&key);
    printheader();
    result = binarysearch(a,key,0,Size-1);
if (result!=-1)   {
        printf("\n%d found in array %d\n",key,result);    }
else               {
        printf("%d not found in array!!!",key);   }
                                                  }



