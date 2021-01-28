##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## my make file
##

NAME	=	binary

NAME_TEST	=	test

SRCS	= 	./src/main.c \
			./src/sig_catch.c \

SRCS_TEST	= 	./src/main_test.c \

OBJS	=	$(SRCS:.c=.o)

OBJS_TEST	=	$(SRCS_TEST:.c=.o)

NBR_OF_FILES := $(words $(SRCS))

NBR_OF_FILES_TEST := $(words $(SRCS_TEST))

CC = gcc

RM	=	rm -f

CFLAGS += -I ./include/
CFLAGS += -W -Wall -Wextra

all: $(NAME) $(NAME_TEST)

$(NAME_TEST): $(OBJS_TEST)
		@ echo "\033[1;36m[ FILES COMPILED ] \033[0m \033[1;34m$(NBR_OF_FILES)\033[0m"
		@ $(CC) -o $(NAME_TEST) $(OBJS_TEST) $(CFLAGS)
		@ echo "\033[1;34mBinary : \033[1;32m$(NAME_TEST)\033[1;34m created sucesfully.\033[0m"

$(NAME): $(OBJS)
		@ echo "\033[1;36m[ FILES COMPILED ] \033[0m \033[1;34m$(NBR_OF_FILES)\033[0m"
		@ $(CC) -o $(NAME) $(OBJS) $(CFLAGS)
		@ echo "\033[1;34mBinary : \033[1;32m$(NAME)\033[1;34m created sucesfully.\033[0m"

clean:
		@ echo "\033[3;31mRemoving: \033[0m"
		@ echo "\033[3;31m$(OBJS)\033[0m" | tr ' ' '\n'
		@ echo "\033[3;31m$(OBJS_TEST)\033[0m" | tr ' ' '\n'
		@ $(RM) $(OBJS)
		@ $(RM) $(OBJS_TEST)

fclean:	clean
		@ echo "\033[3;31m./$(NAME)\033[0m"
		@ echo "\033[3;31m./$(NAME_TEST)\033[0m"
		@ $(RM) $(NAME)
		@ $(RM) $(NAME_TEST)

re: 	fclean all

%.o:	%.c
		@ echo "\033[1;34m[ OK ]\033[0m Compiling" $<
		@ $(CC) -o $@ -c $< $(CFLAGS)

.PHONY: all clean fclean re