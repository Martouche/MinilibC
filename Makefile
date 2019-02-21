NASM	=	nasm -f elf64

CC 	=	gcc -o

RM      =       rm -f

NAME	=	asm

all:
	$(NASM) srcs/strlen.S
	$(NASM) srcs/strchr.S
	$(CC) srcs/main.c
	gcc -g3 -o $(NAME) srcs/*.o

clean:
	$(RM) srcs/*.o

fclean: clean
	$(RM) $(NAME)

re:     fclean all

.PHONY:         clean fclean all re
