let replicate xs c =
  let rec many c acc v =
    if c > 0 then v :: (many (c - 1) acc v) else acc in
  List.fold_left (many c) [] (List.rev xs);;

replicate ["a";"b";"c"] 3;;