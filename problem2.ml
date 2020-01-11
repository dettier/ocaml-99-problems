let rec last_two = function
  | [] | [_] -> None
  | [x;y] -> Some (x, y)
  | _::xs -> last_two xs;;

last_two [1;2;3];;
last_two [];;
