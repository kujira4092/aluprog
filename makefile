CC = gcc
CFLAGS = -O2 -g -Wall -I/usr/include
CXX = g++
CXXFLAGS = -O2 -g -Wall -I/usr/include

LFLAGS = -L/usr/lib
DESTS = /usr/bin
LIB = -lm -lpng -lz
OBJS = main.o

PROGRAM = elena

all:	$(PROGRAM)

$(PROGRAM):	$(OBJS)
	$(CXX) $(OBJS) $(LFLAGS) $(LIB) -o $(PROGRAM)

main.o:	src/main.cpp
	g++ -c src/main.cpp

clean:;	rm -f *.o *~ $(PROGRAM)

install:	$(PROGRAM)
		install -s $(PROGRAM) $(DESTS)
