let drop list n =
  let rec aux d n acc = function
    | [] -> acc
    | h :: t ->
      if d <= 0 then aux (n - 1) n acc t
      else aux (d - 1) n (h :: acc) t in
  List.rev (aux (n - 1) n [] list);; 

drop ["a";"b";"c";"d";"e";"f";"g";"h";"i";"j"] 3;;