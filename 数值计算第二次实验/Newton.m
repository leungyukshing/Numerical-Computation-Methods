function [y, time] = Newton(x, e, n)
    % y为最终结果
    % time为迭代步数
    % x为开始迭代的初始坐标
    % e为迭代精度
    % n为最大迭代次数
    del_x = 0.0000001; % 用于求函数导数值的极小量
    time = 0;
    y = x;
    x = y + 1000; % 保证迭代能开始
    while 1
        if (abs(y-x) <= e)
            disp('满足迭代精度');
            break;
        elseif (time > n)
            disp('迭代次数超界');
        else
            x = y;
            if((myFun(x+del_x) - myFun(x)) == 0)
                disp('导数为0');
                break;
            else
                y_deriv = (myFun(x+del_x) - myFun(x)) / del_x; %x点的导数值
                y = x - myFun(x) / y_deriv; % 牛顿迭代
                time = time + 1; %迭代次数加1
            end
        end
    end
    disp('牛顿迭代结束');
end


function [y] = myFun(x)
y = x*x - 115;
end