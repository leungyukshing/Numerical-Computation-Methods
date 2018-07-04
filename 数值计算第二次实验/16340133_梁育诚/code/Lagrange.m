% 拉格朗日插值
function [y0] = Lagrange(x,y,x0)
format long;
% 给定插值点(x,y)，求在x=x0处的值y0
y0 = 0;
n = length(x);
l = ones(1,n); % 基函数集合
for k = 1:n
    for j = 1:n
        if j ~= k
            l(k) = l(k)*(x0-x(j))/(x(k) - x(j)); % 计算插值基函数
        end
    end
end
% 计算插值多项式
for i = 1:n
    y0 = y0 + y(i)*l(i);
end