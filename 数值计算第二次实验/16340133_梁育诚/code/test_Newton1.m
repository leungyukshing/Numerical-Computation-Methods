% 测试简化牛顿迭代法
x = 10;
e = 0.0000001;
[y, times, error, time] = Newton1(x, e);
plot(times, error);
gtext('简化牛顿法：迭代次数-误差');

%plot(time, error);
%gtext('简化牛顿法：计算时间-误差');

disp(result);
disp(time);