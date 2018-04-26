function[x,steps] = CG(A,b,max)
n = size(A,1);
x0 = zeros(n,1);
r0=b-A*x0;
p0=r0;

if nargin == 2
    max = 200;
end
eps = 1.0e-6;
steps = 0;
times = 0;
while 1
    if ((abs(p0) < eps))
        break;
    end
    if (times > max)
        break;
    end
    times = times + 1;
    a0 = (r0' * r0) / (p0' * A*p0); % 多次使用
    x1 = x0 + a0*p0;
    
    r1 = r0 - a0*A*p0;
    
    b0 = (r1'*r1)/(r0'*r0);
    
    p1 = r1 + b0 *p0;
    
    %只是用到前后两层的向量，所以节省内存开销，计算完后面一层，可以往回覆盖掉没用的变量
    x0 = x1;
    r0 = r1;
    p0 = p1;
end
x = x0;
end