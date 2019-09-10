DOMAINS
	s=symbol
PREDICATES
	nondeterm parent (s,s)
	nondeterm man (s)
	nondeterm father (s,s)
	nondeterm grandparent (s,s)
	nondeterm mother (s,s)
	nondeterm woman (s)
	nondeterm son (s,s)
	nondeterm daughter(s,s)
	nondeterm brother (s,s)
	nondeterm sister (s,s)
	nondeterm aunt (s,s)
	nondeterm uncle (s,s)
	nondeterm niece (s,s)
CLAUSES
	% �����:
	parent("������ ���������", "������� ����������"). parent("������� ���������", "������� ����������").
	parent("������� ���������", "���� I"). parent ("������� ����������", "���� I").
	parent("������� ����������", "����� ����������"). parent("����� ������������", "����� ����������").
	parent("����� ������������","����� ����������"). parent("������� ����������","����� ����������"). 
	parent("����� ������������", "���� V"). parent("������� ����������", "���� V").
	parent("���� V","���� ��������"). parent("��������� ���������", "���� ��������").
	parent("���� V","��������� ��������"). parent("��������� ���������", "��������� ��������").
	parent("���� I", "������� ��������"). parent("������� ��������", "������� ��������").
	parent("���� I", "���� ��������"). parent ("��������� I", "���� ��������").
	parent("���� I", "��������� ��������"). parent ("��������� I", "��������� ��������").
	parent("���� I", "���� ��������"). parent ("��������� I", "���� ��������").
	man("������ ���������"). 
	man("������� ����������").
	man("���� I"). 
	man("������� ��������").
	man("����� ����������"). 
	man("���� V").
	man("���� ��������").
	woman("������� ���������"). 
	woman("������� ���������"). 
	woman("������� ��������").  
	woman("���� ��������"). 
	woman("��������� ��������").  
	woman("��������� I"). 
	woman ("��������� ��������").
	woman ("����� ������������"). 
	woman("����� ����������").
	woman ("��������� ���������").
	woman ("���� ��������"). 
	
	
	% �������:
	father(X,Y):-parent(X,Y),man(X).
	mother(X,Y):-parent(X,Y),woman(X).
	son(X,Y):-parent(X,Y),man(Y).
	daughter(X,Y):-parent(X,Y), woman(Y).
	grandparent(X,Y) :- parent(X,Z), parent(Z,Y).
	brother(X,Y):-parent(Z,X),parent(Z,Y),man(Y), X<>Y.
	sister(X,Y):-parent(Z,X),parent(Z,Y),woman(Y), X<>Y.
	aunt(X,Y):-parent(Z,X),sister(Z,Y).
	uncle(X,Y):-parent(Z,X),brother(Z,Y).
	niece(X,Y):-aunt(X,Y),woman(X).
	niece(X,Y):-uncle(X,Y),woman(X).

GOAL
%1.1
	%father (X, "���� I").
	%parent ("���� I", Y).
	%grandparent (T, "���� I").
%1.2
	%father("������� ��������", "����� ����������").
	%mother("����� ������������",X).
	%daughter("��������� I",Y).
%1.3
	%brother("���� I",X).
	%uncle("���� ��������",Y).
	%niece(T,"����� ����������").
%5 ��������
	%grandparent (X, "������� ���������").
	parent ("���� ��������", Y).
	%brother("���� V",T).
	%uncle("��������� ��������","����� ����������").
	%aunt("���� ��������",Y).