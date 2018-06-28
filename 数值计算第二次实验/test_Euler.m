% 测试前向欧拉法
a = 0;
b = 1;
y0 = 1;
h = 0.1;

[x,y] = Euler(a, b, y0, h);
disp(x);
disp(y);