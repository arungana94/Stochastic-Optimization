% This function should return the gradient of f_p = f + penalty.
% You may hard-code the gradient required for this specific problem.

function gradF = ComputeGradient(x,mu)

if (((x(1))^2)+((x(2))^2)-1) > 0 
    x1Der = 2*(x(1)-1) + 4*mu*x(1);
    x2Der = 4*(x(2)-2) + 4*mu*x(2);
else
    x1Der = 2*(x(1)-1);
    x2Der = 4*(x(2)-2);
end
gradF = [x1Der,x2Der];
end
