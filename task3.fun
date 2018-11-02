type intseq = int list;     (*Creates a type alises called intseq*)
datatype intmatrix = IM of intseq list;     (*Creates a datatype called intmatrix, denoted by IM, that takes a list of intseqs*)

val list1 = [1,2,3,5]:intseq;
val list2 = [4,5,6,8]:intseq;
val list3 = [7,8,9,10]:intseq;
val matrix = IM([list1,list2, list3]);
val notMatrix = IM([list1, list2, [1,2]]);

(*This function checks the lenght of each row is equal by comparing the first two in the intseq, if they are equal, then 
the tails are passed in through recursion, and checked again, until the lenght of the matrix is 1, at this point, it returns true
as each value before it has been compared, including the last value, and has been equal*)
fun isMatrix(IM(a)) = 
if length a = 1
then true
else length(hd a) = length(hd (tl a)) andalso isMatrix(IM(tl a));
isMatrix(matrix);
isMatrix(notMatrix);

(*Gives the lenght of the matrix, and then the lenght of the head of the matrix*)
fun matrixShape(IM(x)) = (length(hd x), length(x));     
matrixShape(matrix);

fun intListToMat(a:int list list) = IM(a);

(*This function takes two intseqs, adds the head of each of them, and then passes the tails into itself until the intseqs are empty,
it then returns an empty intseq that all the values are added to*)
fun matrixAddHelper([]:intseq, []:intseq) = []:intseq
|   matrixAddHelper(first:intseq, second:intseq) = hd first + hd second :: matrixAddHelper(tl first, tl second);

(*This funciton takes the head of both the matrices, and sends them to the matrixAddHelper function, where each value in the intseqs are 
added. It is then returned to this function, and added to the list that is returned when both the matrcies are empty*)
fun matrixAdd(IM([]), IM([])) = []
|   matrixAdd(IM(hd1::tl1), IM(hd2::tl2)) = matrixAddHelper(hd1, hd2) :: matrixAdd(IM(tl1), IM(tl2));
IM(matrixAdd(matrix, matrix));

(*This function mutlitplies every number in the intseq corerspondingly, and returns the sum of all the products*)
fun multMatrixHelper([]:intseq, []:intseq) = 0
|   multMatrixHelper(first:intseq, second:intseq) = hd first * hd second + multMatrixHelper(tl first, tl second);

(*This function is meant to multiply two matricies by passing the heads of each matrix into the multMatrixHelper function*)
fun multMatrix(IM([]), IM([])) = []
|   multMatrix(IM(hd1::tl1), IM(hd2::tl2)) = multMatrixHelper(hd1, hd2) :: multMatrix(IM(tl1), IM(tl2));