% 测试递推最小二乘法
m = 10000;
n = 10;

A = normrnd(2,10,m,n); % A为m*n矩阵
b = normrnd(100,1000,m,1); % b为m*1向量

[result, error, count] = LeastSquares(A,b);

plot(count, error);
gtext('递推最小二乘法');