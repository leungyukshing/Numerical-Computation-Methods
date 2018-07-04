% 测试后向欧拉方法
disp('后向欧拉方法');
a = 0;
b = 1;
y0 = 1;
h = 0.1;

[x,y] = EulerBackward(a,b ,y0, h);
n = (b - a)/h;
for i=2:n+1
    fprintf('x = %f', x(i));
    fprintf(' ,y = %f\n', y(i));
end