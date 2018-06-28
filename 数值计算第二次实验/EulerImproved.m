function [x,y] = EulerImproved(a, b, y0, h)
n = (b - a) / h;
x = zeros(1, n);
y(1) = y0;
for i = 1:n
    x(i+1) = x(i) + h;
    yt = y(i) + h * myFun(x(i), y(i)); % Ô¤²â
    y(i+1) = y(i) + (h/2) * (myFun(x(i), y(i)) + myFun(x(i), yt)); % Ð£Õý
end
end

function f = myFun(x, y)
    f = y - 2 * x / y;
end