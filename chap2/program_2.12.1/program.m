clc
clear all;close all
%% �����ź���ϵͳ����Ӧͼ
a = [0.3,0.06]; %����
b = [1,-1.1,0.55,-0.125]; %��ĸ
[H,w] = freqz(a,b,'whole');
subplot(2,1,1);
plot(w/pi,abs(H));
title('ϵͳ�ķ�Ƶ��Ӧ')
xlabel('\omega/\pi')
ylabel('|H(e^j^\omega)|')
subplot(2,1,2)
plot(w/pi,angle(H));
title('ϵͳ����Ƶ��Ӧ')
xlabel('\omega/\pi')
ylabel('\theta(e^j^\omega)')
%% ����ϵͳ���㼫��ͼ
figure();
zplane(a,b)
title('ϵͳ���㼫��ͼ')
%% ����ϵͳ�ĵ�λ������Ӧ
figure()
impz(a,b,30)
title('ϵͳ��λ������Ӧ')