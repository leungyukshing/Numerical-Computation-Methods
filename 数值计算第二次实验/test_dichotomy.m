% ���Զ��ַ����
%[result, time, err] = dichotomy(10, 11, 1);
%disp(result);
%disp(time);
%disp(err);
time = [];
times = [];
error = [];
[result, times, error, time] = dichotomy(10,11);

%plot(times, error);
%gtext('���ַ�����������-���');

plot(time, error);
gtext('���ַ�������ʱ��-���');