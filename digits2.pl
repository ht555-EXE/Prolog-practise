digits2(N, [N])
    :- N<2.
digits2(N, R)
    :- N >= 2,
    divmod(N, 2, A, B),
    digits2(A, W),
    append(W, [B], R).


divmod(N, D, V, R)
    :- V is N div D,
    R is N mod D.