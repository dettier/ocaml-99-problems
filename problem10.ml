(* non-tail recursive *)
(* let encode xs =
  let rec aux c = function
    | [] -> []
    | [a] -> [(c, a)]
    | a :: (b :: _ as t) ->
      if a = b then aux (c + 1) t else (c, a) :: (aux 1 t)
  in
  aux 1 xs *)

(* tail recursive *)
let encode list =
  let rec aux count acc = function
    | [] -> [] (* Can only be reached if original list is empty *)
    | [x] -> (count+1, x) :: acc
    | a :: (b :: _ as t) -> if a = b then aux (count + 1) acc t
                            else aux 0 ((count+1,a) :: acc) t in
  List.rev (aux 0 [] list)

(* encode ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];; *)