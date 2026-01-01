digits(N, [N])
	:- N < 10.
digits(N, W)
	:- N >= 10,
    	divMod(N, 10, D, M),
    	digits(D, R),
    	append(R, [M], W).

divMod(A, B, D, M)
	:-
	D is A div B,
	M is A mod B.

different([]).
different([X|XS])
	:- \+ member(X, XS), different(XS).

perfect(N)
	:- R is sqrt(N),
    	E is floor(R),
    	B is ceil(R),
    	E == B.

odd(N)
	:- 1 is N mod 2.

exactMultipleOf(M, N)
	:- M > 0,
    0 is N mod M.

index(1, [X|_], X).
index(I, [_|XS], W)
	:- I1 is I - 1,
    index(I1, XS, W).