maxim(X,Y,X):- X >= Y,!.
maxim(_,Y,Y).
maxim(X,Y,X,Z,_,Z):- X >= Y,!.  
maxim(_,Y,Y,_,Q,Q).
pred_per(D,0,Five_two, D) :- Not_Nool is D mod Five_two, Not_Nool \= 0, !.
pred_per(D, How_much, Five_two, New_D):- D1 is D div Five_two,
	pred_per(D1, How_much1, Five_two, New_D), How_much is How_much1+1.
 