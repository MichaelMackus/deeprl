# The Deep

A roguelike based on The Underdark from Forgotten Realms.

## Install

First, you'll need to build libtcod.

For autotools (Mac/Linux):

```
git submodule update libtcod
cd libtcod/buildsys/autotools/
autoreconf -i
./configure
make
```

Alternatively, scons also works (Windows/Mac/Linux):

```
git submodule update libtcod
cd libtcod/buildsys/autotools/
scons build
```

*TODO: build application*
