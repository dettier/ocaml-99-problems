let rec rev=
  List.fold_left (fun acc v -> v :: acc) [];;

rev [1;2;3;4];;
rev [1;2;3];;
rev [];;
