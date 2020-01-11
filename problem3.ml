let rec at i l =
  match l with
  | [] -> None
  | x :: xs ->
    if i > 1 then at (i - 1) xs
    else Some x;;

at 2 [1;2;3];;
at 1 [1;2;3];;
at 1 [];;
