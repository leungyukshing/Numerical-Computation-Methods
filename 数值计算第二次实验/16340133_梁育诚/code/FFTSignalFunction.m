function [ S ] = FFTSignalFunction( t )
    S = 0.7*sin(2*pi*50*t) + 0.2*sin(2*pi*120*t);
end