type 'a binary_tree =
  | Empty
  | Node of 'a * 'a binary_tree * 'a binary_tree;;

(* 4 - (2, 1) (1, 2), 5 - (2, 2) *)

let combine ls rs acc =
  let add_right_nodes acc l =
    List.fold_left (fun acc r -> Node ('x', l, r) :: acc) acc rs in
  List.fold_left add_right_nodes acc ls;;

let rec cbal_tree n =
  if n <= 0 then [Empty] else
  if n mod 2 = 1 then
    let ls = cbal_tree (n / 2) in
    combine ls ls []
  else
    let ls = cbal_tree (n / 2 - 1) in
    let rs = cbal_tree (n / 2) in
    combine ls rs (combine rs ls []);;

cbal_tree 4;;
cbal_tree 40 |> List.length;;
