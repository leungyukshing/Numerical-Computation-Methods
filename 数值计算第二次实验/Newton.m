function [y, count, error, time] = Newton(x, e)
    % yΪ���ս��
    % timeΪ��������
    % xΪ��ʼ�����ĳ�ʼ����
    % eΪ��������
    % nΪ����������
    del_x = 0.0000001; % ������������ֵ�ļ�С��
    count = [];%�����������������
    time = []; % �������ʱ�������
    error = [];%�����������
    k = 0; %������������
    err = 0;%������
    y = x;
    x = y + 1000; % ��֤�����ܿ�ʼ
    n = 50;
    tic
    while 1
        if (abs(y-x) <= e)
            disp('�����������');
            break;
        elseif (k > n)
            disp('��������1');
            break;
        else
            x = y;
            if((myFun(x+del_x) - myFun(x)) == 0)
                disp('����Ϊ0');
                break;
            else
                y_deriv = (myFun(x+del_x) - myFun(x)) / del_x; %x��ĵ���ֵ
                y = x - myFun(x) / y_deriv; % ţ�ٵ���
                k = k + 1; %����������1
                count(k) = k;
                err = abs(y-x) / y;
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
    
    disp('ţ�ٵ�������');
end


function [y] = myFun(x)
y = x*x - 115;
end