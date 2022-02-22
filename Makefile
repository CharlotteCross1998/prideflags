CXX ?= gcc

.PHONY: all prideflag clean

all: prideflag

prideflag: main.cpp
	$(CXX) main.cpp -o prideflag -std=c++11 -lstdc++ -Wpedantic -Wall -Wextra -Werror -O3

install: prideflag
	sudo cp prideflag /usr/local/bin/prideflag

uninstall:
	sudo rm -f /usr/local/bin/prideflag

clean:
	rm -f prideflag
