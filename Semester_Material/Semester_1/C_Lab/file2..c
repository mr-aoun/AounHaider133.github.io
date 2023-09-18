  #include<stdio.h>
int main()
{
    FILE *source,*target,*temp;
    char file1[20],file2[20];
    char ch;
printf("\nEnter the source file name to be copied:");
    gets(file1);
    source=fopen("a.c","r");
    if(source==NULL){
printf("Cannot open %s","a.c");
                exit(0);
                }
printf("\nEnter the destination file name:");
    gets(file2);
    target=fopen("b.c","r");

    if(target==NULL){
printf("Cannot open %s","b.c");
                exit(0);
                }
    temp = fopen("c.c","w");
    if(temp==NULL){
printf("Cannot open %s","c.c");
                exit(0);
                }

    while(!feof(source))
    {
//---------------------------read on character from source
    fread(&file1,sizeof(char),1,source);

//---------------------------write the character read from source in the temp file
    fwrite(&file1,sizeof(char),1,source);


    }
fclose(temp);
temp = fopen("c.c","a");
    if(temp==NULL){
printf("Cannot open %s","c.c");
                exit(0);
                }

     while(!feof(target))
     {
     //-------------------------read character from target and write it in the temp file
    fread(&file2,sizeof(char),1,target);
    fwrite(&file2,sizeof(char),1,temp);

     }
fclose(source);
fclose(target);
fclose(temp);
    target=fopen("b.c","w");

    if(target==NULL){
printf("Cannot open %s","b.c");
                exit(0);
                }
    temp = fopen("c.c","r");
    if(temp==NULL){
printf("Cannot open %s","c.c");
                exit(0);
                }

    while(!feof(temp))
     {
    //-------------------------read character from temp and write it in the target file
    fread(&file2,sizeof(char),1,temp);
    fwrite(&file2,sizeof(char),1,target);

     }
printf("\nCOMPLETED");
fclose(temp);
fclose(target);
    return 0;
    }
