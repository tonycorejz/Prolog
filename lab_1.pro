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
	parent("������ ���������", "������� ����������"). parent("������� ���������", "������� ����������").
	parent("������� ���������", "���� I"). parent("������� ����������", "���� I").
	parent("������� ����������", "����� ����������"). parent("����� ������������", "����� ����������").
	parent("����� ������������", "����� ����������"). parent("������� ����������", "����� ����������").
	parent("����� ������������", "���� V"). parent("������� ����������", "���� V").
	parent("���� I", "������� ��������"). parent("������� ��������", "������� ��������").
	parent("���� I", "���� ��������"). parent("��������� I", "���� ��������").
	parent("���� I", "���� ��������"). parent("��������� I", "���� ��������").
	parent("���� I", "��������� ��������"). parent("��������� I", "��������� ��������").
	parent("���� V", "���� ��������"). parent("��������� ���������", "���� ��������").
	man("������ ���������").man("������� ����������").
	man("���� I").man("������� ��������").
	man("���� V").man("����� ����������").
	man("���� ��������").
	woman("���� ��������").
	woman("��������� ���������").
	woman("������� ���������").
	woman("������� ���������").
	woman("������� ��������").
	woman("��������� I").
	woman("���� ��������").
	woman("��������� ��������").
	woman("����� ������������").
	woman("����� ����������").
	father(X,Y) :- parent(X,Y),man(X).
	mother(X,Y) :- parent(X,Y),woman(X).
	grandparent(X,Y) :- parent(X,Z),parent(Z,Y).
	son(X,Y) :- parent(Y,X),man(X).
	daughter(X,Y) :- parent(Y,X),woman(X).
	brother(X,Y) :- parent(Z,X),parent(Z,Y),man(X), not(X = Y).
	sister(X,Y) :- parent(Z,X),parent(Z,Y),woman(X), not(X = Y).
	uncle(X,Y) :- parent(Z,Y),brother(X,Z).
	aunt(X,Y) :- parent(Z,Y), sister(X,Z).
GOAL
%1.1
	%parent(X,"���� I").
	%parent("���� I", Y).
	%grandparent(T,"���� I").
	
%1.2
	%father("������� ��������","����� ����������").
	%parent("����� ������������",X).
	%daughter("��������� I",X).
%1.3
	%brother("���� I",X).
	%uncle(X, "���� ��������").
	%aunt("����� ����������",Y),woman(Y).
%���������������:
	%father("���� I",X).
	%grandparent(X, "���� ��������"), man(X).
	.%uncle("���� V", X).
	%parent(X, "���� ��������")
	%sister(X, "��������� ��������").
	