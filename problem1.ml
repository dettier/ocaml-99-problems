(*
Write a function last : 'a list -> 'a option
that returns the last element of a list.
*)

let rec last = function
  | [] -> None
  | [x] -> Some x
  | _::xs -> last xs;;

let last2 =
  List.fold_left (fun _ v -> Some v) None;;

last [1;2;3];;
last [];;

last2 [1;2;3];;
last2 [];;
