% 共轭梯度法
function[x] = CG(A,b,max)
% 初始化向量
n = size(A,1);
x0 = zeros(n,1);
r0=b-A*x0;
p0=r0;

% 最大迭代次数
if nargin == 2
    max = 200;
end

eps = 1.0e-6; % 精度控制
times = 0; % 迭代次数
while 1
    if ((abs(p0) < eps))
        break;
    end
    if (times > max)
        break;
    end
    times = times + 1;
    a0 = (r0' * r0) / (p0' * A*p0); 
    x1 = x0 + a0*p0;
    
    r1 = r0 - a0*A*p0;
    
    b0 = (r1'*r1)/(r0'*r0);
    
    p1 = r1 + b0 *p0;
    
    
    x0 = x1;
    r0 = r1;
    p0 = p1;
end
x = x0;
end