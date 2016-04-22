
TEST1=_test/input/parser1.txt
TEST2=_test/input/parser2.txt
TEST3=_test/input/parser3.txt
TEST4=_test/input/parser4.txt

EXENAME=Compiler
EXE_FULL_PATH=./$(EXENAME)

$(EXENAME): Parser.mly Lexer.mll
	ocamlbuild -r -use-menhir -tag thread -use-ocamlfind -quiet -pkg core Compiler.native
	mv $(EXENAME).native $(EXENAME)


.PHONY: clean distclean test1 test2 test3 test4

clean:
	$(RM) *.cmo *.cmi *~ 
	$(RM) Lexer.ml 
	$(RM) Parser.ml Parser.mli
	$(RM) Parser.automaton Parser.conflicts Parser.output
	$(RM) -rf Compiler _build

test1: 
	$(EXE_FULL_PATH) < $(TEST1)
test3: 
	$(EXE_FULL_PATH) < $(TEST3)
test2: 
	$(EXE_FULL_PATH) < $(TEST2)
test4:
	$(EXE_FULL_PATH) < $(TEST4)

