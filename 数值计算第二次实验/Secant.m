function [y, count, error, time] = Secant(x0, x1, e)
    % yΪ���ս��
    % timeΪ��������
    % xΪ��ʼ�����ĳ�ʼ����
    % eΪ��������
    % nΪ����������
    n = 50;
    k = 0;%������������
    err = 0;% ������
    count = [];%�����������������
    time = []; % �������ʱ�������
    error = [];% �����������
    
    tic
    while 1
        y = x1 - myFun(x1) * (x1 - x0) / (myFun(x1) - myFun(x0));
        err = abs(y - x1) / y;
        if (abs(y - x1) <= e)
            disp('�����������');
            break;
        elseif (k > n)
            disp('������������');
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
    
    % ����ʱ����
    temp = toc / k;
    for i=1:k
        time(i) = i*temp;
    end
    
disp('�ҽط���������');
end

function [y] = myFun(x)
y = x*x - 115;
end
