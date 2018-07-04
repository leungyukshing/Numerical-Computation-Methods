% �������ղ�ֵ
function [y0] = Lagrange(x,y,x0)
format long;
% ������ֵ��(x,y)������x=x0����ֵy0
y0 = 0;
n = length(x);
l = ones(1,n); % ����������
for k = 1:n
    for j = 1:n
        if j ~= k
            l(k) = l(k)*(x0-x(j))/(x(k) - x(j)); % �����ֵ������
        end
    end
end
% �����ֵ����ʽ
for i = 1:n
    y0 = y0 + y(i)*l(i);
end