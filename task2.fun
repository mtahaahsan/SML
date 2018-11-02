type intseq = int list;     (*Creates a type alias called intseq*)
val a = [1,2,3]:intseq;     (*Testing intseqs*)
val b = [4,5,6]:intseq;

fun seqadd([]:intseq,[]:intseq) = []:intseq     (*Returns an empty intseq if both the input intseqs are empty*)
|   seqadd(x:intseq, y:intseq) = (hd x + hd y)::seqadd(tl x, tl y);     (*Adds the head of both lists, and then calles itself with the tails of both lists*)
seqadd(a,b);

fun seqmult([]:intseq,[]:intseq) = []:intseq    (*Returns an empty intseq if both the input intseqs are empty*)
|   seqmult(x:intseq, y:intseq) = (hd x * hd y)::seqmult(tl x, tl y);   (*Multiplies the head of both lists, and then calls itself with the tails of both lists*)
seqmult(a,b);

