let rec d n k =
if k = 0 then 1
else n*(d n (k-1));;

let rec f n k =
if n < k then failwith "too many colors"
else print_int (k*(d (k-1) (n-1)));;

f 5 2;;
