%n=200
    n = 200
    % T = diag(normrnd(0,0.25,10,1));
    T = diag(rand(n,1));
    U = orth(rand(n));
    A = U*T*U';
    chol(A);
    b = normrnd(600,1000,n,1);
    
 
times = [];
% �ſɱȵ���
for i = 1:40
    tic
    x = jacobi(A,b,i);
    toc
    times(1) = toc;
end

% ��˹���¶�����
for i = 1:40
    tic
    x = Gauss_Seidel(A,b,i);
    toc
    times(2) = toc;
end

% SOR����
for i = 1:40
    tic
    x = SOR(A,b,1.3,i);
    toc
    times(3) = toc;
end

% �����ݶȷ�
for i = 1:40
    tic
    x = CG(A,b,i);
    toc
    times(4) = toc;
end

% ��˹��Ԫ��
for i = 1:40
    tic
    x = gauss_elim(A,b);
    toc
    times(5) = toc;
end

% ����Ԫ��Ԫ��
for i = 1:40
    tic
    x = gauss_elim_pro(A,b);
    toc
    times(6 ) = toc;
end
disp(times);