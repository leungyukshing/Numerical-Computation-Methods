% 选主元高斯消元法
function[x] = gauss_elim_pro(A, b)
% A为系数矩阵  
n=length(b);
x=zeros(n,1);
c=zeros(1,n);


for i = 1: n
    % 保证有解
    w=det(A(1:i,1:i))
    if (w==0)
        return;
    end
    % 选出每一列最大的元素作为主元
    max=abs(A(i,i));
    m = i;
    for j = i + i:n
        if max < abs(A(j,i))
            max = abs(A(j,i));
            m = j;
        end
    end
    % 交换当前行与主元所在的行
    if (m ~= i)
        for k = i:n
            c(k) = A(i,k);
            A(i,k)=A(m,k);
            A(m,k)=c(k);
        end
        d1 = b(i);
        b(i)=b(m);
        b(m)=d1;
    end
    % 消元
    for k = i+1:n
        for j = i+1:n
            A(k,j) = A(k,j)-A(i,j)*A(k,i)./A(i,i);
        end
        b(k)=b(k)-b(i)*A(k,i)./A(i,i);
        A(k,i)=0;
    end
end

% 回代
x(n)=b(n)/A(n,n);
for i = n-1:-1:1
    sum=0;
    for j=i+1:n
        sum = sum + A(i,j)*x(j);
    end
    x(i)=(b(i)-sum)./A(i,i);
end
