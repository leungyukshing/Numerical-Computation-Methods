% ≤‚ ‘∏¥∫œ–¡∆’…≠π´ Ω
a = 0;
b = 1;
n1 = 5;
n2 = 9;
n3 = 17;
n4 = 33;

disp('n = 5:');
[result1] = CompositeSimpson(a, b, n1);
disp(result1);

disp('n = 9:');
[result2] = CompositeSimpson(a, b, n2);
disp(result2);

disp('n = 17');
[result3] = CompositeSimpson(a, b, n3);
disp(result3);

disp('n = 33');
[result4] = CompositeSimpson(a, b, n4);
disp(result4);