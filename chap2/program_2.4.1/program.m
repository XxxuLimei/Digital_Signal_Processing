clc
clear all;close all
delta_n = (0:1:20);
x_n = 0.5.^delta_n;
a = [1,1]; %����
b = [1,-0.25,0.5]; %��ĸ
z1 = filter(a,b,x_n);
z2 = impz(a,b,21);
subplot(3,1,1);
stem(x_n);
title('�������е�ʱ����');xlabel('n')
subplot(3,1,2)
stem(z1);
title('ϵͳ0~20�������ֵ');xlabel('n')
subplot(3,1,3)
stem(z2);
title('ϵͳ��״̬��Ӧ����');xlabel('n')