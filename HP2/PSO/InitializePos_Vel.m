function [x,v] = InitializePos_Vel(xMax,xMin,alpha,delT,n_particles,n)
x = zeros(n_particles,n);
v = zeros(n_particles,n);

for i=1:n_particles
    for j=1:n
        r = rand;
        x(i,j) = xMin + r*(xMax-xMin);
        v(i,j) = (alpha/delT)*(((xMin-xMax)/2)+(r*(xMax-xMin)));
    end
end

end