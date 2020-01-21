(* 
Determine whether a given integer number is prime.
*)

let is_prime n =
  let n = abs n in
  let rec aux i =
    if i * i > n then true
    else if n mod i == 0 then false else aux (i + 1)
  in
  n > 1 && aux 2;;

assert (is_prime 1 = false);;
assert (is_prime 7 = true);;
assert (is_prime (-7) = true);;
assert (is_prime 12 = false);;
assert (is_prime (-12) = false);;
assert (is_prime 531 = false);;
