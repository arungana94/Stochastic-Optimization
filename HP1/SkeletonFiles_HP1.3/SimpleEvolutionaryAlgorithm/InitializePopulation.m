function population = InitializePopulation(populationSize,nGenes)
    population  = zeros(populationSize,nGenes);
    AllValues = [0 1];
    p_vector = [0.5 0.5];
for i=1:populationSize
    for j=1:nGenes
        population(i,j)= randsrc(1,1,[AllValues;p_vector]);
    end
end

             
