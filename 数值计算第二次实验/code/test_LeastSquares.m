% ���Ե�����С���˷�
m = 10000;
n = 10;

A = normrnd(2,10,m,n); % AΪm*n����
b = normrnd(100,1000,m,1); % bΪm*1����

[result, error, count] = LeastSquares(A,b);

plot(count, error);
gtext('������С���˷�');