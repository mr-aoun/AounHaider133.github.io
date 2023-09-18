#include <stdio.h>
struct clientData {
int acctNum;
char lastName[ 15 ];
char firstName[ 10 ];
double balance;
		                 };

int main( void )
{
int i;
struct clientData Client = { 0, "", "", 0.0 };
FILE *cfPtr;

if ( ( cfPtr = fopen( "a.c", "rb" ) ) == NULL ) {
        printf( "File could not be opened.\n" );
		   }
else {
    printf("%6s%16s%11s\n","Account","First","Last","Balance");
while (!feof(cfPtr))   {

    fread(&Client,sizeof(struct clientData),2,cfPtr);
if (Client.acctNum!=0)  {
        printf( "%-6d%-16s%-11s%10.2f\n",Client.acctNum, Client.lastName,Client.firstName, Client.balance );          }
}


fclose ( cfPtr );
		                                                      }

return 0;
}

