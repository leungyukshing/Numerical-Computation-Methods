function [y, count, error, time] = Secant(x0, x1, e)
    % y为最终结果
    % time为迭代步数
    % x为开始迭代的初始坐标
    % e为迭代精度
    % n为最大迭代次数
    n = 50;
    k = 0;%迭代次数变量
    err = 0;% 误差变量
    count = [];%输出迭代次数的数组
    time = []; % 输出迭代时间的数组
    error = [];% 输出误差的数组
    
    tic
    while 1
        y = x1 - myFun(x1) * (x1 - x0) / (myFun(x1) - myFun(x0));
        err = abs(y - x1) / y;
        if (abs(y - x1) <= e)
            disp('满足迭代精度');
            break;
        elseif (k > n)
            disp('迭代次数超界');
            break;
        else
            x0 = x1;
            x1 = y;
            k = k + 1;
            count(k) = k;
            
            error(k) = err;
        end
    end
    toc
    
    % 均分时间间隔
    temp = toc / k;
    for i=1:k
        time(i) = i*temp;
    end
    
disp('弦截法迭代结束');
end

function [y] = myFun(x)
y = x*x - 115;
end
