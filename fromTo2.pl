fromTo(X, Y, [])
    :- X > Y.
fromTo(X, Y, [X|WS])
    :- X =< Y,
    X1 is X+1,
    fromTo(X1, Y, WS).