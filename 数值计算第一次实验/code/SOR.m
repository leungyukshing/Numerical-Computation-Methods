% 超松弛迭代法
function[xn,times]=SOR(A,b,w,max)
n=size(A,1);
eps = 0.00001; % 精度控制
% 最大迭代次数
if nargin == 3
    max = 200;
end
%初始化向量
x0=zeros(n,1);
xn=zeros(n,1);
x0(1)=1;

times = 0; % 迭代次数
while norm(xn-x0)>=eps && times <= max
    times=times+1;
    x0=xn;
    
    for i=1:n
        sum1 = 0;
        sum2 = 0;
        for j =1:i-1
                sum1 = sum1 + A(i,j) * xn(j);
        end
        for j=i:n
            sum2 = sum2 + A(i,j) * x0(j);
        end
    xn(i)=x0(i) + w * (b(i) - sum1 - sum2)/A(i,i);
    end
    
    if(times>=max)
        return;
    end
end

% 输出迭代次数与结果
disp(times);
disp(xn);