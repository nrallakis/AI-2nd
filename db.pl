find_sim_1(X, Y):- genre(X, G1), genre(Y, G1), X \= Y.
find_sim_2(X, Y):- find_sim_1(X, Y), vote_average(X, VoteX), vote_average(Y,VoteY), VoteX - 1 < VoteY.
% find_sim_3(X, Y):- find_sim_2(X, Y), language(X,L1), language(Y,L1).

find_sim_3(X, Y):- find_sim_2(X, Y), genre(X,L1), genre(Y,L1), keyword(X, K1), keyword(Y,K1).

find_sim_4(X, Y):- find_sim_3(X, Y), atleast_one_common_actor(X,Y).
atleast_one_common_actor(X,Y):- actor_1(X,A1), actor_2(X,A2), actor_3(X,A3), actor_1(Y,AY1), member(AY1,[A1,A2,A3]).
atleast_one_common_actor(X,Y):- actor_1(X,A1), actor_2(X,A2), actor_3(X,A3), actor_2(Y,AY2), member(AY2,[A1,A2,A3]).
atleast_one_common_actor(X,Y):- actor_1(X,A1), actor_2(X,A2), actor_3(X,A3), actor_3(Y,AY3), member(AY3,[A1,A2,A3]).

find_sim_5(X, Y):- find_sim_4(X, Y), director(X,A1), director(Y,A1).
