% function [p, iters] = PageRank(G, alpha)
%
% Computes the Google Page-rank for the network in the adjacency matrix G.
%
% Input
%   G is an adjacency matrix, G(i,j) = 1 iff node j projects to node i
%   alpha is a scalar between 0 and 1
%
% Output
%   p is a probability vector containing the Page-rank of each node
%   iters is the number of iterations used to achieve a tolerance of 1e-8
%
function [p, iters] = PageRank(G, alpha)

    R = size(G,1);  % number of nodes
    p = zeros(R,1);
    iters = 0;
    
    % *** YOUR CODE HERE ***
    
    P=zeros(R);
    e=ones(R,1);
    d=zeros(1,R);    
    
    
    for i=1:R  %construct P and d
        s=sum(G(1:R,i));
        if(s==0)
            d(1,i)=1;
        else
            for j=1:R
                if(G(j,i)==1)
                    P(j,i)=1/s;
                end
            end
        end
    end
    

    Pp=P+(1/R)*e*d; %calculate P'
    
    M=alpha*Pp+(1-alpha)*(1/R)*ones(R);
    op=e/R;
    while(max(op-p)>10^-8)  %iterate untill get p=Mp
        p=op;
        op=M*op;
        iters=iters+1;
    end
        
    
    
    
    