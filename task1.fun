datatype cint = CI of int * int;    (*Creates a datatype called cint, denoted by CI, that takes two integers*)

fun cadd (CI(a,b), CI(x,y)) = CI(a+x, b+y);     (*Adds two cints*)
cadd(CI(4,6), CI(8,2));
cadd(CI(3,3), CI(0,0));

fun cmult (CI(a,b), CI(c,d)) = CI(a*c - b*d, a*d + b*c);    (*Multiplies two cints*)
cmult(CI(3,4), CI(5,6));
cmult(CI(0,2), CI(2,0));
cmult(CI(12,12), (12,12,))
