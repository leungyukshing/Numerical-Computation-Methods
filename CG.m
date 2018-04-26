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
    a0 = (r0' * r0) / (p0' * A*p0); % ���ʹ��
    x1 = x0 + a0*p0;
    
    r1 = r0 - a0*A*p0;
    
    b0 = (r1'*r1)/(r0'*r0);
    
    p1 = r1 + b0 *p0;
    
    %ֻ���õ�ǰ����������������Խ�ʡ�ڴ濪�������������һ�㣬�������ظ��ǵ�û�õı���
    x0 = x1;
    r0 = r1;
    p0 = p1;
end
x = x0;
end