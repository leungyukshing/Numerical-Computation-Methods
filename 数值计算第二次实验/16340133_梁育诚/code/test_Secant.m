% �����ҽط�
x0 = 10;
x1 = 11;
e = 0.000001;
[y,times, error, time] = Secant(x0, x1, e);
%plot(times, error);
%gtext('�ҽط�����������-���');

plot(time, error);
gtext('�ҽط�������ʱ��-���');

disp(times);
disp(error);