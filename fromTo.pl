fromTo(P, Q, [])
    :- P > Q.
fromTo(P, Q, [P|WS])
    :- P =< Q,
    P1 is P+1,
    fromTo(P1, Q, WS).