#include <stdio.h>
int main()
{
    printf("Introduceti 3 cifre (fara spatii):");
    char input[4];
    char min;
    scanf("%3s", input);
    char a=input[0];
    char b=input[1];
    if(a<b) min=a;
    else min=b;
    b=input[2];
    if(b<min) min=b;
    printf("\nCifra minima este:%c", min);
    return 0;
}
