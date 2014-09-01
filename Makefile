# A quick and dirty Makefile for building OpenSMO via Mono's xbuild
XBUILD = xbuild

all: debug release

debug:
	$(XBUILD)
# copy configuration file and scripts to bin/Debug/
	cp Config.ini bin/Debug/
	mkdir bin/Debug/Scripts/
	cp Scripts/* bin/Debug/Scripts/

release:
	$(XBUILD) /p:Configuration=Release
# copy configuration file and scripts to bin/Release/
	cp Config.ini bin/Release/
	mkdir bin/Release/Scripts/
	cp Scripts/* bin/Release/Scripts/

phony: clean

clean:
	rm -rf bin/
	rm -rf obj/
