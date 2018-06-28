function [y, k] = dichotomy(a, b)
e = 0.000001;
k = 0;
x = (a + b) / 2;
f1 = myFun(a);
f2 = myFun(b);
fx = myFun(x);

if (fx == 0)
    y = x;
end


while (b-a) > (2*e)
    fx = myFun(x);
    if (f1 * fx < 0)
        b = x;
        f2 = fx;
    else
        a = x;
        f1 = fx;
    end
    y = x;
    k = k + 1;
    x = (a + b) / 2;
end
%{
if (f1 * f3 < 0)
    m = x - a;
    if (m > e)
        b = x;
        y = dichotomy(a,b);
    else
        y = x;
    end
else
    m = b - x;
    if (m > e)
        a = x;
        y = dichotomy(a,b);
    else
        y = x;
    end
end
%}
end


function [y] = myFun(x)
y = x*x - 115;
end



