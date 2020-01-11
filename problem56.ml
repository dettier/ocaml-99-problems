type 'a binary_tree =
  | Empty
  | Node of 'a * 'a binary_tree * 'a binary_tree;;

let rec is_mirror a b =
  match a, b with
  | Empty, Empty -> true
  | Empty, _ -> false
  | _, Empty -> false
  | Node (av, al, ar), Node (bv, bl, br) ->
    av = bv && is_mirror al br && is_mirror ar bl

let is_symmetric = function
  | Empty -> true
  | Node (v, l, r) -> is_mirror l r