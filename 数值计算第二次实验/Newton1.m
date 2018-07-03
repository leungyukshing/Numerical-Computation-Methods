function [y, count, error, time] = Newton1(x0, e)
    % yΪ���ս��
    % xΪ��ʼ�����ĳ�ʼ����
    % eΪ��������
    k = 0; % ������������
    err = 0;% ������
    count = [];% �����������������
    time = []; % �������ʱ�������
    error = [];% �����������
    n = 50; % nΪ����������
    del_x = 0.0000001; % ������������ֵ�ļ�С��
    y_deriv = (myFun(x0+del_x) - myFun(x0)) / del_x; % x0��ĵ���ֵ
    y = x0;
    x0 = y + 1000; % ��֤�����ܿ�ʼ

tic
while 1
    if (abs(y-x0) <= e)
        disp('�����������');
        break;
    elseif (k > n)
        disp('������������');
        break;
    else
        x0 = y;
        if((myFun(x0+del_x) - myFun(x0)) == 0)
                disp('����Ϊ0');
                break;
        else
            y = x0 - myFun(x0) / y_deriv; % ��ţ�ٷ�
            k = k + 1; % ����������1
            count(k) = k;
            err = abs(y-x0)/y;
            error(k) = err;
        end
    end
end
toc

    % ����ʱ����
    temp = toc / k;
    for i=1:k
        time(i) = i*temp;
    end

    disp('��ţ�ٵ�������');
end

function [y] = myFun(x)
y = x*x - 115;
end