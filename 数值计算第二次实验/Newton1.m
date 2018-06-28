function [y, time] = Newton1(x0, e, n)
    % y为最终结果
    % time为迭代步数
    % x为开始迭代的初始坐标
    % e为迭代精度
    % n为最大迭代次数
time = 1;
del_x = 0.0000001; % 用于求函数导数值的极小量
y_deriv = (myFun(x0+del_x) - myFun(x0)) / del_x; % x0点的导数值
disp(y_deriv);
y = x0;
x0 = y + 1000; % 保证迭代能开始

while 1
    if (abs(y-x0) <= e)
        disp('满足迭代精度');
        break;
    elseif (time > n)
        disp('迭代次数超界');
        break;
    else
        x0 = y;
        if((myFun(x0+del_x) - myFun(x0)) == 0)
                disp('导数为0');
                break;
        else
            y = x0 - myFun(x0) / y_deriv; % 简化牛顿法
            time = time + 1; % 迭代次数加1
        end
    end
end
disp('简化牛顿迭代结束');
end

function [y] = myFun(x)
y = x*x - 115;
end