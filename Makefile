#####################################################################
#-----|                  Edsger Makefile                      #-----|
#-----|                                                       #-----|
#####################################################################


#####################################################################
#| Compiler Specific Variables
#####################################################################

EXENAME       = Compiler
EXE_FULL_PATH = ./$(EXENAME)
FLAGS         = -r -use-menhir -tag 'debug,thread' -use-ocamlfind -quiet
PACKAGES      = -pkgs 'core'

#####################################################################
#| Testing Variables
#####################################################################

TESTINPUT  = _test/input/
TESTLIST  := $(wildcard $(TESTINPUT)*.txt)

#####################################################################
#| Refer to the following link for more info about ocamlbuild
#| https://github.com/ocaml/ocamlbuild/blob/master/manual/manual.adoc
#####################################################################

$(EXENAME): Parser.mly Lexer.mll Compiler.ml
	ocamlbuild $(FLAGS) $(PACKAGES) Compiler.native
	mv $(EXENAME).native $(EXENAME)

#####################################################################
#######| Helping Targets 
#####################################################################

.PHONY: clean test ftest

clean:
	$(RM) *.cmo *.cmi *~ 
	$(RM) Lexer.ml 
	$(RM) Parser.ml Parser.mli
	$(RM) Parser.automaton Parser.conflicts Parser.output
	$(RM) -rf Compiler _build

#####################################################################
#######| Testing Targets 
#####################################################################

COMMAND = echo $(TESTLIST) | xargs -t -n 1 $(EXE_FULL_PATH) $(TEST) 
test: Compiler
	$(COMMAND) 1>/dev/null
ftest: Compiler
	$(COMMAND)

#####################################################################
#-----|                        THE END                        #-----|
#####################################################################
