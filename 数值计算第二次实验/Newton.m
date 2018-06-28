function [y, time] = Newton(x, e, n)
    % yΪ���ս��
    % timeΪ��������
    % xΪ��ʼ�����ĳ�ʼ����
    % eΪ��������
    % nΪ����������
    del_x = 0.0000001; % ������������ֵ�ļ�С��
    time = 0;
    y = x;
    x = y + 1000; % ��֤�����ܿ�ʼ
    while 1
        if (abs(y-x) <= e)
            disp('�����������');
            break;
        elseif (time > n)
            disp('������������');
        else
            x = y;
            if((myFun(x+del_x) - myFun(x)) == 0)
                disp('����Ϊ0');
                break;
            else
                y_deriv = (myFun(x+del_x) - myFun(x)) / del_x; %x��ĵ���ֵ
                y = x - myFun(x) / y_deriv; % ţ�ٵ���
                time = time + 1; %����������1
            end
        end
    end
    disp('ţ�ٵ�������');
end


function [y] = myFun(x)
y = x*x - 115;
end