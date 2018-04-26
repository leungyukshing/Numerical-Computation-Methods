%n=10
    n = 10
    T = diag(normrnd(0,0.25,10,1));
    U = orth(rand(10));
    J = U*T*U';
    
    D = diag(normrnd(10,20,10,1));
    A = D - D*J;
    disp(A);
    b = normrnd(600,1000,10,1);
    

% 雅可比迭代
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
gtext('雅可比迭代');
hold on

% 高斯赛德尔迭代
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
gtext('高斯赛德尔迭代');
hold on

% SOR迭代
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
gtext('SOR迭代');
hold on

% 共轭梯度法
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
gtext('共轭梯度法');
hold on