% 高斯赛德尔迭代法
function[xn]=Gauss_Seidel(A,b, max)
n=size(A,1);

% 默认最大迭代次数
if nargin == 2
    max = 200;
end

eps = 0.000001; % 精度控制

% 初始化向量
x0=zeros(n,1);
xn=zeros(n,1);
x0(1)=1;

% 保证有解
if det(A) == 0
    return;
end

times = 0; % 迭代次数
while norm(xn-x0)>=eps && times <= max
    times=times+1;
    x0=xn;
    
    for i=1:n
        sum1 = 0;
        sum2 = 0;
        % 使用新的x
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
% 输出迭代次数和结果
disp(times);
disp(xn);