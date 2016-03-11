FLAGS=--ghc --debug
LEXER=src/lexer.mll
PARSER=src/parser.mly

main: lexer.ml parser.ml
	ocamlc -c src/parser.mli
	ocamlc -c src/lexer.ml
	ocamlc -c src/parser.ml
	ocamlc -c src/calc.ml
	ocamlc -o src/calc src/lexer.cmo src/parser.cmo src/calc.cmo

lexer.ml:
	ocamllex $(LEXER)
parser.ml:
	ocamlyacc $(PARSER)



