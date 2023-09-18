#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <windows.h>
#include <string.h>
#define Size 100
void menu();
struct dates{
    int day;
    int month;
    int year;
};

struct person{
    char name[20];
    int id;
    int num_of_dose;
    struct dates date;

};

  typedef struct person b;
int main()    {
  b p[10];

    printf("\t\t<---Vaccination Record--->\n");
    menu();
return 0;
}
void menu()
{
     b p[10];
     int choice,d,d1,d2;
     char s[20];
     choice :
     printf("\t\t<-----:MENU:----->\t\t\n");
     printf("Enter number from the following list to perform task.\n");
     printf("\t\t1 : Add details.\n");
     printf("\t\t2 : Show record.\n");
     printf("\t\t3 : Update record by ID.\n");
     printf("\t\t4 : Update record by NAME.\n");
     printf("\t\t5 : Update record by DATE.\n");
     printf("\t\t6 : Search record by id.\n");
     printf("\t\t7 : Search record by name.\n");
     printf("\t\t8 : Search Record by date.\n");
     printf("\t\t9 : Num of people partially vaccinated.\n");
     printf("\t\t10: Num of people Fully vaccinated.\n");
     printf("\t\t11: Delete by ID.\n");
     printf("\t\t12: Delete by Name.\n");
     printf("\t\t13: Delete by DATE.\n");
     printf("\t\t14: Exit.\n");

     printf("\t\tEnter your choice.\n");
     scanf("%d",&choice);
while (choice!=14)  {
     switch(choice)   {
case 1:
    printf("<-------:ADD RECORD:------>\n");
for (int i=0;i<3;i++)  {
    printf("Enter name:\n");
    fflush(stdin);
    gets(&p[i].name);

    printf("Enter id/cnic:\n");
    scanf("%d",&p[i].id);
    printf("Enter number of doses:\n");
    scanf("%d",&p[i].num_of_dose);
    printf("Enter date in (DMS) pattern:\n");
    scanf("%d %d %d",&p[i].date.day,&p[i].date.month,&p[i].date.year);                }
    goto choice;
    break;
case 2:
    printf("<-----:SHOW RECORD:------>\n");
    printf("________________________________________________________________________"
            "___________________ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;i<3;i++)  {
if (p[i].id!=0)  {
    printf("________________________________________________________________________"
            "___________________|  \n");

    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}
    printf("________________________________________________________________________\n");
goto choice;
break;
case 3:
    printf("<------:UPDATE RECORD BY ID:------>\n");
    printf("Enter record to update by id: ");
    scanf("%d",&d);
for (int i=0;i<3;i++)  {
if (p[i].id==d)   {
    printf("Enter name:\n");
    fflush(stdin);
    gets(&p[i].name);
    printf("Enter Num of doses:\n");
    scanf("%d",&p[i].num_of_dose);
    printf("Enter date in (D M S) pattern:\n");
    scanf("%d %d %d",&p[i].date.day,&p[i].date.month,&p[i].date.year);
}
}
goto choice;
break;

case 4:
    printf("<------:UPDATE RECORD BY NAME:------>\n");
    printf("Enter record to update by name: ");
    fflush(stdin);
    gets(&s);
for (int i=0;i<3;i++)  {
if (p[i].name==s)   {
    printf("Enter ID:\n");
    scanf("%d",&p[i].id);
    printf("Enter Num of doses:\n");
    scanf("%d",&p[i].num_of_dose);
    printf("Enter date in (D M S) pattern:\n");
    scanf("%d %d %d",&p[i].date.day,&p[i].date.month,&p[i].date.year);
}
}
goto choice;
break;

case 5:
    printf("<------:UPDATE RECORD BY DATE:------>\n");
    printf("Enter record to update by date (D M S): ");
    scanf("%d %d %d",&d,&d1,&d2);
for (int i=0;i<3;i++)  {
 if ((p[i].date.day==d)&&(p[i].date.month==d1)&&(p[i].date.year==d2))   {
    printf("Enter name:\n");
     fflush(stdin);
    gets(&p[i].name);

    printf("Enter ID:\n");
    scanf("%d",&p[i].id);
    printf("Enter Num of doses:\n");
    scanf("%d",&p[i].num_of_dose);
}
}
goto choice;
break;


case 6:
    printf("<-------:SEARCH RECORD BY ID:--------->\n");
    printf("Enter id/cnic to search:\n");
    scanf("%d",&d);
     printf("________________________________________________________________________"
            "___________________ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;i<3;i++)  {
if (p[i].id==d)   {
    printf("________________________________________________________________________"
            "___________________|  \n");

    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}
    printf("_____________________________________________________________________________________\n");
    goto choice;
break;


case 7:
    printf("<-------:SEARCH RECORD BY NAME:-------->\n");
    printf("Enter name to search:\n");
    scanf("%s",&s);
printf("________________________________________________________________________"
            "___________________ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;(p[i].name==s);i++)  {
if (p[i].name==s)   {
    printf("________________________________________________________________________"
            "___________________|  \n");

    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}
    printf("__________________________________________________________________________________\n");
    goto choice;
break;


case 8:
    printf("<------:SEARCH RECORD BY DATE:------->\n");
    printf("Enter date to search ((D M S)space pattern):");
    scanf("%d %d %d",&d);
printf("________________________________________________________________________"
            "______________________________ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;i<3;i++)  {
if ((p[i].date.day==d) && (p[i].date.month==d1) && (p[i].date.year==d2))   {
    printf("________________________________________________________________________"
            " _______________________| \n");

    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}
    printf("______________________________________________________________________________________________________\n");
    goto choice;
break;

case 9:
    printf("<-----------:NUMBER OF PEOPLE PARTIALLY VACCINATED:--------->\n");

printf("________________________________________________________________________"
            "___________________ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;i<3;i++)  {
if (p[i].num_of_dose<3)   {
    printf("________________________________________________________________________"
            "___________________|  \n");

    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}
    printf("_________________________________________________________________________________________\n");
    goto choice;
break;

case 10:
     printf("<-----------:NUMBER OF PEOPLE FULLY VACCINATED:--------->\n");

printf("________________________________________________________________________"
            "___________________ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;i<3;i++)  {
if (p[i].num_of_dose>2)   {
    printf("________________________________________________________________________"
            "___________________|  \n");

    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}
    printf("___________________________________________________________________________________\n");
    goto choice;
break;

case 11:
    printf("<-------:DELETE BY ID:------>\n");
    printf("Enter ID you wants to delete:");
    scanf("%d",&d);
    p[d].id=d;
for (int i=0;i<3;i++)   {
if (p[i].id==d)         {
        p[i].id=0;
break;
}
}
goto choice;
break;
case 12:
    printf("<--------:DELETE RECORD BY NAME:-------->\n");
    printf("Enter record by name");
    gets(&s);
p[s].name=s;
for (int i=0;i<3;i++)   {
if (p[i].name==s)         {
        p[i].name='\0';

}
}
goto choice;
break;
case 13:
        printf("<--------:DELETE RECORD BY DATE:-------->\n");
    printf("Enter record by date");
    scanf("%d %d %d",&d,&d1,&d2);
    p[d].date.day=d;
    p[d1].date.month=d1;
    p[d2].date.year=d2;
p[s].name=s;
for (int i=0;i<3;i++)   {
if ((p[i].date.day==d) && (p[i].date.month==d1) && (p[i].date.year==d2))         {
      p[i].date.day=0;
      p[i].date.month=0;
      p[i].date.year=0;

}
}
goto choice;
break;
}

    printf("\t\tEnter your choice.\n");
    scanf("%d",&choice);
}
}








