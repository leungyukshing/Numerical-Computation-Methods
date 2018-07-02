function [y, count, error, time] = Newton(x, e)
    % y为最终结果
    % time为迭代步数
    % x为开始迭代的初始坐标
    % e为迭代精度
    % n为最大迭代次数
    del_x = 0.0000001; % 用于求函数导数值的极小量
    count = [];%输出迭代次数的数组
    time = []; % 输出迭代时间的数组
    error = [];%输出误差的数组
    k = 0; %迭代次数变量
    err = 0;%误差变量
    y = x;
    x = y + 1000; % 保证迭代能开始
    n = 50;
    tic
    while 1
        if (abs(y-x) <= e)
            disp('满足迭代精度');
            break;
        elseif (k > n)
            disp('迭代结束1');
            break;
        else
            x = y;
            if((myFun(x+del_x) - myFun(x)) == 0)
                disp('导数为0');
                break;
            else
                y_deriv = (myFun(x+del_x) - myFun(x)) / del_x; %x点的导数值
                y = x - myFun(x) / y_deriv; % 牛顿迭代
                k = k + 1; %迭代次数加1
                count(k) = k;
                err = abs(y-x) / y;
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
    
    disp('牛顿迭代结束');
end


function [y] = myFun(x)
y = x*x - 115;
end