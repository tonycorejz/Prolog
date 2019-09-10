DOMAINS
	s=symbol
PREDICATES
	nondeterm parent(s,s)
	nondeterm man(s)
	nondeterm woman(s)
	nondeterm father(s,s)
	nondeterm mother(s,s)
	nondeterm son(s,s)
	nondeterm daughter(s,s)
	nondeterm grandparent(s,s)
	nondeterm brother(s,s)
	nondeterm sister(s,s)
	nondeterm uncle(s,s)
	nondeterm aunt(s,s)
CLAUSES
	parent("Михаил Федорович", "Алексей Михайлович").
	parent("Евдокия Стрешнева", "Алексей Михайлович").
	parent("Наталья Нарышкина", "Петр I").
	parent("Алексей Михайлович", "Петр I").
	parent("Алексей Михайлович", "Софья Алексеевна").
	parent("Мария Милославская", "Софья Алексеевна").
	parent("Мария Милославская", "Федор Алексеевич").
	parent("Алексей Михайлович", "Федор Алексеевич").
	parent("Мария Милославская", "Иван V").
	parent("Алексей Михайлович", "Иван V").
	parent("Петр I", "Алексей Петрович").
	parent("Евдокия Лопухина", "Алексей Петрович").
	parent("Петр I", "Анна Петровна").
	parent("Екатерина I", "Анна Петровна").
	parent("Петр I", "Петр Петрович").
	parent("Екатерина I", "Петр Петрович").
	parent("Петр I", "Елизавета Петровна").
	parent("Екатерина I", "Елизавета Петровна").
	parent("Иван V", "Анна Ивановна").
	parent("Прасковья Салтыкова", "Анна Ивановна").
	man("Михаил Федорович").man("Алексей Михайлович").
	man("Петр I").man("Алексей Петрович").
	man("Иван V").man("Федор Алексеевич").
	man("Петр Петрович").
	woman("Анна Ивановна").
	woman("Прасковья Салтыкова").
	woman("Евдокия Стрешнева").
	woman("Наталья Нарышкина").
	woman("Евдокия Лопухина").
	woman("Екатерина I").
	woman("Анна Петровна").
	woman("Елизавета Петровна").
	woman("Мария Милославская").
	woman("Софья Алексеевна").
	father(X,Y) :- parent(X,Y),man(X).
	mother(X,Y) :- parent(X,Y),woman(X).
	grandparent(X,Y) :- parent(X,Z),parent(Z,Y).
	son(X,Y) :- parent(X,Y),man(Y).
	daughter(X,Y) :- parent(X,Y),woman(Y).
	brother(X,Y) :- parent(Z,X),parent(Z,Y),man(Y), X<>Y.
	sister(X,Y) :- parent(Z,X),parent(Z,Y),woman(Y), X<>Y.
	uncle(X,Y) :- parent(Z,Y),brother(Z,X).
	aunt(X,Y) :- sister(Z,X), parent(Z,Y).
GOAL
	%1.1
	%parent(X,"Петр I").
	%parent("Петр I", Y).
	%grandparent(T,"Петр I").
	%1.2
	%father("Алексей Петрович","Софья Алексеевна").
	%parent("Мария Милославская",X).
	%daughter("Екатерина I",X).
	%1.3
	%brother("Петр I",X).
	%uncle(X, "Анна Ивановна").
	%aunt("Софья Алексеевна",Y),woman(Y).
	%Самостоятельные запросы:
	%son("Петр I",X).
	%parent(X, "Петр Петрович").
	%sister("Иван V", X).
	%uncle(X, "Елизавета Петровна").
	grandparent(X, "Анна Ивановна"), man(X).