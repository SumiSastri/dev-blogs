__Merge sort__

First split
Then sort
Time efficiency o log(n)
Space efficiency terrible as you need an array same number of elements to copy the array and operate

__Insert sort__

Insert is anywhere close to the middle for efficiency but does not need to be the middle
Slightly arb choice- Split due to memory space constraints
Sort both sides first
What is the problem that you are solving - make use of limited space and sort in order efficiently
not a0 to b0 but 2 numbers and swap so the order of the elements are not compared linear 

__Linked lists__

List is a list of objects  or arrays
Single link uni directional
Double link bi directional
Circular linked list
3 pos head, middle, tail
links are flexible, nodes are not
links are not easy to sort
eg: social media follows - bi directional 2 people can follow each other
single link - email/ sms - can only send
list ops are creation, insertion, deletion - sorting difficult not time efficient
head is -1
tail is n-1
insert to head efficieny o(1)
significance of insert is always o(n)
not like an array delete not by index - single index delete o(n)

double link - only knows about the adjacent child
Occupies more memory space
Advantage faster
for(circle)/while (particular item)
search always starts with o(1) - wherever you are the first index is 1 because it is bidirectional
1/3 increase in space - a head/middle /tail increase

Code single list arg next
double args are prev/ next

Construction provides the memory space - constructor has beg/ mid/ end
delete the 2 old
Create 2 new for double link list


