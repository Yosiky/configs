DEFAULT_CONFIG_DIR	=	~/.config
TOOL_DIR			=	$(DEFAULT_CONFIG_DIR)/ee-tools

.PHONY: all linux macos

all:
	echo "Type 'make macos' for configure macos"
	echo "Type 'make linux' for configure macos"

ee-tools:
	mkdir -p $(TOOL_DIR)

linux:
	sudo apt update
	sudo apt install zsh
	sudo apt install curl

macos:
	echo "You should have the installed zsh, curl and git"
	echo "Install ohmyzsh"
	@sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	echo "Download zsh-syntax-highlighting"
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/ee-tools/zsh-syntax-highlighting
	echo "Copy git alias"
	@cp eegitconfig $(TOOL_DIR)/.
	echo "Copy zshrc in your profile root"
	@cp zshrc ~/.zshrc
	echo "Copy config for nvim"
	@cp -r nvim $(DEFAULT_CONFIG_DIR)/.



