function adjmatrix = adjlist2matrix(adjlists)
    adjmatrix = zeros(length(adjlists),length(adjlists));
    for i = 1:length(adjlists)
        adjs = adjlists{i};
        for j = 1:length(adjs)
            adjmatrix(i,adjs(j)) =adjmatrix(i,adjs(j))+ 1;
        end
    end
end