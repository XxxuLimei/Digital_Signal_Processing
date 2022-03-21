clc
clear all;close all
N = 5;N0 = 50;N1 = round((N0-N)/2);
xn = [zeros(1,N1),ones(1,N),zeros(1,N1)];
n = (-N1:1:N1+N-1);
w = ((0:1:500)-round(501/2))*4*pi/500;
xe = exp(-1j*w'*n)*xn';
subplot(2,1,1);
stem(n,xn);
title('矩形序列的x(n)');xlabel('n')
subplot(2,1,2)
plot(w/pi,abs(xe));
title('矩形序列的幅度谱函数');grid on
xlabel('\omega / \pi');ylabel('|X(e^j^\omega)|')