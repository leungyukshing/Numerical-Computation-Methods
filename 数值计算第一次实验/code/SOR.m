function[xn,times]=SOR(A,b,w,max)
n=size(A,1);
eps = 0.00001;
if nargin == 3
    max = 200;
end
x0=zeros(n,1);
xn=zeros(n,1);
x0(1)=1;
%{
D = diag(diag(A)); % ��A�ĶԽǾ���
L = -tril(A, -1); % ��A�������Ǿ���
U = -tril(A,1); % ��A�������Ǿ���
B = D\(L+U);
f = D\b;
x = B*x0+f;
%}
times = 0;% ��������
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
disp(times);
disp(xn);