% ≤‚ ‘œ“Ωÿ∑®
x0 = 10;
x1 = 11;
e = 0.000001;
n = 100;
[result, time] = Secant(x0, x1, e, n);
disp(result);
disp(time);