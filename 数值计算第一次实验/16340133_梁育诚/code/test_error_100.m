%n=100
    n = 100
    % T = diag(normrnd(0,0.25,10,1));
    T = diag(rand(n,1));
    U = orth(rand(n));
    A = U*T*U';
    chol(A);
    b = normrnd(600,1000,n,1);
    
    

% �ſɱȵ���
error1 = [];
times1 = [];
for i = 1:40
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
for i = 1:40
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
for i = 1:40
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

% �����ݶȷ�
error4 = [];
times4 = [];
for i = 1:40
    times4(i) = i;
    xtrue = linsolve(A,b);
    tic
    x = CG(A,b,i);
    toc
    error4(i) = norm((x-xtrue),2)/norm(xtrue,2);
end
plot(times4,error4);
gtext('�����ݶȷ�');
hold on