    #include <stdio.h>
    int s=10;  //global variable.it can be used in main and function also.
    int main()

    {  int d=10;  //local variable and can be used in only main and it should declare at start.
    auto int a=90,b=34,c;  //auto variable which shows its values automatically.
    static m=10;

        printf("Values before swaping:a=%d\nb=%d",s,b);
         c=a;
         a=b;
         b=c;

        printf("\nValues after swaping:\na=%d\nb=%d",a,b);
         f();
    return 0;
    }
    int e=98;  //external variable which once declared at of function,can be accessed all functions below this declared variable.
    void f()  {
    printf("\ns=%d",s);
    printf("e=%d",e);
    }
