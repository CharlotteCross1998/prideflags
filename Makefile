CXX ?= gcc

.PHONY: all prideflag clean

all: prideflag

prideflag: main.cpp
	$(CXX) main.cpp -o prideflag -std=c++11 -lstdc++ -Wpedantic -Wall -Wextra -Werror -O3

install: prideflag
	cp prideflag /usr/local/bin/prideflag

uninstall:
	rm -f /usr/local/bin/prideflag

clean:
	rm -f prideflag
