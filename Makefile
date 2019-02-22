CC        =         gcc

OBJ        =        srcs/strlen.o            \
                srcs/strchr.o

EXEC        =        a.out

LIB_NAME    =        libasm.so

SRC_DIR        =         ./

PROJECT_DIR    =        ./

LIBS_DIR    =        lib/

HEADERS_DIR    =         include/

CFLAGS         =         -Wall -Wextra

all: $(EXEC)

$(EXEC):
		nasm -f elf64 srcs/strlen.S
		nasm -f elf64 srcs/strchr.S
		$(CC) -shared -o $(LIB_NAME) $(OBJ) $(CFLAGS)
		$(CC) -L$(PWD) $(CFLAGS) -g3 -o $(EXEC) srcs/main.c $(SRC_DIR)$(OBJ) -lasm
#    export LD_LIBRARY_PATH=$(PWD) ; export LD_PRELOAD=$(PWD)/$(LIB_NAME) ;\
     ./a.out yoo o

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(EXEC)
	rm -rf $(LIB_NAME)

re: fclean all
