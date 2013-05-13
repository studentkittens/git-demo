all: test_is_odd.o main.o

test_is_odd:  $(OBJECTS)
		 @$(CC) $(OBJECTS) -o $@ $(LDFLAGS) 

main.o: is_odd.o
		$(CC) is_odd.o src/main.c -o main

test_is_odd.o: is_odd.o
		$(CC) -std=c99 is_odd.o test/test_is_odd.c -o test_is_odd

is_odd.o:
		$(CC) -c src/is_odd.c -o is_odd.o

test: test_is_odd.o
		@echo "Executing tests:"
		./test_is_odd

clean:
	rm *.o
