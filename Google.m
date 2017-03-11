%% Google.m script

clear G;

% Declare G as a sparse matrix
G = sparse(11,11);


%%**** ENTER CODE FOR MATRIX G HERE ****
% eg. G(1,2) = 1;
% ...

G(1,2)=1;
G(1,3)=1;
G(1,4)=1;
G(1,5)=1;
G(2,1)=1;
G(2,3)=1;
G(2,4)=1;
G(2,5)=1;
G(2,6)=1;
G(2,11)=1;
G(3,1)=1;
G(3,2)=1;
G(3,4)=1;
G(3,5)=1;
G(4,1)=1;
G(4,2)=1;
G(4,3)=1;
G(4,5)=1;
G(5,1)=1;
G(5,2)=1;
G(5,3)=1;
G(5,4)=1;
G(6,7)=1;
G(6,8)=1;
G(6,9)=1;
G(6,10)=1;
G(6,11)=1;
G(7,6)=1;
G(8,6)=1;
G(9,6)=1;
G(10,6)=1;
G(11,6)=1;
G(11,2)=1;





%% Call PageRank algorithm

[p, iters] = PageRank(G, 0.85);



%%**** CODE FOR CREATING BAR PLOT ****

disp(['Converged in ' num2str(iters) ' iterations']);
bar(p);




%% =================================

% Answer to (c)
%
%  there are more iterations with higher alpha value.
%
%
%
% Answer to (d)
%
% Node 6 receives the highest score, low alpha-value decrease the score
% different between nodes.
%
%
%