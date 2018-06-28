function [y, time] = Secant(x0, x1, e, n)
    % y为最终结果
    % time为迭代步数
    % x为开始迭代的初始坐标
    % e为迭代精度
    % n为最大迭代次数
    time = 1;
    while 1
        y = x1 - myFun(x1) * (x1 - x0) / (myFun(x1) - myFun(x0));
        if (abs(y - x1) <= e)
            disp('满足迭代精度');
            break;
        elseif (time > n)
            disp('迭代次数超界');
            break;
        else
            x0 = x1;
            x1 = y;
            time = time + 1;
        end
    end
disp('弦截法迭代结束');
end

function [y] = myFun(x)
y = x*x - 115;
end
