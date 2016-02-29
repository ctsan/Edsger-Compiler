lexer 0 = 1
lexer x = lexer (x-1) + 9*x

main = putStrLn lexer 10



