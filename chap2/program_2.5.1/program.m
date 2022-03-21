clc
clear all;close all
%% 绘制信号与系统的响应图
a = [0.3,0.06]; %分子
b = [1,-1.1,0.55,-0.125]; %分母
[H,w] = freqz(a,b,'whole');
subplot(2,1,1);
plot(w/pi,abs(H));
title('系统的幅频响应')
xlabel('\omega/\pi')
ylabel('|H(e^j^\omega)|')
subplot(2,1,2)
plot(w/pi,angle(H));
title('系统的相频响应')
xlabel('\omega/\pi')
ylabel('\theta(e^j^\omega)')
%% 绘制系统的单位取样响应
figure();
impz(a,b,30);
title('系统的零极点图')
%% 绘制信号通过系统的输出信号
figure()
z = filter(a,b,ones(1,30));
stem(z);xlabel('n')
title('x(n)通过系统的输出响应')