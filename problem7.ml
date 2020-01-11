type 'a node =
  | One of 'a 
  | Many of 'a node list;;

(* let rec flatten (xs: 'a node list) =
  let rec flatten_rec (x: 'a node) (st: 'a node list) =
    match x with
    | One x -> (
      match st with
      | [] -> [x]
      | _ -> x :: flatten st
    )
    | Many xs -> (
      match xs with
      | [] -> flatten st
      | [h] -> flatten_rec h st
      | h :: t -> flatten_rec h ((Many t)::st)
    )
  in
  match xs with
  | [] -> []
  | x :: xs -> flatten_rec x xs;; *)

let rec flatten (xs: 'a node list) =
  match xs with
  | [] -> []
  | x :: xs ->
    match x with
    | One x -> x :: flatten xs
    | Many els ->
      match els with
      | [] -> flatten xs
      | [x] -> flatten (x::xs)
      | h :: t -> flatten (h::(Many t)::xs);;

flatten [ One "a"];;
flatten [ One "a" ; Many [ One "b" ; Many [ One "c" ; One "d" ] ; One "e" ] ];;