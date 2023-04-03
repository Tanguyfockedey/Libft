# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tafocked <tafocked@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/03 11:23:13 by tafocked          #+#    #+#              #
#    Updated: 2023/04/03 11:51:16 by tafocked         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

FILES	= 
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

clean: rm -f $(OBJ) $(B_OBJ)

fclean: clean
	rm -f $(NAME)

.PHONY: all re bonus clean fclean
