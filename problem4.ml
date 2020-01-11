let rec length l =
  let rec length_rec l i =
    match l with
    | [] -> i
    | x :: xs -> length_rec xs (i + 1)
  in length_rec l 0;;

length [1;2;3;4];;
length [1;2;3];;
length [];;
