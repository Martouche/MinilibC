/*
** EPITECH PROJECT, 2019
** main
** File description:
** main test
*/

#include <stdio.h>

extern char *strchr(const char *, int);

int main()
{
    char *str = "PUTTE";
    int i = 0;
    printf("%s\n", strchr(str, i));
    return 0;
}
