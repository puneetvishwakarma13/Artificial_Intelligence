parent(meg,hank).
parent(tom,hank).
parent(meg,chris).
parent(tom,chris).
parent(tom,betty).
parent(meg,betty).
parent(hank,kim).
parent(hank,lucy).
parent(gwen,kim).
parent(gwen,lucy).
parent(chris,jaden).
parent(chris,haden).
parent(raven,jaden).
parent(raven,haden).


female(meg).
female(kim).
female(lucy).
female(gwen).
female(raven).
female(betty).
male(tom).
male(hank).
male(chris).
male(jaden).
male(haden).

mother(X,Y):-female(X),parent(X,Y).
father(X,Y):-male(X),parent(X,Y).
sister(X,Y):-female(X),parent(Z,X),parent(Z,Y).
brother(X,Y):-male(X),father(Z,X),father(Z,Y),not(X=Y).
grandchild(X,Y):-father(Z,X),parent(Y,Z).
grandparent(X,Y):-parent(Z,Y),parent(X,Z).
uncle(X,Y):-brother(X,Z),parent(Z,Y).
aunt(X,Y):-sister(X,Z),parent(Z,Y).
married(X,Y):-male(X),female(Y),parent(X,Z),parent(Y,Z).
cousin(X,Y):-father(U,X),father(V,Y),brother(U,V).


