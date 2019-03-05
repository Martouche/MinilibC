/*
** EPITECH PROJECT, 2019
** main
** File description:
** main test
*/

#include <stdio.h>

extern void *memset(void* dest, int nByte, size_t count);
extern int strlen(char *);
extern char *strchr(char *);

int main()
{
    char str[] = "almost every programmer should know memset!";
	memset(str,'-',6);

    printf("%i", strlen("hec"));
    printf("%s", strchr("nique zeubi"));
    return 0;
}
