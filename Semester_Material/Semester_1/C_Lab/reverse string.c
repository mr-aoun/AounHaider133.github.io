#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <windows.h>
#include <string.h>
#define Size 100
void menu();
void add_details();
int update_details();
void disply_record_by_date();
void search_person();
void del_record();
void people_partially_vaccinated();
void fully_vaccinated();



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
  typedef struct dates D;
  typedef struct person P;





int main()    {
  P p[10];

    printf("<---Vaccination Record--->\n");
    menu();
return 0;
}
void menu()
{
     P p[10];
     int choice,d;
     char s;
     choice :
     printf("<--:MENU:-->\n");
     printf("Enter the following number to perform task.\n");
     printf("\t\t1 : Add details.\n");
     printf("\t\t2 : Update details.\n");
     printf("\t\t3 : Disply record by date.\n");
     printf("\t\t4 : Search\n");
     printf("\t\t5 : Num of people partially vacc.\n");
     printf("\t\t6 : Num of people Fully vacc.\n");
     printf("\t\t7 : Delete\n");
     printf("\t\t8 : Exit\n");
     printf("\t\t9 : Print Record\n");

     printf("\t\tEnter your choice.\n");
     scanf("%d",&choice);
while (choice!=8)  {
     switch(choice)
     {
case 1:
for (int i=0;i<4;i++)   {
       fflush(stdin);
    printf("Enter person name:\n");
    gets(p[i].name);


    printf("\nEnter id/cnic number:\n");
    scanf("%d",&p[i].id);
    printf("Enter number of doses:\n");
    scanf("%d",p[i].num_of_dose);
    printf("Enter day:");
    scanf("%d",&p[i].date.day);
    printf("Enter month:");
    scanf("%d",&p[i].date.month);
    printf("Enter year:");
    scanf("%d",&p[i].date.year);

         }
             goto choice;
             break;
case 2:


    fflush(stdin);
    printf("Enter person name:\n");
    gets(s);



    printf("<---Update--->\n");
for(int i =0;i<Size;i++)   {
if(p[i].name==s)  {

    printf("\nEnter id/cnic number:\n");
    scanf("%d",&p[i].id);
    printf("Enter number of doses:\n");
    scanf("%d",p[i].num_of_dose);
    printf("Enter date of vaccination in (D/M/S) pattern:\n");
    scanf("%d %d %d",&p[i].date.day,&p[i].date.month,&p[i].date.year);              }

else
    printf("Name not existing in the given record!!!\n");

}
}
             break;
         /*case 3:
             disply_record_by_date();
             break;
         case 4:
            search_person();
             break;
         case 5:
             people_partially_vaccinated();
             break;
         case 6:
             fully_vaccinated();
             break; */
          case 3:
              del_record();
             break;            
        /* case 8:
            break;



         case 9 :
    printf("%3s%30s%30s%30s\n","NAMES","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");
for (int i=0;i<4;i++)  {
if (i!=0)             {
    printf("%3s%30d%%25d%d/%d/%d\n",p[i].name,
           p[i].id,p[i].num_of_dose,p[i].date.day,p[i].date.month,p[i].date.year);     }
}

     }
     printf("\t\tEnter your choice.\n");
     scanf("%d",&choice);

}
}

int update_details()
{


 /*void disply_record_by_date()
 {
    P p[Size];
    int p3;
    printf("Enter date in (D/M/S) pattern:");
    scanf("%d/%d/%d",&p[p3].date.day,&p[p3].date.month,&p[p3].date.year);
for (int i=0;i<Size;i++)  {
if (p[i].date==p[p3].date)    {
  p[i].date=p3;
  printf("Date found in record!!!\n");
if (i!=100)  {
  printf("%3s%15d%%15d%d/%d/%d\n",p[i].name,p[i].id,p[i].num_of_dose,p[i].date,p[i].date,p[i].date);     }
}
else    {
  printf("Record not found!!!\n");            }


}
} */

void del_record()   {
 P p[Size];
 char p4;
 P del= {'\0','0','0','0'};
 printf("Enter person name:");
 gets(&p4);
for (int i=0;i<Size;i++)  {
if (p[i].name==p4)  {
  p[i].name;                         }
else  {
  printf("Invalid name entered!!!\n");         }
}
}
}


/*void search_person()    {
P p[Size];
char p5;
  printf("Enter person name which you wants to search:\n");
  gets(&p5);
for (int i=0;i<Size;i++)  {
if (p[i].name==p5)  {
if (i!=100)  {
  printf("%3s%15d%%15d%d/%d/%d\n",p[i].name,p[i].id,p[i].num_of_dose,p[i].date,p[i].date,p[i].date);     }
}
else    {
  printf("Record not found!!!\n");            }

}
}


void people_partially_vaccinated()    {
P p[Size];
for (int i=0;i<Size;i++)  {
if (p[i].num_of_dose=1)  {
if (i!=100)  {
  printf("%3s%15d%%15d%d/%d/%d\n",p[i].name,p[i].id,p[i].num_of_dose,p[i].date,p[i].date,p[i].date);     }
}
else    {
  printf("Record not found!!!\n");            }

}
}
void fully_vaccinated()   {


P p[Size];
for (int i=0;i<Size;i++)  {
if ((p[i].num_of_dose=2)||(p[i].num_of_dose=3))  {
if (i!=100)  {
  printf("%3s%15d%%15d%d/%d/%d\n",p[i].name,p[i].id,p[i].num_of_dose,p[i].date,p[i].date,p[i].date);     }
}
else    {
  printf("Record not found!!!\n");            }

}
}*/


