LIBSRC=0D/odin/std
ODIN_FLAGS ?= -debug -o:none
D2J=0d/das2json/das2json

run: abc0d transpile.drawio.json
	./abc0d test.abc main abc0d.drawio $(LIBSRC)/transpile.drawio

abc0d: abc0d.drawio.json
	odin build . $(ODIN_FLAGS)

abc0d.drawio.json: abc0d.drawio transpile.drawio.json
	$(D2J) abc0d.drawio

transpile.drawio.json: $(LIBSRC)/transpile.drawio
	$(D2J) $(LIBSRC)/transpile.drawio

clean:
	rm -rf abc0d abc0d.dSYM *~ *.json

