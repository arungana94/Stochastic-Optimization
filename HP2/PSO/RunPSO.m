clear all
minimaLength = 0;
counter = 0;
while minimaLength < 4
epochs = 20;

pBestAll = [];

for i = 1:epochs
PSO_Algorithm;
temp = unique(round(pBest,4),'rows');
pBestAll = [pBestAll;temp];
end
%%
%rounded_pBest = round(pBest,4);
minima = unique(round(pBestAll,4),'rows');
minimaLength = length(minima);
counter = counter+1;
end

f = @(x,y)((x^2+y-11)^2)+(x+y^2-7)^2;
fValues = [];
for v = 1:length(minima)
    fValues(v) = f(minima(v,1),minima(v,2));
end

minima_points = [];
final_fValues = [];
for c = 1:4
    minVal = min(fValues);
    minIdx = find(fValues==minVal);
    final_fValues(c) = fValues(minIdx);
    fValues(minIdx) = [];
    minima_points(c,1) = minima(minIdx,1);
    minima_points(c,2) = minima(minIdx,2);
end
%%
xyInterval = [-6 6];
fcontour(f,xyInterval);
hold on
plot(minima_points(:,1),minima_points(:,2),'o','MarkerFaceColor','r')
title ('contour plot with minima');


    