function delPheromone = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection)

n_ants = length(pathLengthCollection);
n_cities = length(pathCollection(1,:));
edgeMatrix = zeros(n_cities);

for a=1:n_ants
    ant_path = pathCollection(a,:);
    for i=1:((length(ant_path))-1)
        p1 = ant_path(i);
        p2 = ant_path(i+1);
        edgeMatrix(p1,p2) = edgeMatrix(p1,p2)+ (1/pathLengthCollection(a));
    end    
end

delPheromone = edgeMatrix;
end