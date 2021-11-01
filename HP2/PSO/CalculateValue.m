function f = CalculateValue(x)
f = zeros(length(x),1);
s = size(x);

if s(1)>1
for i = 1:length(x)
        f(i) = (((x(i,1))^2+(x(i,2))-11)^2)+(x(i,1)+((x(i,2))^2)-7)^2;
end
else
    f = (((x(1))^2+(x(2))-11)^2)+(x(1)+((x(2))^2)-7)^2;
end

end