let is_palindrome l =
  let rev = List.rev l in
  l = rev;;

is_palindrome [1;2;3;4];;
is_palindrome [1;2;3;2;1];;
is_palindrome [2];;
is_palindrome [];;
