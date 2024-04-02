let () =
  let data = Sys.argv.(1) in
  In_channel.with_open_bin data (fun -> data
  let _ = Lexer1.main (Lexing.from_channel data) in
  ()
)
