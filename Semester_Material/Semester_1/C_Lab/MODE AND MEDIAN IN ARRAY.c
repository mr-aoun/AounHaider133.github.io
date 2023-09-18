#include <stdio.h>
#define Size 99
void mean(const int answer[]);
void median(int answer[]);
void mode(int freq[],const int answer[]);
void bubblesort(int a[]);
void printarray(const int a[]);
int main(void)    {
    int frequency[10]= {0};
    int response[Size]= {6,7,8,2,3,4,5,6,8,6,
                         2,7,9,6,3,2,4,7,1,3,
                         2,4,5,6,1,3,6,8,2,4,
                         3,4,7,9,2,4,9,1,3,5,
                         5,7,9,2,6,1,3,5,8,2,
                         3,4,7,9,1,2,4,5,8,5,
                         4,2,1,4,7,8,6,4,3,3,
                         3,4,6,8,9,3,1,5,2,3,
                         2,5,7,8,9,2,3,4,3,2,
                         4,7,8,9,2,3,6,7,8,};
    mean(response);
    median(response);
    mode(frequency,response);
    return 0;        }
    void mean(const int answer[])      {
        int j;
        int total=0;
        printf("%s\n%s\n%s\n","********","Mean","********");
for (j=0;j<Size;j++)     {
    total +=answer[j];    }
        printf("Mean is the average of numbers\nThe mean for this data is %d/%d= %.1f ",Size,total,Size,(double)total/Size);
    }
    void median(int answer[])      {
        printf("\n%s\n%s\n%s\n%s\n","********","Median","********","\nThe unsorted array of response is ");
        printarray(answer);
        bubblesort(answer);
        printf("\nThe sorted array is:\n\n");
        printarray(answer);
        printf("\nThe median element is %d of \n the sorted %d element array.\nFor this run the median is %d\n\n",Size/2,Size,answer[Size/2]);
    }
    void mode(int freq[],const int answer[]){
    int rating,j,h,largest=0,modevalue=0;
        printf("\n%s\n%s\n%s\n","********","Mode","********");
for (rating=1;rating<=9;rating++)      {
        freq[rating]=0;     }
for (j=0;j<Size;j++)    {
        ++freq[answer[j]];     }
        printf("%s%11s%19s\n\n%54s\n%54s\n\n","Response","Frequency","Histogram","1   1   2   2","5   0   5   0   5");
for (rating=1;rating<=9;rating++)    {
        printf("%8d%11d   ",rating,freq[rating]);
if (freq[rating]>largest)    {
        largest =freq[rating];
        modevalue =rating;       }
for (h=1;h<=freq[rating];h++)    {
        printf("*");         }
        printf("\n");       }
        printf("The mode is the most frequent value.\nThe mode is %dwhich occurred %d timems\n",modevalue,largest);}
      void bubblesort(int a[])     {
          int pass,j,hold;
for (pass=1;pass<Size;pass++)      {
for (j=0;j<Size -1 ;j++)       {
    if (a[j]>a[j+1])    {
        hold = a[j];
    a[j]= a[j+1];
    a[j+1]= hold ;   }  }  }}
      void printarray(const int a[])   {
          int j;
for (j=0;j<Size;j++)    {
        if (j%20==0){
        printf("\n");}
        printf("%2d",a[j]); }   }





