/*
** EPITECH PROJECT, 2021
** Code_Sig_Catch
** File description:
** main_test
*/

#include "sig_catch.h"

int main(int argc, char **arvg)
{
    if (argc == 2) {
        if (!strcmp(arvg[1], "SIGSEGV")) {
            int a = 0;
            int b = 1000 / a;
            (void) b;
        }
        if (!strcmp(arvg[1], "SIGFPE")) {
            char *str = NULL;
            *str = 42;
        }
    }
    return (0);
}