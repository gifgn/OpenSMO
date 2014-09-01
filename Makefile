# A quick and dirty Makefile for building OpenSMO via Mono's xbuild
XBUILD = xbuild

all: debug release

debug:
	$(XBUILD) src/StepServer.sln /p:Configuration=Debug
# copy configuration file and scripts to bin/Debug/
	cp Config.ini bin/Debug/
	mkdir -p bin/Debug/Scripts/
	cp Scripts/* bin/Debug/Scripts/

release:
	$(XBUILD) src/StepServer.sln /p:Configuration=Release
# copy configuration file and scripts to bin/Release/
	cp Config.ini bin/Release/
	mkdir -p bin/Release/Scripts/
	cp Scripts/* bin/Release/Scripts/

phony: clean

clean:
	rm -rf bin/
	rm -rf obj/
