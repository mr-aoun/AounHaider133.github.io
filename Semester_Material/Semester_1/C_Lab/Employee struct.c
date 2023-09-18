#include <stdio.h>
void add_Employee();
void Display_Employees();
void Display_older_Employees();
struct Employee {
int Employeeid;
int Employeeage;
char Firstname[20];
char Lastname[20];
int salary;
char Gender[30];          };

int main()   {
   struct Employee p[100]={{234401,40,"Aoun","Haider",200000,"Male"},{345534,50,"Akhtar","Abbas",60000,"Male"},
    {004532,45,"Abdull","Rehman",30000,"Male"},{114352,42,"Maryam","Jahangir",45000,"Female"},{662238,50,"Saman","Safdar",300000,"Female"}};
    int menu,d;
    char s[20];
    menu:
    printf("\t\t<---------:EMPLOYEE DETAILS:-------->\n");
  printf("\t\t1: Add employee detail.\n");

  printf("\t\t2: Display all employee details.\n");

  printf("\t\t3: Search an employee by first name.\n");

  printf("\t\t4: Display employees with age '50' years.\n");

  printf("\t\t5: Exit.\n");
  printf("\t\tEnter option from above menu:\n");
  scanf("%d",&menu);
while (menu!=5)   {
switch(menu)   {
case 1:
    printf("\t\t<--------:ADD DETAIL:--------->\n");


    printf("Enter id:");
    scanf("%d",&d);
    p[d].Employeeid=d;
    printf("Enter age:");
    scanf("%d",&p[d].Employeeage);
    printf("Enter First Name:");
    fflush(stdin);
    gets(&p[d].Firstname);
    printf("Enter Last Name:");
    fflush(stdin);
    gets(&p[d].Lastname);
    printf("Enter Salary:");
    scanf("%d",&p[d].salary);
    printf("Enter Gender:");
    fflush(stdin);
    gets(&p[d].Gender);
goto menu;

break;
case 2:
    printf("\t\t<--------:DISPLAY RECORD:-------->\n");
 printf("%3s%25s%25s%23s%22s%21s\n\n","Emp ID","AGE","FIRST NAME","LAST NAME","SALARY","GENDER");
for (int i=0;i<6;i++)  {
if(p[i].Employeeid!=1)   {
        printf("%3d%28d%20s%23s%25d%18s\n",p[i].Employeeid,p[i].Employeeage,p[i].Firstname,p[i].Lastname,p[i].salary,p[i].Gender);

}
}


break;
case 3:
    printf("\t\t<---------:SEARCH EMPLOYEE BY NAME:----------->\n");
    printf("Enter name of Employee to search:\n");
    fflush(stdin);
    gets(&s);
    printf("%3s%25s%25s%23s%22s%21s\n","Emp ID","AGE","FIRST NAME","LAST NAME","SALARY","GENDER");

for (int i=0;i<6;i++)  {
if(!strcmp(p[i].Firstname,s))      {
       printf("%3d%28d%20s%23s%25d%18s\n",p[i].Employeeid,p[i].Employeeage,
               p[i].Firstname,p[i].Lastname,p[i].salary,p[i].Gender);


}
}
goto menu;
break;
case 4:
       printf("\t\t<---------:SEARCH EMPLOYEE BY AGE:----------->\n");

        printf("%3s%25s%25s%23s%22s%21s\n","Emp ID","AGE","FIRST NAME","LAST NAME","SALARY","GENDER");
for (int i=0;i<100;i++)  {
if(p[i].Employeeage==50)      {
    printf("%3d%25d%24s%23s%23d%21s\n",p[i].Employeeid,p[i].Employeeage,
               p[i].Firstname,p[i].Lastname,p[i].salary,p[i].Gender);


}
}
goto menu;
break;
}
}
}











