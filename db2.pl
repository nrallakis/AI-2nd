find_sim_1(X, Y):- genre(X, G1), genre(Y, G1), X \= Y.

find_sim_2(X, Y):- find_sim_1(X,Y), keyword(X, K1), keyword(Y,K1).

find_sim_3(X, Y):- find_sim_2(X, Y), popularity(X,P1), popularity(Y,P2), (P2 > 0.6*P1).

find_sim_4(X, Y):- find_sim_3(X, Y), language(X,L1), language(Y,L1).


find_sim_5(X, Y):- find_sim_4(X, Y), atleast_one_common_actor(X,Y).
atleast_one_common_actor(X,Y):- actor_1(X,A1), actor_2(X,A2), actor_3(X,A3), actor_1(Y,AY1), member(AY1,[A1,A2,A3]).
atleast_one_common_actor(X,Y):- actor_1(X,A1), actor_2(X,A2), actor_3(X,A3), actor_2(Y,AY2), member(AY2,[A1,A2,A3]).
atleast_one_common_actor(X,Y):- actor_1(X,A1), actor_2(X,A2), actor_3(X,A3), actor_3(Y,AY3), member(AY3,[A1,A2,A3]).


find_sim_6(X, Y):- find_sim_5(X, Y), director(X,D1), director(Y,D1).


% precision: 0.5003333447370387
% recall: 0.7166666666666668
% f1: 0.5730516935290948
%
% +keyword:
% precision: 0.4951176451117303
% recall: 0.7291666666666666
% f1: 0.5756227583789311
%
%
% precision: 0.512624628570727
% recall: 0.7888888888888889
% f1: 0.5924969766951524
%
% telikos code
% a
% precision: 0.5049697183770935
% recall: 0.8402777777777777
% f1: 0.6288954276838841
%
% b
% precision: 0.5051894300054038
% recall: 0.9486111111111113
% f1: 0.6591803873274932
%
% c
% precision: 0.5106382978723404
% recall: 1.0
% f1: 0.676056338028169
