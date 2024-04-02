let () =
  Lexing_test.test Lexer_specialized.token Sys.argv.(1)
