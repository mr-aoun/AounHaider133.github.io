/*Write a C Program to create the data for some students (roll, name, mark1, mark2, mark3) and then find the total marks for each student and average mark of each student.*/
#include <stdio.h>
struct student {
int roll;
char name;
int mark;             }s[50];
int main()  {
    int i;
    int total=0;
    float average;
for(i=0;i<3;i++)    {
    printf("Enter roll number:\n");
    scanf("%d",&s[i].roll);
    printf("Enter name:\n");
    gets(&s[i].name);
    printf("Enter mark (%d):",i+1);
    scanf("%d",&s[i].mark);
    total+=s[i].mark;
    average= total/3;            }
for (i=0;i<3;i++)  {
   printf("Roll number:%d\n",s[i].roll);
    printf("Name:%s\n");
    puts(s[i].name);

    printf("Marks:%d\n",s[i].mark);                  }
    printf("Total is:%d\n",total);
    printf("Average is :%f",average);

 return 0;
}
