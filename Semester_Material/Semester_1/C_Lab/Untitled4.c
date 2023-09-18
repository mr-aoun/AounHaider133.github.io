/*Create a date structure named “DateStruct” containing year, month and day members. Now, create another structure
named “DateTimeStruct” containing variables of both TimeStruct and DateStruct as members. Now, input all values
of members of both structs from user and display them in the following format:
The event occurred on 23-05-2017 at 03:49:38 pm.*/
#include <stdio.h>
struct Date{
int day,month,year;         };
struct datetime{
int hours,minutes,seconds;
struct Date d;       };
int main() {
  struct datetime n1,n2,n3;
  printf("Enter day,month and year:\n ");
  scanf("%d %d %d",&n1.d.day,&n1.d.month,&n1.d.year);
  printf("Enter hour,minutes and seconds:\n");
  scanf("%d %d %d",&n1.hours,&n2.minutes,&n3.seconds);
  if ((n1.hours>0)&&(n1.hours<12)&&(n1.hours=0))   {
    printf("The event occurred on %d-%d-%d at %d:%d:%d am.\n",n1.d.day,n2.d.month,n3.d.year,n1.hours,n2.minutes,n3.seconds);   }
else if ((n1.hours>12)&&(n1.hours<24))   {
        printf("The event occurred on %d-%d-%d at %d:%d:%d pm.\n",n1.d.day,n2.d.month,n3.d.year,n1.hours,n2.minutes,n3.seconds);   }
return 0;
}


