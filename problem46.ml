type bool_expr =
  | Var of string
  | Not of bool_expr
  | And of bool_expr * bool_expr
  | Or of bool_expr * bool_expr;;

let rec calc a_str a b = function
  | Var v -> if v = a_str then a else b
  | Not e -> not (calc a_str a b e)
  | And (v1, v2) -> (calc a_str a b v1) && (calc a_str a b v2)
  | Or (v1, v2) -> (calc a_str a b v1) || (calc a_str a b v2);;

let table2 a b expr =
  let aux av bv =
    (av, bv, calc a av bv expr) in
  [aux true true, aux true false, aux false true, aux false false];;

table2 "a" "b" (And(Var "a", Or(Var "a", Var "b")));;