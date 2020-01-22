(* 
Generate a random permutation of the elements of a list.
*)

let rec insert l v i =
  if i = 0 then v :: l
  else
    match l with
    | [] -> []
    | x :: xs -> x :: insert xs v (i - 1);;

let rec permutation = function
  | [] -> []
  | (x :: []) as l -> l
  | (x :: xs) as l ->
    let idx = Random.int (List.length l) in
    let perm = permutation xs in
    insert perm x idx;;

permutation [1;2;3;4;5];;