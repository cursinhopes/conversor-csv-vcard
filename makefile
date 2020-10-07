all: main.exe
	main.exe

main.exe: main.o conversor.o contato.o vcard.o csv.o
	g++ -o main.exe obj/main.o obj/conversor.o obj/contato.o obj/vcard.o obj/csv.o

main.o: main.cpp
	g++ -Wall -Wextra -g -std=c++17 -Iinclude -c main.cpp -o obj/main.o

conversor.o: src/conversor.cpp include/conversor.hpp
	g++ -Wall -Wextra -g -std=c++17 -Iinclude -c src/conversor.cpp -o obj/conversor.o

contato.o: src/contato.cpp include/contato.hpp
	g++ -Wall -Wextra -g -std=c++17 -Iinclude -c src/contato.cpp -o obj/contato.o

vcard.o: src/vcard.cpp include/vcard.hpp
	g++ -Wall -Wextra -g -std=c++17 -Iinclude -c src/vcard.cpp -o obj/vcard.o

csv.o: src/csv.cpp include/csv.hpp
	g++ -Wall -Wextra -g -std=c++17 -Iinclude -c src/csv.cpp -o obj/csv.o
