find_sim_1(X, Y):- genre(X, G1), genre(Y, G1), X \= Y.
find_sim_2(X, Y):- find_sim_1(X, Y), vote_average(X, VoteX), number_string(VX,VoteX),  vote_average(Y, VoteY), number_string(VY,VoteY), (VoteX) > (VoteY).
vote(X, Y):- vote_average(X, VoteX).
