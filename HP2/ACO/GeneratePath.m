function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)
cities = 1:length(pheromoneLevel);
n_cities = length(pheromoneLevel);
path = zeros(n_cities,1);
tabu = zeros(50,1);

start = randi(50);
path(1) = start;
tabu(1) = path(1);

for i= 2:n_cities
if i ~= n_cities
path(i) = GetNode(tabu,pheromoneLevel,visibility, alpha, beta);
tabu(i) = path(i);
else
    path(i) = setdiff(cities,tabu);
    tabu(i) = path(i);
end
end

return
end




