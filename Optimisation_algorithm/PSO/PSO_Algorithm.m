clc


range = [-5 5];

n_particles = 50;
n= 2;
alpha = 1;
delT = 1;
n_iterations = 100000;


w = [];

w(1) = 1.4;
for i=1 :(n_iterations-1)
    w(i+1) = w(i)*0.9999;
end

c1 = 2;
c2 = 2;
vMax= 3;

xMin = -5;
xMax = 5;
pBest = zeros(n_particles,n);

[x,v] = InitializePos_Vel(xMax,xMin,alpha,delT,n_particles,n);

f = CalculateValue(x);
pBest = x;
minimumVal = min(f);
idx = find(f==minimumVal);
sBest = x(idx,:);

%
%fun_eqn = @(X,Y) log(0.01+(((X^2+Y-11)^2)+(X+Y^2-7)^2));
%fcontour(fun_eqn,xyInterval);
%hold on


for t=1:n_iterations
    
    f1 = CalculateValue(x);
    f_pBest = CalculateValue(pBest);
    f_sBest = CalculateValue(sBest);
    
    
    for k = 1:length(f1)
        for m = 1:n
            if f1(k)<f_pBest(k)
            pBest(k,m)= x(k,m);
            end
            
            if f1(k)<f_sBest
            sBest(m) = x(k,m);
            end
        end
    end
    
    q = rand;
    v = UpdateVelocities(w(t),v,n,c1,c2,q,pBest,sBest,x,delT,vMax);
    x = x + (delT.*v); 
    
%     fcontour(fun_eqn,xyInterval);
%     hold on
%     plot(pBest(:,1),pBest(:,2),'o','MarkerFaceColor','r')
%     title (sprintf('Iteration %d',t));
%     hold off
%     pause(0.0001)
    
end


%final = MultipleRunPSO(RunPSO);
%%
% fcontour(fun_eqn,xyInterval);
% hold on
% plot(pBest(:,1),pBest(:,2),'o','MarkerFaceColor','r')
