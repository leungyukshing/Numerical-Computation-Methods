%n=10
    n = 10
    T = diag(normrnd(0,0.25,10,1));
    U = orth(rand(10));
    J = U*T*U';
    
    D = diag(normrnd(10,20,10,1));
    A = D - D*J;
    disp(A);
    b = normrnd(600,1000,10,1);
    

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

% �����ݶȷ�
error4 = [];
times4 = [];
for i = 1:25
    times4(i) = i;
    xtrue = linsolve(A,b);
    tic
    x = CG(A,b,i);
    toc
    error4(i) = norm((x-xtrue),inf)/norm(xtrue,inf);
end
plot(times4,error4);
gtext('�����ݶȷ�');
hold on