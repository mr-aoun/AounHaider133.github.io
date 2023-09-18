#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <windows.h>
#include <string.h>
#define Size 100
void menu();
void Add_rec();
void Show_rec();
void Update_rec();
void Update_rec_by_id();
void Update_rec_by_date();
void Search_rec_by_id();
void Search_rec_by_name();
void Search_rec_by_date();
void partially_vacc();
void Fully_vacc();
void del_by_id();
void del_by_name();
void del_by_date();


struct dates{
    int day;
    int month;
    int year;
};

struct person{
    char name[21];
    int id;
    int num_of_dose;
    struct dates date;

};

  typedef struct person b;
  typedef struct dates D;
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
     printf("\t\t<-----:MENU:----->\t\t\n"
           "Enter number from the following list to perform task.\n"
           "\t\t1 : Add details.\n"
           "\t\t2 : Show record.\n"
           "\t\t3 : Update record by ID.\n"
           "\t\t4 : Update record by NAME.\n"
           "\t\t5 : Update record by DATE.\n"
           "\t\t6 : Search record by id.\n"
           "\t\t7 : Search record by name.\n"
           "\t\t8 : Search Record by date.\n"
           "\t\t9 : Num of people partially vaccinated.\n"
           "\t\t10: Num of people Fully vaccinated.\n"
           "\t\t11: Delete by ID.\n"
           "\t\t12: Delete by Name.\n"
           "\t\t13: Delete by DATE.\n"
           "\t\t14: Exit.\n"

           "\t\tEnter your choice.\n");
     scanf("%d",&choice);
while (choice!=14)  {
     switch(choice)   {
case 1:
    Add_rec();
    break;
case 2:
   Show_rec();
break;
case 3:
   Update_rec();
break;
case 4:
    Update_rec_by_id();
break;
case 5:
    Update_rec_by_date();
break;
case 6:
    Search_rec_by_id();
break;
case 7:
    Search_rec_by_name();
break;
case 8:
    Search_rec_by_date();
break;
case 9:
    partially_vacc();
break;
case 10:
    Fully_vacc();
break;
case 11:
    del_by_id();
break;
case 12:
    del_by_name();
break;
case 13:
    del_by_date();
break;
default:
    printf("Wrong option selected.  \1\1\1\n");
    break;
}

    printf("\t\tEnter your choice.\n");
    scanf("%d",&choice);
}
}
void Add_rec()  {

    int i;
      b p[100];
      printf("<-------:ADD RECORD:------>\n");
for ( i=0;i<4;i++)  {
if (p[i].id!=0)   {
    printf("Enter name:\n");
    fflush(stdin);
    gets(&p[i].name);

    printf("Enter id/cnic(Enter 0 for end of record):\n");
    scanf("%d",&p[i].id);
    printf("Enter number of doses:\n");
    scanf("%d",&p[i].num_of_dose);
    printf("Enter date in (DMS) pattern:\n");
    scanf("%d %d %d",&p[i].date.day,&p[i].date.month,&p[i].date.year);                }
      }
}
void Show_rec()  {
    b p[100];
     printf("<-----:SHOW RECORD:------>\n");
    printf("____________________________________________________________________________________________"
            "_______ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;i<3;i++)  {
if (p[i].id!=0)  {
        printf("____________________________________________________________________________________________"
            "_______ \n");

    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}
    printf("____________________________________________________________________________________________"
            "_______ \n");
}
void Update_rec()   {
    int d,i;
    b p[100];
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
}
void Update_rec_by_id()    {
b p[100];
char s[20];
    printf("<------:UPDATE RECORD BY NAME:------>\n");
    printf("Enter record to update by name: ");
    fflush(stdin);
    gets(&s);
for (int i=0;i<3;i++)  {
if (!strcmp(p[i].name,s))   {
    printf("Enter ID:\n");
    scanf("%d",&p[i].id);
    printf("Enter Num of doses:\n");
    scanf("%d",&p[i].num_of_dose);
    printf("Enter date in (D M S) pattern:\n");
    scanf("%d %d %d",&p[i].date.day,&p[i].date.month,&p[i].date.year);
}
}
}
void Update_rec_by_date()  {

b p[100];
int d,d1,d2;
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
}
void Search_rec_by_id()  {
int d;
b p[100];

printf("<-------:SEARCH RECORD BY ID:--------->\n");
    printf("Enter id/cnic to search:\n");
    scanf("%d",&d);
     printf("____________________________________________________________________________________________"
            "_______ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;i<3;i++)  {
if (p[i].id==d)   {
    printf("____________________________________________________________________________________________"
            "_______ \n");

    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}
   printf("____________________________________________________________________________________________"
            "_______ \n");                 }
void Search_rec_by_name()   {
b p[100];
char s[20];

printf("<-------:SEARCH RECORD BY NAME:-------->\n");
    printf("Enter name to search:\n");
    scanf("%s",&s);
printf("____________________________________________________________________________________________"
            "_______ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;i<3;i++)  {
if (!strcmp(p[i].name,s))   {
    printf("____________________________________________________________________________________________"
            "_______ \n");

    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}
    printf("____________________________________________________________________________________________"
            "_______ \n");                }
void Search_rec_by_date()   {
b p[100];
int d,d1,d2;
printf("<------:SEARCH RECORD BY DATE:------->\n");
    printf("Enter date to search ((D M S)space pattern):");
    scanf("%d %d %d",&d,&d1,&d2);
printf("____________________________________________________________________________________________"
            "_______ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;i<3;i++)  {
if ((p[i].date.day==d) && (p[i].date.month==d1) && (p[i].date.year==d2))   {
    printf("____________________________________________________________________________________________"
            "_______ \n");
    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}
    printf("____________________________________________________________________________________________"
            "_______ \n");}
void partially_vacc()  {

b p[100];
printf("<-----------:NUMBER OF PEOPLE PARTIALLY VACCINATED:--------->\n");

printf("____________________________________________________________________________________________"
            "_______ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;i<3;i++)  {
if (p[i].num_of_dose<3)   {
    printf("____________________________________________________________________________________________"
            "_______ \n");

    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}}
void Fully_vacc()  {
b p[100];

printf("<-----------:NUMBER OF PEOPLE FULLY VACCINATED:--------->\n");

printf("____________________________________________________________________________________________"
            "_______ \n");
    printf("%3s%30s%25s%30s\n","Name","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");

for (int i=0;i<3;i++)  {
if (p[i].num_of_dose>2)   {
    printf("____________________________________________________________________________________________"
            "_______ \n");

    printf("|%3s%29d%21d\t\t\t%d/%d/%d\n",p[i].name,p[i].id,
           p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);

}
}
    printf("____________________________________________________________________________________________"
            "_______ \n");}
void del_by_id()  {
b p[100];
int d;

printf("<-------:DELETE BY ID:------>\n");
    printf("Enter ID you wants to delete:");
    scanf("%d",&d);
    p[d].id=d;
for (int i=0;i<3;i++)   {
if (p[i].id==d)         {
        p[i].id=0;
break;
}
}}
void del_by_name()  {
b p[100];
char s[20];

printf("<--------:DELETE RECORD BY NAME:-------->\n");
    printf("Enter record by name:");
    fflush(stdin);
    gets(&s);

for (int i=0;i<3;i++)   {
if (!strcmp(p[i].name,s))        {
        p[i].name[0]='\0';
        p[i].id=0;

}
}
}
void del_by_date()  {
b p[100];
int d,d1,d2;

printf("<--------:DELETE RECORD BY DATE:-------->\n");
    printf("Enter record by date:");
    scanf("%d %d %d",&d,&d1,&d2);
p[d].date.day=d;
      p[d1].date.month=d1;
      p[d2].date.year=d2;
for (int i=0;i<3;i++)   {



if ((p[i].date.day==d) && (p[i].date.month==d1) && (p[i].date.year==d2))         {
      p[i].date.day=0;
      p[i].date.month=0;
      p[i].date.year=0;
      p[i].id=0;
}
}
}
