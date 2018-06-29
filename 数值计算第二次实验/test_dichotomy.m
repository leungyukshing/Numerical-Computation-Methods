% 测试二分法求根
%[result, time, err] = dichotomy(10, 11, 1);
%disp(result);
%disp(time);
%disp(err);
time = [];
times = [];
error = [];
[result, times, error, time] = dichotomy(10,11);

%plot(times, error);
%gtext('二分法：迭代次数-误差');

plot(time, error);
gtext('二分法：计算时间-误差');