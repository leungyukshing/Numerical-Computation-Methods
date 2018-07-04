% ���ַ�
function [y, count, error, time] = dichotomy(a, b)
format long;
count = []; %�����������������
error = []; %�����������
time = []; % �������ʱ�������
err = 0; % ������
k = 0; % ������������
e = 0.000001; % ���ȿ���

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
    % �ó���ȷ��
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

% ����ʱ����
temp = toc / k;
for i=1:k
    time(i) = i*temp;
end

end

% ��⺯��
function [y] = myFun(x)
y = x*x - 115;
end
