open Lexing
type t =
  { loc_start: position; loc_end: position; loc_ghost: bool }


let ghost_loc_in_file name =
  let pos = { Lexing.dummy_pos with pos_fname = name } in
  { loc_start = pos; loc_end = pos; loc_ghost = true }

let in_file = ghost_loc_in_file

let none = in_file "_none_"
let is_none l = (l = none)

let curr lexbuf = {
  loc_start = lexbuf.lex_start_p;
  loc_end = lexbuf.lex_curr_p;
  loc_ghost = false
}

let errorf ?loc:(_loc = none) ?sub:(_sub = []) fmt =
  Format.kdprintf (fun pr -> Format.printf "%t@." pr; exit 1) fmt

let msg ?loc:(_loc = none) fmt =
  Format.kdprintf (fun txt -> Format.printf "%t@." txt) fmt

let error ?(loc = none) ?(sub = []) msg_str =
  errorf ~loc ~sub "%s" msg_str

let register_error_of_exn _ = ()
let prerr_warning _ _ = ()

let deprecated _ _ = ()
