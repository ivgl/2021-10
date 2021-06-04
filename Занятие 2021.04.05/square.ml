(* кол-во разбиений прямоуггольника *)

(* первые 2 цифры задают размер *)

let rec f m n a b l k =
if a < m then f m n (a+1) b (l+(m-a)) k
else if b < n then f m n a (b+1) l (k+(n-b))
else print_int (l*k);;
f 2 2 0 0 0 0;;
