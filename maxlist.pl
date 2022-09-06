%maximum
maxlist([],R):-write("Empty list").
maxlist([X|T],R):- maxlist(T,X,R).
maxlist([],X,X).
maxlist([H|T],X,R):-H>X,maxlist(T,H,R);
maxlist(T,X,R).
