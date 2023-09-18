#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <windows.h>
#include <string.h>


 struct dates{
    int day;
    int month;
    int year;
};

struct person{
    int id;
    int no_of_dose;
    char name[20];
struct dates date;

};

int main()
{ int  p1;
  struct person p[100];
  int mainmenu;

  printf("<--:MENU:-->\n");

    mainmenu:
     printf("enter 1 to Add details\n");
     printf("enter 2 to Disply record \n");
     printf("enter 3 to Update details\n");
     printf("enter 4 to Search\n");
     printf("enter 5 to check how many Num of people partially vacc.\n");
     printf("enter 6 to check Num of people Fully vacc.\n");
     printf("enter 7 to Exit\n");
     scanf("%d",&mainmenu);
while (mainmenu!=7)  {
    switch(mainmenu)
    {
    case 1:
        printf("enter id number:");
        scanf("%d",&p[p1].id);
        p[p1].id=p1;
        fflush(stdin);

        printf("enter person name:");
        scanf("%s",&p[p1].name);
        printf("enter number of doses the person get:");
        scanf("%d",&p[p1].no_of_dose);
        printf("enter date(D/M/Y):");
        scanf("%d/%d/%d",&p[p1].date);
     break;

    case 2:
        printf("%s\t%s\t%s\t%s\n","ID","NAME","NO OF DOSE","DATE(D/M/Y)");
for (int i=0;i<100;i++)  {
if (p[i].name!='\0')
        printf("%d%9s%12d%16d/%d/%d\n",p[i].id,p[i].name,p[i].no_of_dose,p[i].date);

     break;
}
}
  printf("<--:MENU:-->\n");

     printf("enter 1 to Add details\n");
     printf("enter 2 to Disply record \n");
     printf("enter 3 to Update details\n");
     printf("enter 4 to Search\n");
     printf("enter 5 to check how many Num of people partially vacc.\n");
     printf("enter 6 to check Num of people Fully vacc.\n");
     printf("enter 7 to Exit\n");
     scanf("%d",&mainmenu);
}
}
