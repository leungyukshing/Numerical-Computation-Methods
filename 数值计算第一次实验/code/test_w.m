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


% 0.3
[x,t] = SOR(A,b,0.3,500);
w(1) = 0.3;
time(1) = t;
disp(t);

% 0.4
[x,t] = SOR(A,b,0.4,500);
w(2) = 0.4;
time(2) = t;
disp(t);

% 0.5
[x,t] = SOR(A,b,0.5,500);
w(3) = 0.5;
time(3) = t;
disp(t);

% 0.6
[x,t] = SOR(A,b,0.6,500);
w(4) = 0.6;
time(4) = t;
disp(t);

% 0.7
[x,t] = SOR(A,b,0.7,500);
w(5) = 0.7;
time(5) = t;
disp(t);

% 0.8
[x,t] = SOR(A,b,0.8,500);
w(6) = 0.8;
time(6) = t;
disp(t);

% 0.9
[x,t] = SOR(A,b,0.9,500);
w(7) = 0.9;
time(7) = t;
disp(t);

% 1.0
[x,t] = SOR(A,b,1.0,500);
w(8) = 1.0;
time(8) = t;
disp(t);

% 1.1
[x,t] = SOR(A,b,1.1,500);
w(9) = 1.1;
time(9) = t;
disp(t);

% 1.2
[x,t] = SOR(A,b,1.2,500);
w(10) = 1.2;
time(10) = t;
disp(t);

% 1.3
[x,t] = SOR(A,b,1.3,500);
w(11) = 1.3;
time(11) = t;
disp(t);

% 1.4
[x,t] = SOR(A,b,1.4,500);
w(12) = 1.4;
time(12) = t;
disp(t);

% 1.5
[x,t] = SOR(A,b,1.5,500);
w(13) = 1.5;
time(13) = t;
disp(t);

% 1.6
[x,t] = SOR(A,b,1.6,500);
w(14) = 1.6;
time(14) = t;
disp(t);

% 1.7
[x,t] = SOR(A,b,1.7,500);
w(15) = 1.7;
time(15) = t;
disp(t);

% 1.8 
[x,t] = SOR(A,b,1.8,500);
w(16) = 1.8;
time(16) = t;
disp(t);

% 1.9
[x,t] = SOR(A,b,1.9,500);
w(17) = 1.9;
time(17) = t;
disp(t);

plot(w,time);


%{
    xtrue = linsolve(A,b);
    [x,t] = SOR(A,b,1.3,500);
    disp(t);
%}
