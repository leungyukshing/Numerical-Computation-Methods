% 递推最小二乘法
function [result, error, count] = LeastSquares(A,b)
    m = 10000;
    n = 10;
    count = [];
    standard = lsqnonneg(A,b); % 标准答案
    p = 1000*eye(n); % p为n*n的单位矩阵
    x = zeros(n,1); % x为n*1的向量
    k = zeros(n,1); % k为n*1的向量;
    
    for i=1:m
        k = (p*A(i,:)') / (1 + A(i,:)*p*A(i,:)');
        p = (eye(n) - k*A(i,:)) * p;
        x = x + k * (b(i,1) - A(i,:)*x);
        error(i) = norm((x - standard),2);
        count(i) = i;
    end
    result = x;
end