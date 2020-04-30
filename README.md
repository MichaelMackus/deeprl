# The Deep

A roguelike based on The Underdark from Forgotten Realms.

## Dependencies

The application requires [SDL2](https://www.libsdl.org) and libtcod.

Compiling libtcod with autotools (recommended for Mac/Linux):

```
git submodule update libtcod
cd libtcod/buildsys/autotools/
autoreconf -i
./configure
make
sudo make install
```

Alternatively, scons should also work (Windows/Mac/Linux):

```
git submodule update libtcod
cd libtcod/buildsys/scons/
scons build
```

See the README.md file in the relevant buildsys subdirectory for
dependency information.

## Compiling

The default Makefile uses pkg-config to find the library and include files.
Alternatively, you can edit line 3 and 4 of the Makefile to point to the proper
locations. For example:

```
CCFLAGS = -lSDL2 -lm -ldl -ltcod
INCLUDE = -I/usr/include/SDL2 -I/usr/local/include/libtcod
```

Assuming the dependencies are installed and the Makefile is properly
configured, you should be able to just:

```
make
```

And run the application:

```
./deep
```
