(* 
Count the leaves of a binary tree. (easy)
*)

type 'a binary_tree =
  | Empty
  | Node of 'a * 'a binary_tree * 'a binary_tree;;

let example_tree =
  Node('a', Node('b', Node('d', Empty, Empty), Node('e', Empty, Empty)),
       Node('c', Empty, Node('f', Node('g', Empty, Empty), Empty)));;

let rec count_leaves = function
  | Empty -> 0
  | Node (_, Empty, Empty) -> 1
  | Node (_, l, r) -> (count_leaves l) + (count_leaves r);;

assert (count_leaves Empty = 0);;
assert (count_leaves example_tree = 3);;
