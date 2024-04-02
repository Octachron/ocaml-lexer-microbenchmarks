let () =
  Lexing_test.test Lexer_unicode_merged.token Sys.argv.(1)
