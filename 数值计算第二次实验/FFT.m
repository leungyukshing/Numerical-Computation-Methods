function [c] = FFT(A)
    N = 1024; % 采样点数量
    p = 10; 
    W = exp(i*2*pi/N);

    for q=1:1:p
        T = A; % A(q-1)
        for k=0:1:2^(p-q)-1
            for j=0:1:2^(q-1)-1
                index1 = k*2^(q-1);
                temp1 = T(k*2^(q-1) + j + 1); % 运算前的A
                temp2 = T(k*2^(q-1) + j + 2^(p-1) + 1);
                A(k*2^q + j + 1) = temp1 + temp2;
                A(k*2^q + j + 2^(q-1) + 1) = (temp1 - temp2) * (W^index1);
            end
        end
    end
    c = A;
end