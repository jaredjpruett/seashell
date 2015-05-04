CC = gcc
CFLAGS = -Wall -g
SRC = src
PROGS = $(SRC)/mycat $(SRC)/myls $(SRC)/mycp $(SRC)/seashell

all: $(PROGS) 
	
$(PROGS) : %: %.c
	$(CC) $(CFLAGS) -o $@ $^
clean:
	rm -rf $(PROGS)
