% 高斯消元法

function[x]=gauss_elim(A,b)  
% A为系数矩阵  
n=size(A,1);  
x=zeros(1,n);  

for k=1:n  
    %保证有解
    w=det(A(1:k,1:k))
    if (w==0)
        return;
    end

    % 若主元为0，换一个主元
    if(A(k,k)==0)  
        t=min(find(A(k+1:n,1)~=0+k));  
        if(isempty(t))  
            return  
        end;  
        temp=A(k,:);tb=b(k);  
        A(k,:)=A(t,:);b(k)=b(t);  
        A(t,:)=temp;b(t)=tb;  
    end;  
    
    % 高斯分解
    for i=k+1:n  
        m=A(i,k)/A(k,k);
        for j=k+1:n
            A(i,j)=A(i,j)-m*A(k,j);
        end
        b(i) = b(i)-m*b(k);
    end
end  

% 回代求解
x(n)=b(n)/A(n,n);  
for i=n-1:-1:1  
    sum = 0;
    for j=i+1:n
        sum = sum + A(i,j)*x(j);
    end
    x(i) = (b(i)-sum)./A(i,i);
end  