CFLAGS= -Wall -Wextra -Werror
CC=gcc



build-local:
	mkdir bin
	$(CC) $(CFLAGS) -o bin/hotC src/main.c
	cp hot.sh bin/hot.sh

run:
	./bin/hotC test.c

both: build-local run

path-bash: build-local
	echo "export PATH=${PWD}/bin:${PATH}" >> ~/.bashrc

path-fish: build-local
	echo "export PATH=${PWD}/bin:${PATH}" >> ~/.fishrc

path-zsh: build-local
	echo "export PATH=${PWD}/bin:${PATH}" >> ~/.zshrc
	
install-sys: build-local
	cp ./bin/hotC /usr/bin/hotC
	cp ./hot.sh /usr/bin/hot.sh
