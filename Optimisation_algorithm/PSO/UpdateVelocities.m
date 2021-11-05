function vel = UpdateVelocities(weight,v,n,c1,c2,q,pBest,sBest,x,delT,vMax)

for b = 1:length(v)
    for c = 1:n
        q = rand;
        v(b,c) = (weight*v(b,c))+((c1*q/delT)*(pBest(b,c)-x(b,c)))+((c2*rand/delT)*(sBest(c)-x(b,c)));
        if abs(v(b,c))>vMax && v(b,c)<0
            v(b,c) = -vMax;
        elseif abs(v(b,c))>vMax && v(b,c)>0
            v(b,c) = vMax;
        elseif v(b,c) == 0
            v(b,c)= 0;
        end
    end
end

vel = v;
end