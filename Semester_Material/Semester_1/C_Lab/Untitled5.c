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
void exit(int s);


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
    printf("\n\nPress any key to continue.\n");
    menu();
return 0;
}
void menu()
{
     P p[10];
     int choice,d;
     printf("<--:MENU:-->\n");
     printf("Enter the following number to perform task.\n");
     printf("\t\t1 : Add details.\n");
     printf("\t\t2 : Update details.\n");
     printf("\t\t3 : Disply record by date.\n");
     printf("\t\t4 : Search\n");
     printf("\t\t5 : Num of people partially vacc.\n");
     printf("\t\t6 : Num of people Fully vacc.\n");
     printf("\t\t7: Exit\n");

     printf("\t\tEnter your choice.\n");
     scanf("%d",&choice);
while (choice!=7)  {
     switch(choice)
     {
         case 1:
             add_details();
             break;
         case 2:
             update_details();
             break;
         case 3:
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
             break;
         case 7:
             printf("Enter number:\n");
             scanf("%d",d);
             exit(d);
         case 8 :
             del_record();
         case 9 :
    printf("%3s%15s%17s%23s\n","NAMES","ID/CNIC","NUM OF DOSES","DATE OF VACCINATION");
for (int i=0;i<Size;i++)  {
    printf("%3s%15d%%15d%d/%d/%d\n",p[i].name,
           p[i].id,p[i].num_of_dose,p[i].date,p[i].date,p[i].date);     }

         default:
                printf("Invalid Choice.\n");

     }
     printf("\t\tEnter your choice.\n");
     scanf("%d",&choice);

}
}
void add_details()
{
     int p1;
     P p[Size];
     p[p1].name ==p1;
    printf("Enter person name:\n");
    fflush(stdin);
    gets(p[p1].name);

    printf("\nEnter id/cnic number:\n");
    scanf("%d",&p[p1].id);
    printf("Enter number of doses:\n");
    scanf("%d",p[p1].num_of_dose);
    printf("Enter date of vaccination in (DMS) pattern:\n");
    scanf("%d/%d/%d",&p[p1].date);
}
int update_details()
{
    P p[100];
    char p2[20];
    int id;
    fflush(stdin);
    printf("Enter person name:\n");
    gets(p->name);



    printf("<---Update--->\n");
for(int i =0;i<Size;i++)   {
if(p[i].name==p2)  {

    printf("\nEnter id/cnic number:\n");
    scanf("%d",&p[i].id);
    printf("Enter number of doses:\n");
    scanf("%d",p[i].num_of_dose);
    printf("Enter date of vaccination in (DMS) pattern:\n");
    scanf("%d/%d/%d",&p[i].date);
                                                              }
else      {
    printf("Name not existing in the given record!!!\n");            }

}
 void disply_record_by_date()
 {
    P p[Size];
    int p3;
    printf("Enter date in (DMS) pattern:");
    scanf("%d %d %d",&p3);
for (int i=0;i<Size;i++)  {
if (p[i].date==p3)  {
  p[i].date=p3;
  printf("Date found in record!!!\n");
if (i!=100)  {
  printf("%3s%15d%%15d%d/%d/%d\n",p[i].name,p[i].id,p[i].num_of_dose,p[i].date,p[i].date,p[i].date);     }
}
else    {
  printf("Record not found!!!\n");            }


}
}
}
void del_record()   {
 P p[Size];
 char p4;
 P del= {'\0','0','0','0'};
 printf("Enter person name:");
 gets(&p4);
for (int i=0;i<Size;i++)  {
if (p[i].name==p4)  {
  p[i]=del;                         }
else  {
  printf("Invalid name entered!!!\n");         }

void search_person(char p5)    {
P p[Size];
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
}
void exit(int s)     {

  printf("Enter number: ");
  scanf("%d",&s);
while (s!=7)   {
  printf("Enter number: ");
  scanf("%d",&s);                 }

}
