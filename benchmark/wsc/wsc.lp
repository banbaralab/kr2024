strategic(X1) | strategic(X2) | strategic(X3) | strategic(X4) :- produced_by(X,X1,X2,X3,X4).
strategic(W) :- controlled_by(W,X1,X2,X3,X4), strategic(X1), strategic(X2), strategic(X3), strategic(X4).

#minimize{ W : strategic(C), weight(C,W) }.

#show strategic/1.
