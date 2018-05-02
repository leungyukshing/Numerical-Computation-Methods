%n=100
    n = 100
    % T = diag(normrnd(0,0.25,10,1));
    T = diag(rand(n,1));
    U = orth(rand(n));
    A = U*T*U';
    chol(A);
    b = normrnd(600,1000,n,1);

w = [];
time = [];
%{
for i = 1:100
    times3(i) = i;
    xtrue = linsolve(A,b);
    tic
    [x,t] = SOR(A,b,1.3,i);
    toc
end
%}

% 0.3
tic
SOR(A,b,0.3,15);
toc
w(1) = 0.3;
time(1) = toc;

% 0.4
tic
SOR(A,b,0.4,15);
toc
w(2) = 0.4;
time(2) = toc;

% 0.5
tic
SOR(A,b,0.5,15);
toc
w(3) = 0.5;
time(3) = toc;

% 0.6
tic
SOR(A,b,0.6,15);
toc
w(4) = 0.6;
time(4) = toc;

% 0.7
tic
SOR(A,b,0.7,15);
toc
w(5) = 0.7;
time(5) = toc;

% 0.8
tic
SOR(A,b,0.8,15);
toc
w(6) = 0.8;
time(6) = toc;

% 0.9
tic
SOR(A,b,0.9,15);
toc
w(7) = 0.9;
time(7) = toc;

% 1.0
tic
SOR(A,b,1.0,15);
toc
w(8) = 1.0;
time(8) = toc;

% 1.1
tic
SOR(A,b,1.1,15);
toc
w(9) = 1.1;
time(9) = toc;

% 1.2
tic
SOR(A,b,1.2,15);
toc
w(10) = 1.2;
time(10) = toc;

% 1.3
tic
SOR(A,b,1.3,15);
toc
w(11) = 1.3;
time(11) = toc;

% 1.4
tic
SOR(A,b,1.4,15);
toc
w(12) = 1.4;
time(12) = toc;

% 1.5
tic
SOR(A,b,1.5,15);
toc
w(13) = 1.5;
time(13) = toc;

% 1.6
tic
SOR(A,b,1.6,15);
toc
w(14) = 1.6;
time(14) = toc;

% 1.7
tic
SOR(A,b,1.7,15);
toc
w(15) = 1.7;
time(15) = toc;

% 1.8 
tic
SOR(A,b,1.8,15);
toc
w(16) = 1.8;
time(16) = toc;

% 1.9
tic
SOR(A,b,1.9,15);
toc
w(17) = 1.9;
time(17) = toc;

plot(w,time);
