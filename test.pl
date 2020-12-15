maxim(X,Y,X):- X >= Y,!.
maxim(_,Y,Y).
maxim(X,Y,X,Z,_,Z):- X >= Y,!.  
maxim(_,Y,Y,_,Q,Q).
pred_per(D,0,Five_two, D) :- Not_Nool is D mod Five_two, Not_Nool \= 0, !.
pred_per(D, How_much, Five_two, New_D):- D1 is D div Five_two,
	pred_per(D1, How_much1, Five_two, New_D), How_much is How_much1+1.
per(1, -1, _, _).
per(D, How_much, Ostatok, Ostatok__) :- Not_Nool is Ostatok mod D, Not_Nool \= 0,
  Ostatok1 is Not_Nool, Ostatok2 is Ostatok1*10, Ostatok3 is Ostatok2+9, per(D, How_much1, Ostatok3, Ostatok__),
  How_much is How_much1+1.
per(_, 0, Ostatok, Ostatok) :- !.
 