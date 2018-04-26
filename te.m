n = 4
D = rand(n,1);
disp(x);

tempA = randn(n);
A = A' * A;
tempB = 0.01*eye(n);
U = tempA + tempB;

J = U*D*U';
A = D - D*J;