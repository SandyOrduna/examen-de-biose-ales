clear all; clc; close all;
Wp=3000/30050;
Ws=8000/30050;
Rp=3;
Rs=25;
[N, Wn] = buttord(Wp, Ws, Rp, Rs)

N
Wn

[B,A] = butter(N,Wn)
[H,W] = freqz(B,A,1000)

plot(W./pi,abs(H))
plot(W./pi,20*log(abs(H)))

i=1:512;x(i)=0; x(255)=1;
Y=filter(B,A,x);
plot(Y)



