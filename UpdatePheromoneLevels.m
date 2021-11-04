function updatedPheromone = UpdatePheromoneLevels(pheromoneLevel,deltaPheromoneLevel,rho)
for s=1:length(pheromoneLevel)
    for q = 1:length(pheromoneLevel)
        temp_pheromone = ((1-rho)*pheromoneLevel(s,q)) + deltaPheromoneLevel(s,q);
        if temp_pheromone<(10^-15)
            pheromoneLevel(s,q) = 10^-15;
        else
            pheromoneLevel(s,q) = temp_pheromone;
        end
    end
end
updatedPheromone = pheromoneLevel;
end