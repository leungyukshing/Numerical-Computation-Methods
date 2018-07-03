function [c] = FFT(A)
    N = 1024;
    p = 10;
    W = exp(i*2*pi/N);
    %A = rand(1,1024);

    for q=1:1:p
        B = A; % A(q-1)
        for k=0:1:2^(p-q)-1
            for j=0:1:2^(q-1)-1
                index1 = k*2^(q-1);
                temp1 = B(k*2^(q-1) + j + 1); % ‘ÀÀ„«∞µƒA
                temp2 = B(k*2^(q-1) + j + 2^(p-1) + 1);
                A(k*2^q + j + 1) = temp1 + temp2;
                A(k*2^q + j + 2^(q-1) + 1) = (temp1 - temp2) * (W^index1);
            end
        end
    end
    c = A;
end