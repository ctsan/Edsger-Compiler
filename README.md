# Edsger Compiler

## How To Compile it
	make 

## How To Test it
	make test  (for standard error printing only) 
	make testf (for full print)
	
*files ending with 'w' are invalid, files ending with 'c' are correct*

## Requirements To Compile
* opam (package manager)
* core (opam install core)
* menhir (opam install menhir) 

## For Developers
* OUnit (opam instal ounit)
* utop (opam install utop)

## Error Codes

* [1] Lexical  Error
* [2] Syntax   Error
* [3] Semantic Error

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

