function [y, time] = Secant(x0, x1, e, n)
    % yΪ���ս��
    % timeΪ��������
    % xΪ��ʼ�����ĳ�ʼ����
    % eΪ��������
    % nΪ����������
    time = 1;
    while 1
        y = x1 - myFun(x1) * (x1 - x0) / (myFun(x1) - myFun(x0));
        if (abs(y - x1) <= e)
            disp('�����������');
            break;
        elseif (time > n)
            disp('������������');
            break;
        else
            x0 = x1;
            x1 = y;
            time = time + 1;
        end
    end
disp('�ҽط���������');
end

function [y] = myFun(x)
y = x*x - 115;
end
