(*2-5 Задание*)

let re = Str.regexp "\\(\\([1-9][0-9]*\\)\\|0\\)\\(\\.\\(\\([0-9]*\\([1-9]\\)\\)\\|0\\)\\)?$" ;;  
let n = read_line();;
if Str.string_match re n 0 then print_string "Matched" else print_string "Failed";;
