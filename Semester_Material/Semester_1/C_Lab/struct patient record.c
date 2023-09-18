#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <windows.h>
#include <string.h>

void menu();
void add_details();
void update_details();
void disply_record_by_date();
void search_person();
void people_partially_vaccinated();
void fully_vaccinated();
void exit();

typedef struct
{
    int month;
    int date;
    int year;
}date;

typedef struct
{
    int id;
    int num_of_dose;      //num_of_doses
    char name[20];
      date;

}person;

int main()
{
  struct person p[10];
    for(int i=0;i<10;i++)

      printf("<---Vaccination Record--->\n";)
    printf("\n\nPress any key to continue.\n");
}
void menu()
{
    int choice;
    system("cls");
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

     switch(choice)
     {
         case '1':
             add_details();
             break;
         case '2':
             update_details();
             break;
         case '3':
             disply_record_by_date();
             break;
         case '4':
             search_person();
             break;
         case '5':
             people_partially_vaccinated();
             break;
         case '6':
             fully_vaccinated();
             break;
         case '7':
             Exit();
         default:
                printf("Invalid Choice.\n");
             menu();
     }
}
void add_details()
{
    struct person p1





}
void update_details()
{

    struct person p1;
    int id;

    system("cls");

    printf("<---Modify--->\n");

    printf("Enter person id\n");

    printf("Enter ID\n");
    gets(p.id);
    printf("Enter num of dose\n");
    gets(p.num_of_dose);
    printf("Enter name\n");
    gets(p.name);
    printf("Enter date\n");
    gets(p.date);
    fflush(stdin);
    break;

    printf("Enter any key to continue\n");
    getch();
    menu();
}
 void disply_record_by_date()
 {

  struct person p[10];
system("cls");

    printf("<--:VIEW RECORD:-->\n\n");



 }
 FILE *Ptr;

 ptr=fopen("patient.text","rb+");
 if(ptr==NULL)
 {
     printf("Error opening the file");
     exit();
     while()
 }
