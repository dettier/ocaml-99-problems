(* let compress xs =
  let rec aux a = function
    | [] -> []
    | h :: t -> match a with
      | None -> h :: aux (Some h) t
      | Some b -> if b = h then aux a t else h :: (aux (Some h) t)
  in aux None xs;; *)

let rec compress = function
  | a :: (b :: _ as t) -> if a = b then compress t else a :: compress t
  | smaller -> smaller;;

compress ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"];;