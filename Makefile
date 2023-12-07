CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c2x -pedantic -O3 -DGIT_SHA=\"$(shell git rev-parse HEAD)\"
DEPS = m4f.c
OBJ = m4f.o
EXEC = m4f

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

$(OBJ): $(DEPS)
	$(CC) -c -o $@ $^ $(CFLAGS)

clean:
	rm -f $(OBJ) $(EXEC)