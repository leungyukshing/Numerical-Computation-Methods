function[xn]=Gauss_Seidel(A,b, max)
n=size(A,1);
if nargin == 2
    max = 200;
end
eps = 0.000001;

x0=zeros(n,1);
xn=zeros(n,1);
x0(1)=1;
%{
D = diag(diag(A)); % 求A的对角矩阵
L = -tril(A, -1); % 求A的下三角矩阵
U = -tril(A,1); % 求A的上三角矩阵
B = D\(L+U);
f = D\b;
x = B*x0+f;
%}
% 判断有没有唯一解
if det(A) == 0
    return;
end

times = 0;% 迭代次数
while norm(xn-x0)>=eps && times <= max
    times=times+1;
    x0=xn;
    
    for i=1:n
        sum1 = 0;
        sum2 = 0;
        for j =1:i-1
                sum1 = sum1 + A(i,j) * xn(j);
        end
        for j=i+1:n
            sum2 = sum2 + A(i,j) * x0(j);
        end
    xn(i)=(b(i) - sum1 - sum2)/A(i,i);
    end
    
    if(times>=max)
        return;
    end
end
disp(times);
disp(xn);