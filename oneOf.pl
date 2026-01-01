oneOf([X|_], X).
oneOf([_|XS], W)
    :- oneOf(XS, W).