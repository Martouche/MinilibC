NAME=		libasm.so

SRC=	srcs/strlen.S\
		srcs/strchr.S\
		srcs/memset.S\
		srcs/memcpy.S\
		srcs/strcmp.S\
		srcs/memmove.S\
		srcs/strncmp.S\
		srcs/strcasecmp.S\
		srcs/strstr.S

ASMFLAGS=   -f elf64

LDFLAGS=    -shared

ASM=        nasm

LD=         ld

RM=         rm -f

OBJ=        $(SRC:.S=.o)

%.o: %.S
			$(ASM) -o $@ $< $(ASMFLAGS)

all:        $(NAME)

$(NAME):    $(OBJ)
			$(LD) $(LDFLAGS) -o $(NAME) $(OBJ)

clean:
			$(RM) $(OBJ)

fclean:		clean
			$(RM) $(NAME)

re:		fclean all
