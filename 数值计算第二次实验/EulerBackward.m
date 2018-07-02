% ����ŷ������
function [x,y] = EulerBackward(a, b, y0, h)
n = (b - a) / h;
x = zeros(1, n);
y(1) = y0;

for i = 1:n
    x(i+1) = x(i) + h;
    yt = y(i) + h * myFun(x(i), y(i)); % ʹ��ŷ����ʽ����������ֵ
    finished = 0; % ��ʼ��
    while ~finished
        y(i+1) = y(i) + h * myFun(x(i+1), yt);
        finished = (abs(y(i+1) - yt) < 0.000001);
        yt = y(i+1);
    end
end
end

function f = myFun(x, y)
    f = y - 2 * x / y;
end