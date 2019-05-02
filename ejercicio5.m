clear all; clc; close all;
fs=4;
ts=1/fs;
T=500;
N=T*fs;
t=0:ts:(N-1)/fs;
x=(5+(2*cos(2*pi.*t-90)))+(3*cos(4*pi.*t));
L=length(x);
nfft=2^nextpow2(L);
Y=fft(x,nfft)/L;
YY=2*abs(Y(1:nfft/2+1))
FF=fs/2*linspace(0,1,nfft/2+1)
plot (FF,abs(YY))


