#include<stdio.h>
#include<string.h>

struct item{
   int record;
char name[30];
int price;


};

int print_bill (int bill)
{
   float gst, tbill;
   printf("\n\nWelcome to COMSATS Cafeteria\n\n");
   gst= .05*bill;
    printf("Total Amount:    %d RS\n", bill);

  tbill= bill+(0.05*bill);

  printf("Taxt:    %.1f RS\n", gst);
  printf("Amount Due:    %.1f RS\n", tbill);
}

int main()
{
int option, bill=0;


    struct item menuList [9]= {{1,"Chicken Biryani", 140},{2,"Kabab Masala", 120},{3,"Chicken Manchurian", 140},
    {4,"Chicken Leg Piece", 130},{5,"Chapli Kabab + Naan",90},{6,"Pizza",450},{7,"Grill Sandwich", 140}, {8,"Fries",50}, {9,"Tea",40}};

   int i=0;
   printf("NO.%25s %20s\n\n","NAME","PRICE");
   for (i=0;i<9;i++)
   {
   printf("%d%30s%20d\n",menuList[i].record, menuList[i].name, menuList[i].price);

   }



   printf("Enter item no. to add to bill (0 to end):\n\n");
   scanf("%d",&option);

   while (option!=0)
   {

      switch (option)
      {
      case 1:
         printf("1  Chicken Biryani      140\n");

         bill+=140;

         break;

         case 2:
         printf("2  Kabab Masala         120\n");

         bill+=140;

         break;

         case 3:
         printf("3  Chicken Manchurian   140\n");

         bill+=140;

         break;

         case 4:
         printf("4  Chicken Leg Piece    130\n");

         bill+=130;

         break;

      case 5:
         printf("5  Chapli Kabab+ Naan    90\n");

         bill+=90;

         break;

      case 6:
         printf("6  Pizza                450\n");

         bill+=450;

         break;
      case 7:
         printf("7  Grill Sandwich       140\n");

         bill+=140;

         break;
      case 8:
         printf("8  Shawarma             120\n");

         bill+=120;

         break;

         case 9:
         printf("9  Fries                 50\n");

         bill+=50;

         break;
         case 10:
         printf("10  Tea                  40\n");

         bill+=40;

         break;

         default:
            printf("Enter A valid item number\n");


      }



printf("Enter item no. to add to bill (0 to end):\n\n");
   scanf("%d",&option);

   }
 print_bill (bill);



   return 0;
}
