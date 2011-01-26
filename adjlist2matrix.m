%takes in a list of matrices, x = {[1,2,3],[2,3,4]}}.
%disconnected points need to show up as empty lists,
%assume that nodes are numbered in sane way.

%Input: adjlists is a list of N vectors, whose entries
%       are integers with values 1 to N. Repeat values
%       are allowed, indicating multiple connections.
%       Input is assumed to be directed.
%Output: NxN adjacency matrix.
function adjmatrix = adjlist2matrix(adjlists)
    adjmatrix = zeros(length(adjlists),length(adjlists));
    for i = 1:length(adjlists)
        adjs = adjlists{i};
        for j = 1:length(adjs)
            adjmatrix(i,adjs(j)) =adjmatrix(i,adjs(j))+ 1;
        end
    end
end