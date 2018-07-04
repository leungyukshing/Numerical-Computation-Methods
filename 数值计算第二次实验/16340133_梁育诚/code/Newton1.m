function [y, count, error, time] = Newton1(x0, e)
    % y为最终结果
    % x为开始迭代的初始坐标
    % e为迭代精度
    k = 0; % 迭代次数变量
    err = 0;% 误差变量
    count = [];% 输出迭代次数的数组
    time = []; % 输出迭代时间的数组
    error = [];% 输出误差的数组
    n = 50; % n为最大迭代次数
    del_x = 0.0000001; % 用于求函数导数值的极小量
    y_deriv = (myFun(x0+del_x) - myFun(x0)) / del_x; % x0点的导数值
    y = x0;
    x0 = y + 1000; % 保证迭代能开始

tic
while 1
    if (abs(y-x0) <= e)
        disp('满足迭代精度');
        break;
    elseif (k > n)
        disp('迭代次数超界');
        break;
    else
        x0 = y;
        if((myFun(x0+del_x) - myFun(x0)) == 0)
                disp('导数为0');
                break;
        else
            y = x0 - myFun(x0) / y_deriv; % 简化牛顿法
            k = k + 1; % 迭代次数加1
            count(k) = k;
            err = abs(y-x0)/y;
            error(k) = err;
        end
    end
end
toc

    % 均分时间间隔
    temp = toc / k;
    for i=1:k
        time(i) = i*temp;
    end

    disp('简化牛顿迭代结束');
end

function [y] = myFun(x)
y = x*x - 115;
end