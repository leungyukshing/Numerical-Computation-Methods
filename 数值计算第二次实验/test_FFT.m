% 测试快速傅里叶变换

S = zeros(1024,1); % 采样点
for i = 1:length(t)
    S(i) = FFTSignalFunction(i-1);
end

c = FFT(S);

c_standard = fft(S);
figure(1)
plot(abs(c));
title('自己写的FFT');

figure(2)
plot(abs(c_standard));
title('标准FFT');
