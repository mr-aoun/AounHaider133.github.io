//presented by Mr.Roman.
#include<stdio.h>
#include<conio.h>
#include<math.h>
void main()
{

     int base,dec_number,i,r,digit,p,count=0,j=0,decnum=0, x=0, len=0,rem,operation;
     char a[100];
     char hexnum[20];
     long long n;
     long int octal, decimal = 0;

              printf("\t\t\t<--------------:NUMBER CONVERSIONS:--------->\n");
              printf("\t\t\t1-Decimal to any other base.\n\t\t\t2-Binary to decimal.\n\t\t\t3-Octal to decimal number.\n\t\t\t4-Hexadecimal to decimal.\n\t\t\t5-to end the program.\n");
              printf("\t\t\tEnter above numbers to perform operation:");
              scanf("%d",&operation);
              printf("\n\n");

while(operation!=5)
{
switch(operation)
{
   case 1:
              printf("\n<--------------:DECIMAL TO OTHERS:--------->\n");
              printf("\nEnter the decimal number:\n");
              scanf("%d",&dec_number);
              printf("\nEnter the base in which you wants to convert:\n");
              scanf("%d",&base);
              p=dec_number;
  do
{
              r=p%base;
              digit='0'+r;
  if(digit>'9')
              digit=digit+7;
              a[count]=digit;
              count++;
              p=p/base;
}
  while(p!=0);

              printf("Number \"%d\" with base of %d is: ",dec_number,base);
  for(i=count-1;i>=0;--i)
              printf("%c",a[i]);
              printf(".\n");

break;
    case 2:
              printf("\n<--------------:BINARY TO DECIMAL:--------->\n");
              printf("Enter a binary number: ");
              scanf("%lld", &n);
              printf("Equilent decimal value = %d\n", convert(n));
break;
    case 3:
            printf("\n<--------------:OCTAL TO DECIMAL:--------->\n");
            printf("Enter any octal number: ");
            scanf("%ld", &octal);
    while (octal != 0)
    {
            decimal =  decimal +(octal % 10)* pow(8, j++);
            octal /= 10;
    }
            printf("Equivalent decimal value: %ld\n",decimal);
break;

    case 4:
            printf("\n<--------------:HEXADECIMAL TO DECIMAL:--------->\n");
            printf("Enter any Hexadecimal Number: ");
            scanf("%s", hexnum);
    while(hexnum[x]!='\0')
    {
                len++;
                x++;
    }
                len--;
                x=0;
    while(len>=0)
    {
                rem = hexnum[len];
    if(rem>=48 && rem<=57)
                rem = rem-48;
    else if(rem>=65 && rem<=70)
                rem = rem-55;
    else if(rem>=97 && rem<=102)
                rem = rem-87;
    else
        {
                printf("\nYou've entered an invalid Hexadecimal digit");
                getch();

        }
                decnum = decnum + (rem*pow(16, x));
                len--;
                x++;
}
                printf("\nEquivalent Decimal Value = %d", decnum);

break;

    default:
                printf("\nWrong option selected!!!");
break;
}
                printf("\n\n");
                printf("\t\t\t<--------------:NUMBER CONVERSIONS:--------->\n");
                printf("\t\t\t1-Decimal to any other base.\n\t\t\t2-Binary to decimal.\n\t\t\t3-Octal to decimal number.\n\t\t\t4-Hexadecimal to decimal.\n\t\t\t5-to end the program.\n");
                printf("\t\t\tEnter above numbers to perform operation:");
                scanf("%d",&operation);
}

}

int convert(long long n) {
  int dec = 0, i = 0, rem;

  while (n!=0) {
    rem = n % 10;
    n /= 10;
    dec += rem * pow(2, i);
    ++i;
  }

  return dec;
}

