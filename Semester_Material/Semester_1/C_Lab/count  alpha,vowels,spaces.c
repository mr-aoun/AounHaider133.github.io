    #include <stdio.h>
    int main()   {

    char str[100];
    int  i,j,vowels,alphabet,digit,space;
    vowels=alphabet=digit=space=0;
    puts("Enter string:");
    gets(str);
    for (i=0;str[i]!='\0';i++)  {
    if (str[i]=='a'||str[i]=='e'||str[i]=='i'||str[i]=='o'||str[i]=='u'||str[i]=='A'||str[i]=='E'||str[i]=='O'||str[i]=='I'||str[i]=='U') {
    vowels++;                                  }
    else if((str[i]>='a'&&str[i]<='z')||(str[i]>='A'&&str[i]<='Z'))   {
    alphabet++;                                 }
    else if (str[i]>='0'&&str[i]<='9')   {
    digit++;                                     }
    else if (str[i]=' ')  {
    space++;                                      }
    }
    printf("vowels=%d\n",vowels);
    printf("Consonant=%d\n",alphabet);
    printf("digits=%d\n",digit);
    printf("Spaces=%d\n",space);
    return 0;
    }
