% 拉格朗日插值
function [y0] = Lagrange(x,y,x0)
format long;
% x,y是给出的插值点，x0是要求的值
y0 = 0;
n = length(x);
l = ones(1,n); % 插值基函数
for k = 1:n
    for j = 1:n
        if j ~= k
            l(k) = l(k)*(x0-x(j))/(x(k) - x(j)); % 计算每一个插值基函数
        end
    end
end

% 求解
for i = 1:n
    y0 = y0 + y(i)*l(i);
end