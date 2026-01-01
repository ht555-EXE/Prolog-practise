digits2(X, [X])
    :- X < 2.
digits2(X, WS)
    :- X >= 2,
    divmod(X, 2, A, B),
    digits2(A, VS),
    append(VS, [B], WS).

divmod(N, D, A, B)
    :- A is N div D,
    B is N mod D.