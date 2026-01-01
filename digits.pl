digits(N, [N])
    :- N < 10.
digits(N, W)
    :- N >= 10,
    divmod(N, 10, A, B),
    digits(A, R),
    append(R, [B], W).


divmod(N, D, A, B)
    :- A is N div D,
    B is N mod D.

