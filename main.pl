disease :- solve(disease,_).

solve(A, V) :-
	abolish(fact,2),
	dynamic(fact/2),
	abolish(asked,1),
	dynamic(asked/1),
	findgoal(av(A, V), CF),
	write('This case is suffering from '),write(V),write(' with CF='),write(CF),nl.

query_user(Attr, Prompt) :-
	write(Prompt),
	read(Val),
	read(CF),
	asserta(fact(av(Attr, Val), CF)).

findgoal(not(Goal), NCF) :-
	findgoal(Goal, CF),
	NCF is - CF,
	!.

findgoal( av(Attr, Val), CF ) :-
	fact( av(Attr, Val), CF),
	!.

findgoal(Goal,CF) :-
	can_ask(Goal),
	!,
	findgoal(Goal,CF).

findgoal(Goal, CurCF) :-
	fg(Goal, CurCF).

fg(Goal, CurCF) :-
	rule(N, lhs(IfList), rhs(Goal, CF)),	% Get goal's if list
	%write('call rule ') ,write(N),nl,
	prove(N,IfList, Tally),					% Get if list's total cf
	%write('End rule ') ,write(N),nl,
	adjust(CF, Tally, NewCF),				% Merge rule cf with if list's cf
    %write('call adjust for rule ') ,write(N) , write(NewCF),nl,write(CurCF),nl,
	update(Goal, NewCF, CurCF),				% Update already defined cf for the goal
    %write('call update for rule ') ,write(N),nl,
	!.

fg(Goal, CF) :-
	fact(Goal, CF).

% can_ask shows how to query the user for various types of goal patterns

can_ask(av(Attr,_)) :-
	not(asked(av(Attr,_))),
	askable(Attr,Prompt),
	query_user(Attr,Prompt),
	asserta( asked(av(Attr,_)) ).

% prove works through a LHS list of premises, calling findgoal on
% each one.  the total cf is computed as the minimum cf in the list

prove(_,IfList,Tally) :-
	prov(IfList,100,Tally),!.

prov([],Tally,Tally).
prov([H|T],CurTal,Tally) :-
	findgoal(H,CF),
	minimum(CurTal,CF,Tal),
	check_print(Tal),
	Tal >= 20,
	prov(T,Tal,Tally).

check_print(CF):-
		CF >= 20,!.
check_print(CF):-
	CF < 20.
	%write('Failure '),nl.


% update - if its already known with a given cf, here is the formula
% for adding in the new cf.  this is used in those cases where multiple
% RHS reference the same attr :val

update(Goal, NewCF, CF) :-
	fact(Goal, OldCF),
	combine(NewCF, OldCF, CF),
	retract( fact(Goal, OldCF) ),
	asserta( fact(Goal, CF) ),
    write('CF: '), write(CF),
	!.

update(Goal, CF, CF) :-
	asserta( fact(Goal, CF) ).

adjust(CF1, CF2, CF) :-
	X is CF1 * CF2 / 100,
	int_round(X, CF).

combine(CF1, CF2, CF) :-
	CF1 >= 0,
	CF2 >= 0,
	X is CF1 + CF2*(100 - CF1)/100,
	int_round(X, CF).

combine(CF1, CF2, CF) :-
	CF1 < 0,
	CF2 < 0,
	X is - ( -CF1 -CF2 * (100 + CF1)/100),
	int_round(X, CF).

combine(CF1, CF2, CF) :-
	(CF1 < 0; CF2 < 0),
	(CF1 > 0; CF2 > 0),
	abs_minimum(CF1, CF2, MCF),
	X is 100 * (CF1 + CF2) / (100 - MCF),
	int_round(X, CF).

abs_minimum(A,B,X) :-
	absolute(A, AA),
	absolute(B, BB),
	minimum(AA,BB,X).

absolute(X, X) :- X >= 0.
absolute(X, Y) :- X < 0, Y is -X.

minimum(X,Y,X) :- X =< Y,!.
minimum(X,Y,Y) :- Y =< X.

int_round(X,I) :-
	X >= 0,
	I is integer(X + 0.5).
int_round(X,I) :-
	X < 0,
	I is integer(X - 0.5).









