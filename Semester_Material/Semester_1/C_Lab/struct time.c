/*write down a structure named “TimeStruct” for saving time information. The structure should contain
hours, minutes and seconds members along with a time period “pm/am” information. Create a struct variable
inside main and initialize its members by inputting time information from the user. Finally, display the
saved time in standard time format. E.g. 03:49:38 pm.*/
#include <stdio.h>
struct time{
int hours;
int minutes;
int second;    };
int main()      {
    struct time n1,n2,n3;
    printf("Enter hours:\n");
    scanf("%d",&n1.hours);
    printf("\nEnter minutes:\n");
    scanf("%d",&n2.minutes);
    printf("\nEnter seconds:");
    scanf("%d",&n3.second);
    printf("\nTime: ");
 if ((n1.hours>0)&& (n1.hours<12)&&(n1.hours=0))   {
    printf("%d:%d:%d am.\n",n1.hours,n2.minutes,n3.second);   }
else if ((n1.hours>12)&& (n1.hours<24))   {
    printf("%d:%d:%d pm.\n",n1.hours,n2.minutes,n3.second);   }

return 0;
}


