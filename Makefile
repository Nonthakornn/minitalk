NAME = minitalk
CC =  cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

SRCS_FILES = client.c server.c

OBJ_FILES = $(SRCS_FILES:.c=.0)

all:		$(NAME)

%.o:		%.c
			$(CC) $(CFLAGS) -Ilibft -Ift_printf -c $? -o $@

libft:
			make -C libft

ft_printf:
			make -C ft_printf

clean:
			make clean -C libft
			make clean -C ft_printf
			${RM} ${OBJ_FILES}

fclean:		clean
			make fclean -C libft
			make fclean -C ft_printf 
			${RM} server client

re:			fclean all

.PHONY:		libft ft_printf
