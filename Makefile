# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akaseris <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/12/03 20:56:20 by akaseris          #+#    #+#              #
#    Updated: 2017/12/20 12:49:24 by jszabo           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

SRC = main ft_source ft_check_piece ft_check_pieces ft_convert_blocks \
		ft_create_grid ft_move_upleft ft_convert_list ft_add_lst \
		ft_putblock ft_solve ft_erase_block ft_solve_opt

SRC_C = $(patsubst %,%.c,$(SRC))

SRC_O = $(patsubst %,%.o,$(SRC))

FLAGS = -Wall -Wextra -Werror

.PHONY : all clean fclean re

all: $(NAME)

$(SRC_O):
	@gcc $(FLAGS) -c $(SRC_C)

$(NAME): $(SRC_O)
	@gcc -o $(NAME) $(SRC_O) -Llibft -lft

clean:
	@/bin/rm -f $(SRC_O)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
