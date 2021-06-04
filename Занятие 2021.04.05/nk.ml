(*- кол-во посл 0 и 1, где нет идущих подряд двух 1*)

(*видимо где-то ошибся с рекурсиями, работает нормально только при малых числах, однако найти ошибку не могу.*)

let rec g m n k =
if (n-m) > 0 then g m (n-1) (k+n) else k+n;;

let rec c m n x k =
if g m n 0 > k then c m (n-1) x k else
if g m n 0 = k then 1 else
if (k-(g m n 0)) < x then if (k-(g m n 0)) > n-m then 1 else 0 else 0;;

let rec f n k m l=
if g m n 0 = k then f n k (m+1) (l+1) else
if g m n 0 > k then f n k (m+1) (l+(c m n n k)) else l;;

print_int (f 3 4 0 0);;
