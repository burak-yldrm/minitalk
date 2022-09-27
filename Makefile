NAME = utils.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

Color_yellow = \033[33m
Color_blue = \033[34m
Color_red = \033[31m

$(NAME): all 

all: yo server client

server: server.c
	$(CC) $(CFLAGS) -o server server.c ./utils/*.c ./utils/ft_printf/*.c

client: client.c 
	$(CC) $(CFLAGS) -o client client.c ./utils/*.c ./utils/ft_printf/*.c

bonus: yo server_bonus.c client_bonus.c
	$(CC) $(CFLAGS) -o server server_bonus.c ./utils/*.c ./utils/ft_printf/*.c
	$(CC) $(CFLAGS) -o client client_bonus.c ./utils/*.c ./utils/ft_printf/*.c

clean:
	rm -rf client
	rm -rf server

fclean: clean

re: fclean all

yo:
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢹⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠞⠁⠀⢸⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⠤⠤⠤⢤⣤⣠⠔⠁⠀⠀⢀⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⣴⣶⣶⣶⡖⠒⠒⠒⠒⠶⠦⠤⢤⣴⠚⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡄⣠⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠤⣄⠙⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠻⠦⣄⣀⠀⠀⠀⠀⣰⡋⣻⣦⠀⠀⠀⠀⠀⠀⢿⣦⣿⡇⠘⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⠁⠀⠀⠹⢿⣿⠟⠀⠀⠀⢶⣴⠀⠈⠉⠉⠀⠀⣿⣄⣰⠤⢤⡀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀$(Color_red)⡠⠤⢄⡀$(Color_yellow)⠀⣀⠀⠀⢀⣤⣀⣀⠤⠀$(Color_red)⠀⢸⠀⢹⡃$(Color_yellow)⠀⠀⡏⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡼⠦⣄⣇⠀$(Color_red)⢸⠀⠀⠀⢱$(Color_yellow)⠀⠀⠑⢞⠉⠉⢻⠃⠀⠀$(Color_red)⠀⠈⢦⡾$(Color_yellow)⠀⠀⣸⠃⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣏⠀⠀⠈⠙⢦$(Color_red) ⠳⠤⠴⠋$(Color_yellow)⠀⠀⠀⠈⠓⠖⠃⠀⠀⠀⠀⣠⡞⠁⠀⢀⡏⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣆⠀⠀⠀⠀⠙⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠖⠁⠀⠀⠀⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_blue)⣾⠛⠒⠒⠶⠤⠤⠤⠤⠤⠤⠤$(Color_yellow)⠼⣆⠀⠀⠀⠀⠀⠙⠀⠀⠀⠀⠀⠒⠒⠒⠊⠀⠀⠀⠀⠀⠀⠀⣰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_blue)⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀$(Color_yellow)⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣤⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_blue)⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠏$(Color_yellow)⠈⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_blue)⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠎⢀⣶$(Color_yellow)⠀⡟⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_blue)⢸⣄⣀⣀⣤⠤⠒⢻⠀⠀⢐⡿⠞⢁⡏⣠$(Color_yellow)⡇⠀⣀⣄⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_blue)⠈⠉⠀⠀⠀⠀⠀⢸⠀⠀⢀⣠⠀⣸⡟⢻$(Color_yellow)⡇⢠⡿⠟⠙⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_blue)⠀⠀⠀⠀⠀⠀⠀⢸⣠⠴⠋⢹⠀⣨⡇⠛$(Color_yellow)⣇⠋⢧⠀⠀⢳⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_blue)⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⢸⡼⢻⣷⠞$(Color_yellow)⢻⣄⠘⡄⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_blue)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠁⠀⠀$(Color_yellow)⠙⢦⣙⣄⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠓⠒⠒⠛⠉⠉⠑⢲⡤⠀⣄⡠⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢣⠀⠀⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⣀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_yellow)⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
	@echo "$(Color_red)██████╗ ██╗██╗  ██╗ █████╗  ██████╗██╗  ██╗██╗   ██╗"
	@echo "$(Color_red)██╔══██╗██║██║ ██╔╝██╔══██╗██╔════╝██║  ██║██║   ██║"
	@echo "$(Color_red)██████╔╝██║█████╔╝ ███████║██║     ███████║██║   ██║"
	@echo "$(Color_red)██╔═══╝ ██║██╔═██╗ ██╔══██║██║     ██╔══██║██║   ██║"
	@echo "$(Color_red)██║     ██║██║  ██╗██║  ██║╚██████╗██║  ██║╚██████╔╝"
	@echo "$(Color_red)╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝B̷u̷r̷a̷k̷ ̷Y̷I̷L̷D̷I̷R̷I̷M̷"

.PHONY: all clean fclean re yo
