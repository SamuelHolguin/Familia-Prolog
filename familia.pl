padrede('ancizar','ayda').
padrede('jeronimo','carlos').
padrede('carlos','samuel').
padrede('irene', 'ayda').
padrede('ayda','samuel').
padrede('sixta','carlos').
padrede('irene','reynaldo').
padrede('ancizar','reynaldo').
padrede('reynaldo','camila').
padrede('milena','camila').
padrede('ancizar','janeth').
padrede('irene','janeth').
padrede('janeth','jacobo').
padrede('janeth','manuela').
padrede('maycol','jacobo').
padrede('maycol','manuela').
padrede('jeronimo','vicky').
padrede('sixta','vicky').
padrede('vicky','karen').
padrede('vicky','ricardo').
padrede('jhon','karen').
padrede('jhon','ricardo').
padrede('jeronimo','milton').
padrede('sixta','milton').
padrede('milton','natalia').
padrede('milton','monica').
padrede('milton','paula').
padrede('zoraida','natalia').
padrede('zoraida','monica').
padrede('zoraida','paula').

hijode(A,B):-padrede(B,A).
abuelode(A,B):-padrede(A,C), padrede(C,B).
hermanode(A,B):-padrede(C,A), padrede(C,B), A \== B.
familiarde(A,B):-padrede(A,B).
familiarde(A,B):-abuelode(A,B).
familiarde(A,B):-hermanode(A,B).
escasado(A,C):-hijode(B,A),hijode(B,C),C\==A.
escasado(A):-hijode(B,A),padrede(C,B), C\==A.
esfeliz(A):-not(escasado(A)).
tiode(A,B):-hermanode(A,C),padrede(C,B).
primode(A,B):-padrede(C,A),tiode(C,B).
sobrinode(A,B):-tiode(B,A).
nietode(A,B):-abuelode(B,A).
