fun fold (f, acc, xs) = 
case xs of
[] => acc
|   x::xs => fold(f, f(acc, x), xs);

(* fun gInsert p v [] = [v]
|   gInsert p v [head::tail] =
        if p v head
        then v::head::tail
        else head::gInsert (p, v, tail); *)

fun double (x:int) = 2 * x;

fun incr (x:int) = x + 1;

fun a_tuple (double, incr, x:int) =
    double(incr(x));

val a_tuple = (double, incr, double(incr 7));

val eighteen = (#1 a_tuple) 9;

fun increment_n_times_lame (n,x) = 
    if n = 0
    then x
    else 1 + increment_n_times_lame (n-1, x);

fun double_n_times_lame (n, x) = 
    if n = 0
    then x
    else 2 * double_n_times_lame(n-1, x);

fun nth_tail_lame (n, xs) =     (* This lists all the elements after n*)
    if n=0
    then xs
    else tl (nth_tail_lame(n-1, xs));

fun n_times (f, n, x) =
    if n = 0
    then x
    else f ( n_times(f,n-1,x));

