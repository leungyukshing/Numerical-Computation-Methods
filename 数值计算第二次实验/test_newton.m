% ����ţ�ٵ�����
x = 10;
e = 0.000001;

[y, times, error, time] = Newton(x, e);
plot(times, error);
gtext('ţ�ٵ���������������-���');

%plot(time, error);
%gtext('ţ�ٵ�����������ʱ��-���');