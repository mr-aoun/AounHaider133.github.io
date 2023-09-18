#include <stdio.h>
struct student {
int roll;
char name;
int mark;            }s[50];
int main()  {
    int i,j;
    int total=0;
    float average;
for(i=0;i<3;i++)    {

    printf("Student[%d]\n",i+1);
    printf("Enter roll number:\n");
    scanf("%d",&s[i].roll);
    printf("Enter name:\n");
    gets(&s[i].name);
for(j=0;j<3;j++)
   {
    printf("Enter mark (%d):",i+1);
    scanf("%d",&s[i].mark);}
     printf("Roll number:%d\n",s[i].roll);
    printf("Name:%s\n");
    puts(s[i].name);
    printf("Marks:%d\n",s[i].mark);

    total+=s[j].mark;
    average= total/3;   }
    printf("Total is:%d\n",total);
    printf("Average is :%f",average);


 return 0;
}
