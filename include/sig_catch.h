/*
** EPITECH PROJECT, 2021
** Code_Sig_Catch
** File description:
** sig_catch
*/

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>

#ifndef SIG_CATCH_H_
#define SIG_CATCH_H_

void sig_catch(int sig);
void execve_binary(char *arg, char **env);

#endif /* !SIG_CATCH_H_ */
