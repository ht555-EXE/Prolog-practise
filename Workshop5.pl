digits5(N, [N])
    :- N < 5.
digits5(N, V)
    :- N >= 5,
    divmod(N, 5, A, B),
    digits5(A, W),
    append(W, [B], V).

divmod(N, D, A, B)
    :- A is N div D,
    B is N mod D.

digits8(N, [N])
    :- N < 8.
digits8(N, V)
    :- N >= 8,
    divmod(N, 8, A, B),
    digits8(A, W),
    append(W, [B], V).

digits16(N, [N])
    :- N < 16.
digits16(N, V)
    :- N >= 16,
    divmod(N, 16, A, B),
    digits16(A, W),
    intToChar(B, C),
    append(W, [C], V).

intToChar(1, 1).
intToChar(2, 2).
intToChar(3, 3).
intToChar(4, 4).
intToChar(5, 5).
intToChar(6, 6).
intToChar(7, 7).
intToChar(8, 8).
intToChar(9, 9).
intToChar(10, 'A').
intToChar(11, 'B').
intToChar(12, 'C').
intToChar(13, 'D').
intToChar(14, 'E').
intToChar(15, 'F').

insert(N, [], [N]).
insert(E, [X|XS], [E, X|XS])
    :- E < X.
insert(E, [X|XS], [X | WS])
:- insert(E, XS, WS).