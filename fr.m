function []=fr(n,fn,T,D)
% fr calculates the fourier series of a function defined as syms x
% n = order of termination
% T = period
% D = domain of t
% fn = function defined in terms of syms x
% Example fr(n,fn,T,D)
ft=0.01;
t=0:ft:D;
w0=2*pi/T;
a0=(1/T)*int(fn,0, T);
syms x
for i=1:n
an(i)=(2/T)*int(fn*cos(i*w0*x),[0 T]);
bn(i)=(2/T)*int(fn*sin(i*w0*x),[0 T]);
end
v=1:n;
figure()
% stem(v,an)
% hold on
% stem(v,bn)
cn=(an.^2+bn.^2).^0.5;
stem(v,cn)
grid on
title('Amplitude spectra');
ylabel('cn\rightarrow');xlabel('n\rightarrow')
% legend('an','bn','cn')
for i=1:n
    for j=1:length(t)
    ann(j,i)=an(i)*cos(i*w0*t(j));
    bnn(j,i)=bn(i)*sin(i*w0*t(j));
    end
end
fs=a0+sum(ann,2)+sum(bnn,2);
figure()
plot(t,fs,'b')
title('Fourier series');
ylabel('func\rightarrow');xlabel('t\rightarrow')
grid on
hold on
or=subs(fn,x,t);
plot(t,or,'r')
legend('Fourier series','Original')
end