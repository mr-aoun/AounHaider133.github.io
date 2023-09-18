#include <stdio.h>

void function1(int a)  {
    printf("you entered %d so function1 was called\n\n",a);    }
void function2(int b)  {
    printf("You entered %d so function2 was called\n\n");       }
void function3(int c)  {
    printf("You enterd %d so function3 was called\n\n");   }
int main(void) {
void(*f[3])(int)= {function1,function2,function3};
int choice;
    printf("Enter a number between 0 and 2,3 to end:" );
    scanf("%d",&choice);
while (choice >=0&&choice<3)   {
(*f[choice])(choice);
    printf("Enter a number between 0 and 2 , 3 t end");
    scanf("%d",&choice);
}
    printf("program execution completed.\n");
    return 0;
}
