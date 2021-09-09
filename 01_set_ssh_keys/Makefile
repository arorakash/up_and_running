read:
	cat Makefile

install_xclip:
	sudo apt install xclip -y

generate_ssh_keypair:
	ssh-keygen -t rsa -b 4096 -C "akash.arora73elearn@gmail.com"

start_ssh_agent:
	eval "$(ssh-agent -s)"

add_private_key_to_ssh_agent:
	ssh-add ~/.ssh/id_rsa

copy_public_key_to_clipboard:
	cat ~/.ssh/id_rsa.pub | xclip -selection clipboard

paste_public_key_to_terminal: copy_public_key_to_clipboard
	xclip -o -selection clipboard
