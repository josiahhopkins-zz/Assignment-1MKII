#compiler
CC=gcc -std=c99
#linker
LD=gcc
#include file directory
CFLAGS=-I.

#linker rule
testSort: main.o insertionSort.o bubble.o quicksort.o
#	gcc -o testSort main.o insertionSort.o bubble.o quicksort.o
	$(LD) -o testSort main.o insertionSort.o bubble.o quicksort.o
	
#compiler rules
main.o: main.c
#gcc -c -I. main.c
	$(CC) -c $(CFLAGS) main.c	
	 
insertionSort.o:
bubble.o: 
quicksort.o: 

#clean up procedure		
clean:
	rm *.o

