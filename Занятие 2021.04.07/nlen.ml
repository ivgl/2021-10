
(* кол-во посл 0 и 1, где нет идущих подряд двух 1 *)


let rec summ l n=
match l with
a::b -> summ b (n+1)
| [] -> n;;

let rec add l =
match l with
a::b -> (a ^ "0") :: (a ^ "1") ::(add b)
| _ -> [];;

let rec generate n l=
if n>1 then generate (n-1) (add l) else l ;;

let rec check l n m=
if n>m+1 then if (l.[m]) = '1' && (l.[m+1]) = '1' then 0 else check l n (m+1) else 1;;

let rec gcheck l n m =
match l with
a::b -> gcheck b n ((check a n 0)+m)
| [] -> print_int m;;

let n = read_int();;

print_list (generate n ["0";"1"]) ;;

gcheck (generate n ["0";"1"]) n 0;;

