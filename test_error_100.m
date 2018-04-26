%{
% ��˹���¶�������̬����
A=[8 -3 2;4 11 -1;6 3 12]
b=[20;33;36]
Gauss_Seidel(A,b);
%}

%n=10
    n = 100
    T = diag(normrnd(0,0.25,n,1));
    %T= diag(rand(n,1));
    U = orth(rand(n));
    J = U*T*U';
    D = diag(normrnd(10,20,n,1));
    A = D - D*J;
    
    b = normrnd(600,1000,n,1);
    

% �ſɱȵ���
error1 = [];
times1 = [];
for i = 1:25
    times1(i) = i;
    xtrue = linsolve(A,b);
    tic
    x = jacobi(A,b,i);
    toc
    error1(i) = norm((x-xtrue),inf)/norm(xtrue,inf);
end
plot(times1,error1);
gtext('�ſɱȵ���');
hold on

% ��˹���¶�����
error2 = [];
times2 = [];
for i = 1:25
    times2(i) = i;
    xtrue = linsolve(A,b);
    tic
    x = Gauss_Seidel(A,b,i);
    toc
    error2(i) = norm((x-xtrue),inf)/norm(xtrue,inf);
end
plot(times2,error2);
gtext('��˹���¶�����');
hold on

% SOR����
error3 = [];
times3 = [];
for i = 1:25
    times3(i) = i;
    xtrue = linsolve(A,b);
    tic
    x = SOR(A,b,1.3,i);
    toc
    error3(i) = norm((x-xtrue),inf)/norm(xtrue,inf);
end
plot(times3,error3);
gtext('SOR����');
hold on