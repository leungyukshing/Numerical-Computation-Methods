function [result] = CompositeSimpson(a, b, n)
    if (b < a)
        c = b;
        b = a;
        a = c;
    end
    h = (b - a) / n; % ¼ÆËã²½³¤
    result = myFun(a) + myFun(b);
    for k = 1:n-1
        x = a + k * h;
        result = result + 2 * myFun(x);
    end
    for k = 1:n
        x = a + (k-1)*h + 1/2 * h;
        result = result + 4 * myFun(x);
    end
    result = result * (h / 6);
end

function [y] = myFun(x)
    if (x == 0)
        y = 1;
    else
        y = sin(x) / x;
    end
end
    