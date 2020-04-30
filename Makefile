PROGRAM = deep
OBJS = main.o
CCFLAGS = -lSDL2 -lm -ldl `pkg-config libtcod --libs`
INCLUDE = `pkg-config libtcod --cflags`

simplerl: $(OBJS)
	gcc -o $(PROGRAM) $(CCFLAGS) $(INCLUDE) $(OBJS)

%.o: %.c
	gcc -c $(INCLUDE) $<

clean:
	rm *.o
	rm $(PROGRAM)
