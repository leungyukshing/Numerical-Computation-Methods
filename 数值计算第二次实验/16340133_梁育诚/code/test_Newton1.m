% ���Լ�ţ�ٵ�����
x = 10;
e = 0.0000001;
[y, times, error, time] = Newton1(x, e);
plot(times, error);
gtext('��ţ�ٷ�����������-���');

%plot(time, error);
%gtext('��ţ�ٷ�������ʱ��-���');

disp(result);
disp(time);