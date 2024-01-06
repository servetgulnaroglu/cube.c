.PHONY: clean run
.SILENT:

cube.o: cube.c
	gcc -o $@ $< -lm

run: cube.o
	./$<

clean:
	rm -rf cube.o

