number(XS, N)
	:- reverse(XS, YS),
    	numberLoop(YS, N).

numberLoop([], 0).
numberLoop([Y|YS], W)
	:- numberLoop(YS, V),
    	W is Y + 10 * V.
    
factorOf(X,B)
    :- 0 is X mod B.

factorOfOne(X, Y, Z, N)
	:- factorOf(X, N), \+ factorOf(Y, N), \+ factorOf(Z, N).
factorOfOne(X, Y, Z, N)
	:- \+ factorOf(X, N), factorOf(Y, N), \+ factorOf(Z, N).
factorOfOne(X, Y, Z, N)
	:- \+ factorOf(X, N), \+ factorOf(Y, N), factorOf(Z, N).

generator([[T,E,S,T], [T,O], [T, W, E, L, V, E]])
	:- between(0, 9, E),
    	between(0, 9, L), \+ member(L, [E]),
		between(0, 9, O), \+ member(O, [E, L]),
    	between(0, 9, S), \+ member(S, [E, L, O]),
    	between(1, 9, T), \+ member(T, [E, L, O, S]),
    	between(0, 9, V), \+ member(V, [E, L, O, S, T]),
    	between(0, 9, W), \+ member(W, [E, L, O, S, T, V]).

selector([TEST, TO, TWELVE])
	:- number(TEST, P),
    	number(TO, Q),
    	number(TWELVE, R),
    	check(2, 12, [P,Q,R]).

check(N, M, _)
	:- N > M.
check(N, M, [P, Q, R])
	:- N =< M,
    	factorOfOne(P, Q, R, N),
    	N1 is N + 1,
    	check(N1, M, [P, Q, R]).

main
  :- generator(X), selector(X), write(X).
          