% ���Կ��ٸ���Ҷ�任

S = zeros(1024,1); % ������
for i = 1:length(t)
    S(i) = FFTSignalFunction(i-1);
end

c = FFT(S);

c_standard = fft(S);
figure(1)
plot(abs(c));
title('�Լ�д��FFT');

figure(2)
plot(abs(c_standard));
title('��׼FFT');
