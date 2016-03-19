ifdef OS
   EXE=.exe
else
   EXE=
endif

EXENAME=lexer$(EXE)
OCAMLC_FLAGS=-g
OCAMLC=ocamlc

%.cmo: %.ml %.mli
	$(OCAMLC) $(OCAMLC_FLAGS) -c $<

%.cmi: %.mli
	$(OCAMLC) $(OCAMLC_FLAGS) -c $<

%.cmo %.cmi: %.ml
	$(OCAMLC) $(OCAMLC_FLAGS) -c $<

$(EXENAME): Lexer.cmo
	$(OCAMLC) $(OCAMLC_FLAGS) -o $@ $^
	mkdir -p ../bin
	mv $(EXENAME) ../bin/

Lexer.ml: Lexer.mll
	ocamllex -o $@ $<

.PHONY: clean distclean

clean:
	$(RM) Lexer.ml *.cmo *.cmi *~

distclean: clean
	$(RM) $(EXENAME)
