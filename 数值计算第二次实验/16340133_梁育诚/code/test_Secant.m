% 测试弦截法
x0 = 10;
x1 = 11;
e = 0.000001;
[y,times, error, time] = Secant(x0, x1, e);
%plot(times, error);
%gtext('弦截法：迭代次数-误差');

plot(time, error);
gtext('弦截法：计算时间-误差');

disp(times);
disp(error);