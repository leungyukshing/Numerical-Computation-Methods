% 复合梯形公式
function [result] = CompositeTrapezoid(a, b, n)
    if (b < a)
        c = b;
        b = a;
        a =c;
    end
    h = (b - a) / n; % 计算步长
    result = myFun(a) + myFun(b);
    for k = 1:n-1
        x = a + k * h;
        result = result + 2 * myFun(x);
    end
    result = (h / 2) * result;
end

function [y] = myFun(x)
    if (x == 0)
        y = 1;
    else
        y = sin(x) / x;
    end
end 
    