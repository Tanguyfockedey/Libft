# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tafocked <tafocked@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/03 11:23:13 by tafocked          #+#    #+#              #
#    Updated: 2023/04/05 15:16:35 by tafocked         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

FILES	= ft_isalpha.c \
			ft_isdigit.c \
			ft_isalnum.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_strlen.c \
			ft_memset.c \
			ft_bzero.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_toupper.c \
			ft_tolower.c \
			ft_strchr.c \
			ft_strrchr.c \
			ft_strncmp.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_strnstr.c \
			ft_atoi.c \
			ft_calloc.c \
			ft_strdup.c \
			ft_substr.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_split.c \
			ft_itoa.c \
			ft_strmapi.c \
			ft_striteri.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \

B_FILES	= 

CC		= cc
CFLAGS	= -Wall -Wextra -Werror
OBJ		= $(FILES:.c=.o)
B_OBJ	= $(B_FILES:.c=.o)

all: $(NAME)

re: fclean all

$(NAME): $(OBJ)
	ar -r $(NAME) $(OBJ)

bonus: $(OBJ) $(B_OBJ)
	ar -r $(NAME) $(OBJ) $(B_OBJ)

clean: 
	rm -f $(OBJ) $(B_OBJ)

fclean: clean
	rm -f $(NAME)

.PHONY: all re bonus clean fclean
