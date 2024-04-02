let test lexer data =
  In_channel.with_open_bin data (fun data ->
  let lexbuf = Lexing.from_channel data in
  let rec loop n =
    match lexer lexbuf with
    | Parser.EOF | exception _ -> Format.printf "%d token lexed@." n
    | _ -> loop (n+1)
  in
  loop 0
    )
