% 二分法
function [y, count, error, time] = dichotomy(a, b)
format long;
count = []; %输出迭代次数的数组
error = []; %输出误差的数组
time = []; % 输出迭代时间的数组
err = 0; % 误差变量
k = 0; % 迭代次数变量
e = 0.000001; % 精度控制

x = (a + b) / 2;
f1 = myFun(a);
f2 = myFun(b);
fx = myFun(x);
y = a;

if (fx == 0)
    y = x;
end

tic
while (b-a) > (2*e)
    fx = myFun(x);
    % 得出精确解
    if (fx == 0)
      y = x;
      break;
    elseif (f1 * fx < 0)
        b = x;
        f2 = fx;
    else
        a = x;
        f1 = fx;
    end
    y_old = y;
    y = x;
    k = k + 1;
    count(k) = k;
    x = (a + b) / 2;
    err = abs(y-y_old)/y;
    error(k) = err;
end
toc

% 均分时间间隔
temp = toc / k;
for i=1:k
    time(i) = i*temp;
end

end

% 求解函数
function [y] = myFun(x)
y = x*x - 115;
end
