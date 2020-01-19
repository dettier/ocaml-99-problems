(* 
22. Create a list containing all integers within a given range. (easy)
If first argument is greater than second, produce a list in decreasing order.
 *)

let range f t =
  let rec aux acc i step stop =
    if i = stop then i :: acc
    else aux (i :: acc) (i + step) step stop
  in 
  if t > f
  then aux [] t (-1) f
  else aux [] t 1 f;;

assert (compare (range 4 9) [4; 5; 6; 7; 8; 9] = 0);;
assert (compare (range 9 4) [9; 8; 7; 6; 5; 4] = 0);;
