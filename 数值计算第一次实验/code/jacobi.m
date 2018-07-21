% 雅可比迭代法
function[xn]=jacobi(A,b,max)
n=size(A,1);
eps = 0.000001;
% 默认最大迭代次数
if nargin == 2
    max = 200;
end

% 初始化向量
x0=zeros(n,1);
xn=zeros(n,1);
x0(1)=1;

times = 0; % 记录迭代次数
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
% 输出迭代次数和结果
disp(times);
disp(xn);