% 测试牛顿迭代法
x = 10;
e = 0.000001;

[y, times, error, time] = Newton(x, e);
plot(times, error);
gtext('牛顿迭代法：迭代次数-误差');

%plot(time, error);
%gtext('牛顿迭代法：计算时间-误差');