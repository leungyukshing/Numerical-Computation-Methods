function [x,y] = Euler(a, b, y0, h)
x(1) = 0;
y(1) = y0;
n = (b - a) / h;
for i = 1:n
    x(i+1) = x(i) + h;
    y(i+1) = y(i) + h * myFun(x(i),y(i));
end
end

function f = myFun(x, y)
    f = y - 2 * x / y;
end