#include <stdio.h>
int getSize(int *ptr)  {
    return sizeof(ptr);     }
int main(void)   {
 int a[20];

   printf("The numbers of byte in the array is:%d\nThe number of byte returned by getsize:%d\n",sizeof(a),getSize(a));
   return 0;
}
