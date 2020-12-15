maxim(X,Y,X):- X >= Y,!.
maxim(_,Y,Y).
maxim(X,Y,X,Z,_,Z):- X >= Y,!. 
maxim(_,Y,Y,_,Q,Q).
