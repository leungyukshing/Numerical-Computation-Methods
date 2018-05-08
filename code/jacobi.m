function[xn]=jacobi(A,b,max)
n=size(A,1);
eps = 0.000001;
if nargin == 2
    max = 200;
end
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
times = 0;% 迭代次数
while norm(xn-x0)>=eps && times <= max
    times=times+1;
    x0=xn;
    
    for i=1:n
        sum = 0;
        for j =1:n
            if (j~=i)
                sum = sum + A(i,j) * x0(j);
            end
        end
    xn(i)=(b(i)-sum)/A(i,i);
    end
    
    if(times>=max)
        return;
    end
end
disp(times);
disp(xn);