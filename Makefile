
INCLUDE := -I./src
CFLAGS := -Wall -Werror -pedantic

run: ./build/moler
	./build/moler
	rm -rf ./*.o

./build/moler: ./*.o
	gcc ./*.o -o ./build/moler $(INCLUDE) $(CFLAGS)

./*.o: ./build/
	gcc -c ./src/*.c $(INCLUDE) $(CFLAGS)

./build/:
	mkdir -p ./build

PHONY: clean
clean:
	rm -rf ./*.o && rm -rf build
