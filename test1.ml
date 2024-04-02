let () =
  Lexing_test.test Lexer_default.token Sys.argv.(1)
