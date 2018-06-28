% 测试改进欧拉方法
a = 0;
b = 1;
y0 = 1;
h = 0.1;

[x,y] = EulerImproved(a, b, y0, h);
disp(x);
disp(y);