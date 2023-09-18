#include <stdio.h>
void copy1(char *const str1,const char *const str2)  {
int i;
for(i=0;(str1[i]=str2[i])!='\0';i++)   {
}
}
void copy2(char *str1,const char *str2)  {
for (;(*str1=*str2)!='\0';str1++,str2++)   {
}
}
int main()  {
    char s1[10];
    char *s2="My name is aoun haider";
    char s3[10];
    char *s4="Good bye";
    copy1(s1,s2);
    printf("string1=%s\n",s1);
    copy2(s3,s4);
    printf("string2= %s\n",s3);

    return 0;
}
