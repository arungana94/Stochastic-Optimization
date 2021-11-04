function node = GetNode(tabu,pheromoneLevel,visibility, alpha, beta)
a = alpha;
b = beta;
tau = pheromoneLevel;
eta = visibility;

n_cities = length(tau);
temp = nonzeros(tabu);
node_i = temp(end);
cities = 1:50;
non_tabu = setdiff(cities,temp);
prob = zeros(length(non_tabu),1);

for k = 1:length(non_tabu)
    
num = (tau(node_i,non_tabu(k))^a)*((eta(node_i,non_tabu(k)))^b);
sum_prob = CalculateSum(non_tabu,tau,eta,node_i,a,b);

prob(k) = num/sum_prob;
end
phi = zeros(length(prob),1);

cumulative_prob = sum(prob);
rel_sum = 0;
for b=1:length(prob)
    rel_sum = rel_sum + prob(b);
    phi(b) = rel_sum/cumulative_prob; 
end
%RW selection
r = rand;


for d = 1:length(phi)
    if phi(d)>r
        node = non_tabu(d);
        break;
    end
end
end

function sum = CalculateSum(non_tabu,tau,eta,node_i,a,b)
sum = 0;
for t=1:length(non_tabu)
    sum = sum + ((tau(node_i,non_tabu(t))^a)*(eta(node_i,non_tabu(t))^b));
end
end
