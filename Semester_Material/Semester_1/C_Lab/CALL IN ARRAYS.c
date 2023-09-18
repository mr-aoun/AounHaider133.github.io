#include<stdio.h>
void getmarks(int *marks,int size)
{
    int i;
    for (i=0 ; i<5 ; i++){
        printf("Enter marks of subject %d  ",i+1);
        scanf("%d",&*marks+i);
    }
   printf("\n******************************************************************************\n");
}
int totalmarks(int *marks,int size)
{
    int i,total=0;
    for (i=0 ; i<5 ; i++){
        total += *(marks+i);
    }
    return total;
}
void showmarks(int *marks,int size)
{
    int i,j;
    printf("\t%35s\t%20s\t","Subject no.","Obtained marks");
    for(i=0 ; i<5 ; i++){

    printf("\n%37d%25d",i+1,*(marks+i));

}
    printf("\n****************************************************************************\n");
}
int main()
{
    int arr[5],i,total,choice;
    float avg;
    printf("Enter -1 to end(any other to continue):  ");
    scanf("%d",&choice);
    while (choice!=-1){
    getmarks(arr,5);
    showmarks(arr,5);
    printf("\nTotal marks : %d",totalmarks(arr,5));
    avg = (totalmarks(arr,5)/5);
    printf("\nAverage marks: %.2f\n\n",avg);
    printf("\n********************************************************************************\n");
    printf("Enter -1 to end(any other to continue):  ");
    scanf("%d",&choice);
    }
}




