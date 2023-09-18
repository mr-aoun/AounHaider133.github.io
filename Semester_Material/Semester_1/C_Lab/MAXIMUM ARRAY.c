#include<stdio.h>
#define s 10
void findmax(int arr[]){
    int max;
    int i;
    for (i = 0 ; i<10 ; i++){
        printf("Enter integer [%d] ",i+1);
        scanf("%d",&arr[i]);
    } max=arr[0];
    for (i=1;i<10;i++){
        if(arr[i]>max){

            max=arr[i];
        }

    }
printf("max is %d ",max);
    }

int main()
{
    int a[s];
    findmax(a);
}
