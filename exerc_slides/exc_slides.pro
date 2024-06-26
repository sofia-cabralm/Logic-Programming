% 1-------------------------------------------------------------------
maximo(X,[X]).
maximo(Max,[A|B]) :- maximo(BMax,B), (A>BMax -> Max=A; Max = BMax).

% 2-------------------------------------------------------------------
comprimento(0,[]).
comprimento(1,[1]).
comprimento(X, [_|B]) :- comprimento(X1,B), X is X1 + 1.

% 3-------------------------------------------------------------------
nesimo(_,[],_).
nesimo(1,[A|_],X -> X=A).
nesimo(N,[_|B],X) :- nesimo(N,B,X -> X<N).

% 4-------------------------------------------------------------------
total([X],X).
total([_|B],X) :- total([A|B],X1), X is X1+A.