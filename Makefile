LIBSRC=0D/odin/std
ODIN_FLAGS ?= -debug -o:none
D2J=0d/das2json/das2json

run: abc transpile.drawio.json
	./abc0d main abc.drawio $(LIBSRC)/transpile.drawio

abc: abc.drawio.json
	odin build . $(ODIN_FLAGS)

abc.drawio.json: abc.drawio transpile.drawio.json
	$(D2J) abc.drawio

transpile.drawio.json: $(LIBSRC)/transpile.drawio
	$(D2J) $(LIBSRC)/transpile.drawio

clean:
	rm -rf abc abc.dSYM
