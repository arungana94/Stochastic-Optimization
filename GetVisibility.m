function visibility = GetVisibility(cityLocation)
n_cities = length(cityLocation);
visibility = ones(n_cities,n_cities);
d = ones(n_cities,n_cities);

for i=1:n_cities
    for j=1:n_cities
        if i~=j
        d(i,j) = sqrt((cityLocation(j,2)-cityLocation(i,2))^2+(cityLocation(j,1)-cityLocation(i,1))^2); 
        visibility(i,j) = 1/d(i,j);
        else
        visibility(i,j) = 0;
        end
    end
end

return

end