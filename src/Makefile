ifdef OS
   EXE=.exe
else
   EXE=
endif

TEST1=../test/input/lexer1.txt
TEST2=../test/input/lexer2.txt
TEST3=../test/input/lexer3.txt
TEST4=../test/input/lexer4.txt

EXEFOLDER=../bin
EXENAME=lexer$(EXE)
FULLEXE=$(EXEFOLDER)/$(EXENAME)
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

.PHONY: clean distclean test1 test2 test3 test4

clean:
	$(RM) Lexer.ml *.cmo *.cmi *~

distclean: clean
	$(RM) $(EXENAME)

test1: 
	$(FULLEXE) < $(TEST1)
test2: 
	$(FULLEXE) < $(TEST2)
test3: 
	$(FULLEXE) < $(TEST3)
test4: 
	$(FULLEXE) < $(TEST4)

