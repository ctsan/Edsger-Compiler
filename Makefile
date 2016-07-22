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

TEST_LW  := $(wildcard $(TESTINPUT)lexer*w.txt)
TEST_PW  := $(wildcard $(TESTINPUT)parser*w.txt)
TEST_PC  := $(wildcard $(TESTINPUT)parser*c.txt)
TEST_SW  := $(wildcard $(TESTINPUT)semantic*w.txt)
TEST_SC  := $(wildcard $(TESTINPUT)semantic*c.txt)

#####################################################################
#| Refer to the following link for more info about ocamlbuild
#| https://github.com/ocaml/ocamlbuild/blob/master/manual/manual.adoc
#####################################################################

$(EXENAME): Parser.mly Lexer.mll $(wildcard *.ml) $(wildcard *.mli)
	ocamlbuild $(FLAGS) $(PACKAGES) $(EXENAME).native
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

TESTING_COMMAND = bash ./_test/Test.sh

test: Compiler  # Test for errors
	@printf "LEXER:\n"
	@$(TESTING_COMMAND) $(EXE_FULL_PATH) 1 -eq $(TEST_LW) #LEXER
	@printf "PARSER:\n"
	@$(TESTING_COMMAND) $(EXE_FULL_PATH) 2 -eq $(TEST_PW) #PARSER
	@$(TESTING_COMMAND) $(EXE_FULL_PATH) 2 -lt $(TEST_PC)
	@printf "SEMANTIC:\n"
	@$(TESTING_COMMAND) $(EXE_FULL_PATH) 3 -eq $(TEST_SW)
	@$(TESTING_COMMAND) $(EXE_FULL_PATH) 0 -eq $(TEST_SC)


#####################################################################
#-----|                        THE END                        #-----|
#####################################################################
