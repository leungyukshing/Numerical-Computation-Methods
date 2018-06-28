function[x]=gauss_elim(A,b)  
% A为系数矩阵且必须为方阵  
% b为常数项向量  
n=size(A,1);  
x=zeros(1,n);  
%分解
for k=1:n  
    %顺序主子式为0，则退出
    w=det(A(1:k,1:k))
    if (w==0)
        return;
    end
    %若主元为0，则换一个
    
    if(A(k,k)==0)  
        t=min(find(A(k+1:n,1)~=0+k));  
        if(isempty(t))  
            return  
        end;  
        temp=A(k,:);tb=b(k);  
        A(k,:)=A(t,:);b(k)=b(t);  
        A(t,:)=temp;b(t)=tb;  
    end;  
    
    for i=k+1:n  
        m=A(i,k)/A(k,k);
        for j=k+1:n
            A(i,j)=A(i,j)-m*A(k,j);
        end
        b(i) = b(i)-m*b(k);
    end
end  

%回代
x(n)=b(n)/A(n,n);  
for i=n-1:-1:1  
    sum = 0;
    for j=i+1:n
        sum = sum + A(i,j)*x(j);
    end
    x(i) = (b(i)-sum)./A(i,i);
end  