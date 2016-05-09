# Edsger

## How To Compile it
	make 

## How To Test it
	make test1 (CORRECT)
	make test2 (INCORRECT)
	make test3 (CORRECT)
	make test4 (CORRECT)

## Requirements To Run
* opam (package manager)
* utop (opam install utop)
* core (opam install core)
* menhir (opam install menhir) 

## Requirements to Develop
* OUnit (opam instal ounit )

## Useful Links

* [Lexing/Parsing](http://caml.inria.fr/pub/docs/manual-ocaml-4.00/manual026.html)

* [More about Lexing/Parsing](https://realworldocaml.org/v1/en/html/parsing-with-ocamllex-and-menhir.html)

* [Unit Testing](http://ounit.forge.ocamlcore.org/api-ounit/)

## Instructions for Developers

### Semantic analysis

1. all used IDs are declared
2. declared only once in each scope
3. operators used with right operands
4. functions used with right number and type of args
5. control-flow checks

### Symbol Table 

Identifiers are associated with information related to its declaration
or appearance in the source (location,type,scope).

#### Operations
* add name
* search name (important part)
* delete name(s)

#### Information Contained

* Name of Program
* Of Variables

* Of Functions, their arguments, the number of arguments, the returned type
  (for semantic analsis), byref or not arguments

* Scope (import or remove a variable)
* Visibility
* Position of Variable in Mem/Register
* Of labels
