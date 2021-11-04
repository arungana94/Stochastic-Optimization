function totalPathlength = GetPathLength(path,cityLocation)
pathlength = 0;
for i = 1:(length(path)-1)
term1 = (cityLocation(path(i+1),2)-cityLocation(path(i),2))^2;
term2 = (cityLocation(path(i+1),1)-cityLocation(path(i),1))^2;

pathlength = pathlength + sqrt(term1+term2);
end
term3 = (cityLocation(path(end),2)-cityLocation(path(1),2))^2;
term4 = (cityLocation(path(end),1)-cityLocation(path(1),1))^2;
totalPathlength = pathlength + sqrt(term3+term4);
end
