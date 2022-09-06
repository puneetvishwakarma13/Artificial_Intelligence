odd_length(List):-len(List,R),1 is mod(R,2),write("list is odd length").
even_length(List):-len(List,R),0  is mod(R,2),write("list is even length").
len([],0).
len([H|T],R):-len(T,R1),R is 1+R1.
