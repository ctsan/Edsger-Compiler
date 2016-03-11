.PHONY: clean
LEXER=lexer
PARSER=parser
EXE=calc

main: lexer parser 
	ocamlc -c $(PARSER).mli
	ocamlc -c $(LEXER).ml
	ocamlc -c $(PARSER).ml
	ocamlc -c ${EXE}.ml
	ocamlc -o $(EXE) $(LEXER).cmo $(PARSER).cmo $(EXE).cmo
	mkdir -p bin
	mv ${EXE} bin/
	rm *.cmi *.mli *.cmo $(LEXER).ml $(PARSER).ml

lexer:
	ocamllex $(LEXER).mll

parser:
	ocamlyacc $(PARSER).mly

clean: 
	rm *.cmi *.mli *.cmo $(LEXER).ml $(PARSER).ml

