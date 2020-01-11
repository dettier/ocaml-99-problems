let pack xs =
  let rec aux cur_acc acc = function
    | [] -> cur_acc :: acc
    | h :: t -> match cur_acc with
      | [] -> aux [h] acc t
      | ac :: at -> if ac = h then aux (h :: cur_acc) acc t else aux [h] (cur_acc :: acc) t
  in List.rev (aux [] [] xs);;

pack ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"d";"e";"e";"e";"e"];;
