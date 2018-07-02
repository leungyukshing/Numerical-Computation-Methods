function [c] = FFT()
    N = 1024;
    p = 10;
    W = exp(-i*2*pi/N);
    A = rand(1,1024);

    for q=1:1:p
        B = 2^(q-1); % 间隔
        K = N / (2^q);
        for k=0:1:K-1
            for j=0:1:B-1
                index1 = j*2^(p-q);
                temp = A(k*2^q + j + 1); % 运算前的A
                A(k*2^q + j + 1) = temp + W^index1*A(k*2^q + j + B + 1);
                %A(k*2^q + j + 1) =  W^index1;
                A(k*2^q + j + B + 1) = temp - W^index1*A(k*2^q+j+B+1);
            end
        end
    end
    disp()
end