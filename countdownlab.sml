fun countdown 0 = []
|  countdown x = x::countdown(x-1);

fun sumlist [] = 0
|   sumlist x = hd x + (sumlist(tl x));

fun append (x:int list, y:int list) =
if null y
then x
else    hd y::append(x, tl y);

datatype cint = CI of int*int

datatype myType = Str of string;

fun get_name (x:myType) = case x of Str name => name;

