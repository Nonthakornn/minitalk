NAME = libftprintf.a
HEADERS = ft_printf.h
CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

SRCS_FILES = ft_print_char.c ft_print_str.c ft_print_int.c \
			ft_print_percent.c  ft_print_unsigned_int.c ft_print_hex.c \
			ft_print_ptr.c ft_printf.c


OBJ_FILES = $(SRCS_FILES:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJ_FILES)
			$(AR) $(NAME) $(OBJ_FILES)

%.o:		%.c
			$(CC) $(CFLAGS) -c $< -o $@

clean:		
			$(RM) $(OBJ_FILES)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re