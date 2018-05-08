% 高斯消元法、列主元消元法测试
time = [];
dimension = [];
for i = 1:200
    dimension(i) = i;
     A = normrnd(600,1000,i,i);
    b = normrnd(600,1000,i,1);
    tic
   
    gauss_elim(A,b);
    toc
    time(i) = toc;
end
plot(dimension,time);
gtext('高斯消元法');
hold on

time1 = [];
dimension1 = [];
for i = 1:200
    dimension1(i) = i;
     A = normrnd(600,1000,i,i);
    b = normrnd(600,1000,i,1);
    tic
   
    gauss_elim_pro(A,b);
    toc
    time1(i) = toc;
end

plot(dimension1,time1);
gtext('列主元消元法');
