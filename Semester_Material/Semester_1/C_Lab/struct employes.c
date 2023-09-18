#include <stdio.h>
void add_Employee();
void Display_Employees();
void Display_Employees_by_name();
void Emp_age( );


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
add_Employee();
break;
case 2:
Display_Employees();
break;
case 3:
Display_Employees_by_name();
break;
case 4:
Emp_age( );
break;
default:
    printf("Wrong option selected!!!\n");
break;
}
printf("\t\tEnter option from above menu:\n");
  scanf("%d",&menu);

}
}
void add_Employee()  {
struct Employee p[100];
int d;
 printf("\t\t<--------:ADD DETAIL:--------->\n");


    printf("Enter id:");
    scanf("%d",&p[d].Employeeid);

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
    gets(&p[d].Gender);      }
void Display_Employees()  {
struct Employee p[100];
printf("\t\t<--------:DISPLAY RECORD:-------->\n");
 printf("%3s%25s%25s%23s%22s%21s\n\n","Emp ID","AGE","FIRST NAME","LAST NAME","SALARY","GENDER");
for (int i=0;i<6;i++)  {
if (p[i].Employeeid!=0)
   {
        printf("%3d%28d%20s%23s%25d%18s\n",p[i].Employeeid,p[i].Employeeage,p[i].Firstname,p[i].Lastname,p[i].salary,p[i].Gender);

}
}
}
void Display_Employees_by_name()   {
char s[20];
struct Employee p[100];
 printf("\t\t<---------:SEARCH EMPLOYEE BY NAME:----------->\n");
    printf("Enter name of Employee to search:");
    fflush(stdin);
    gets(&s);
    printf("%3s%25s%25s%23s%22s%21s\n","Emp ID","AGE","FIRST NAME","LAST NAME","SALARY","GENDER");

for (int i=0;i<6;i++)  {
if(!strcmp(p[i].Firstname,s))      {
       printf("%3d%28d%20s%23s%25d%18s\n",p[i].Employeeid,p[i].Employeeage,
               p[i].Firstname,p[i].Lastname,p[i].salary,p[i].Gender);           }

}
}
void Emp_age( )   {
int i;
struct Employee p[100];

printf("\t\t<---------:SEARCH EMPLOYEE BY AGE:----------->\n");


        printf("%3s%25s%25s%23s%22s%21s\n","Emp ID","AGE","FIRST NAME","LAST NAME","SALARY","GENDER");
for (int i=0;i<6;i++)  {
if(p[i].Employeeage==50)      {
    printf("%3d%25d%24s%23s%23d%21s\n",p[i].Employeeid,p[i].Employeeage,
               p[i].Firstname,p[i].Lastname,p[i].salary,p[i].Gender);


}
}
}
