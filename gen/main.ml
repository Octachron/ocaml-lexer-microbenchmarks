module String_set = Set.Make(String)
let size = 100

let name_ascii () =
  String.init size (fun _ ->
      if Random.bool () then
        Char.chr (Char.code 'a' + Random.int 26)
      else
        Char.chr (Char.code 'A' + Random.int 26)
    )

let rec new_binding set =
 let candidate = name_ascii () in
  if String_set.mem candidate set then
    new_binding set
  else
    candidate, String_set.add candidate set

let rec gen set n =
  if n = 0 then ()
  else
    let name, set = new_binding set in
    Format.printf "let _%s = 0@." name;
    gen set (n-1)

let () = gen String_set.empty 10_000
