#include <stdio.h>
#include<string.h>

struct inventory{
int record;
char tool_name[30];
int quantity;
float cost;       };
int main()   {
struct inventory inv[100]= {{3,"Electric sander",7,57.98},{17,"Hammer",76,11.99},{24,"Jigsaw",21,11.00},
                           {39,"Lownmower",3,79.50},{56,"Powersaw",18,99.99},{68,"Screwdriver",106,6.99},
                           {77,"Sledgehammer",11,21.50},{83,"Wrench",34,7.50}};

struct inventory dell= {0,"",0,0.0};
int list,n1;
     printf("_____________________________________________________________________________\n");
     printf("|%3s|%19s|%19s|%17s|\n","RECORD","TOOL NAME","QUANTITY","COST");
for (int i=0;i<=7;i++)  {
     printf("|_____________________________________________________________________________|\n");
     printf("|%3d\n",inv[i].record);

     printf("%25s",inv[i].tool_name);

     printf("%19d",inv[i].quantity);

     printf("%23.2f\n",inv[i].cost);


}
printf("|_____________________________________________________________________________|\n");


printf("\nEnter 1 to add record\nEnter 2 to update record\nEnter 3 to delete record\nEnter 4 to print record\n\nEnter 0 to exit\n");
scanf("%d",&list);


while(list!=0){

switch (list)   {

case 1:
    printf("Enter record number: ");
    scanf("%d",&n1);
inv[n1].record=n1;
    printf("Enter name:");
    fflush(stdin);
gets(inv[n1].tool_name);
    printf("Enter quantity:");
    scanf("%d",&inv[n1].quantity);
    printf("Enter cost:");
    scanf("%f",&inv[n1].cost);

break;
case 2:
    printf("Enter record no. to update: ");
    scanf("%d",&n1);
for (int i=0;i<100;i++)  {
if(inv[i].record==n1)     {
inv[i].record=n1;
  fflush(stdin);
    printf("Enter tool name:");
    gets(inv[i].tool_name);
    printf("Enter quantity:");
    scanf("%d",&inv[i].quantity);
    printf("Enter cost:");
    scanf("%f",&inv[i].cost);
}
}
break;
case 3:
    printf("Enter record to delete: ");
    scanf("%d",&n1);
for (int i=0;i<100;i++)   {
if (inv[i].record==n1)  {
    inv[i]=dell;                                  }
}

break;
case 4:
    printf("\n\n");
printf("_____________________________________________________________________________\n");
     printf("|%3s|%19s|%19s|%17s|\n","RECORD","TOOL NAME","QUANTITY","COST");
for (int i=0;i<100;i++)  {
if (inv[i].record!=0)        {
     printf("|_____________________________________________________________________________|\n");
     printf("|%3d\n",inv[i].record);

     printf("%25s",inv[i].tool_name);

     printf("%19d",inv[i].quantity);

     printf("%23.2f\n",inv[i].cost);

}
}
printf("|_____________________________________________________________________________|\n");
break;
}

   printf("\nEnter 1 to add record\nEnter 2 to update record\nEnter 3 to delete record\nEnter 4 to print record\n\nEnter 0 to exit\n");
     scanf("%d",&list);

}


return 0;
}

