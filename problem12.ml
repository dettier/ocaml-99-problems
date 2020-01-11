type 'a rle =
  | One of 'a
  | Many of int * 'a;;

(* let decode xs =
  let rec aux c v acc xs =
    if c > 0 then aux (c - 1) v (v :: acc) xs else
    match xs with
    | [] -> acc
    | (Many (c, v)) :: t -> aux c v acc t
    | (One v) :: t -> aux 1 v acc t
  in
  match xs with
  | [] -> []
  | (Many (c, v)) :: t -> aux c v [] t
  | (One v) :: t -> aux 1 v [] t;; *)

let decode xs =
  let rec many c v acc =
    if c > 0 then many (c - 1) v (v :: acc) else acc in
  let rec aux acc = function
    | [] -> acc
    | (One v) :: t -> aux (v :: acc) t
    | (Many (c, v)) :: t -> aux (many c v acc) t in
  List.rev (aux [] xs);;

decode [Many (4,"a"); One "b"; Many (2,"c"); Many (2,"a"); One "d"; Many (4,"e")];;