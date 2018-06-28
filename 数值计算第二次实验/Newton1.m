function [y, time] = Newton1(x0, e, n)
    % yΪ���ս��
    % timeΪ��������
    % xΪ��ʼ�����ĳ�ʼ����
    % eΪ��������
    % nΪ����������
time = 1;
del_x = 0.0000001; % ������������ֵ�ļ�С��
y_deriv = (myFun(x0+del_x) - myFun(x0)) / del_x; % x0��ĵ���ֵ
disp(y_deriv);
y = x0;
x0 = y + 1000; % ��֤�����ܿ�ʼ

while 1
    if (abs(y-x0) <= e)
        disp('�����������');
        break;
    elseif (time > n)
        disp('������������');
        break;
    else
        x0 = y;
        if((myFun(x0+del_x) - myFun(x0)) == 0)
                disp('����Ϊ0');
                break;
        else
            y = x0 - myFun(x0) / y_deriv; % ��ţ�ٷ�
            time = time + 1; % ����������1
        end
    end
end
disp('��ţ�ٵ�������');
end

function [y] = myFun(x)
y = x*x - 115;
end