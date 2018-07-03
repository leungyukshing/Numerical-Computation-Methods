t = zeros(1024,1);
S = zeros(1024,1);
for i = 1:length(t)
    t(i) = 2 * pi * (i-1) / 1024;
    S(i) = FFTSignalFunction(i-1);
end

c = FFT(S);

T = zeros(1024,1);
for i = 0:length(t)-1
    T(i+1) = real(c(1))/2;
    for k = 1:length(t)-2
        T(i+1) = T(i+1) + real(c(k+1))*cos(k * t(i+1)) + imag(c(k+1))*sin(k * t(i+1));
    end
    T(i+1) = T(i+1) + real(c(length(c))) * cos(length(c) * t(i+1));
end

figure(1)
plot(t,S);
figure(2)
plot(t,T);

