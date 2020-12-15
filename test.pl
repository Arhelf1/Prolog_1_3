maxim(X,Y,X):- X >= Y,!.
maxim(_,Y,Y).
maxim(X,Y,X,Z,_,Z):- X >= Y,!.  
maxim(_,Y,Y,_,Q,Q).
pred_per(D,0,F_T, D) :- NN is D mod FT, NN \= 0, !.
pred_per(D, How_much, FT, New_D):- D1 is D div FT,
	pred_per(D1, How_much1, FT, New_D), How_much is How_much1+1.
per(1, -1, _, _).
per(D, How_much, Ost, Ost__) :- NN is Ost mod D, NN \= 0,
  Ost1 is NN, Ost2 is Ost1*10, Ost3 is Ost2+9, per(D, How_much1, Ost3, Ost__),
  How_much is How_much1+1.
per(_, 0, Ost, Ost) :- !.
len(1,0) :- !.
len(D, Len_per):- pred_per(D, _, 2, New_D), pred_per(New_D, _, 5, New_D1), 
  per(New_D1, How_much, 9, _), Len_per is How_much+1,!.
res(D,R,M,N):- res(D,R,0,M,0, N).
res(D,R,M1,M,N1,N):- D >= R, M is M1, N is N1,!.  
res(D,R,M1,M,N1,N):- len(D, Len), maxim(Len, M1, M2, D, N1, N2),
  D1 is D+1, res(D1,R,M2,M,N2,N).
main :- res(1,1000, M, N),
  write("Число "), writeln(N),
  write("Длина периода "), write(M),!. 