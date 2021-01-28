/*
** EPITECH PROJECT, 2021
** Code_Sig_Catch
** File description:
** main
*/

#include "sig_catch.h"

void execve_binary(char *arg, char **env)
{
    int pid = fork();
    int sig = 0;

    if (pid == -1) {
        exit(84);
    }
    if (pid == 0) {
        execve("./test", (char *[]){"./test", arg, NULL}, env);
        exit(0);
    } else {
        waitpid(pid, &sig, 0);
        sig_catch(sig);
        if (sig == 0) {
            printf("Le programme s'est bien executé\n");
        }
    }
}

int main(int argc, char **arvg, char **env)
{
    (void) argc;
    (void) arvg;
    execve_binary("SIGSEGV", env);
    execve_binary("SIGFPE", env);
    execve_binary("NONE", env);
    return (0);
}