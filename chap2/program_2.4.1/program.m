clc
clear all;close all
delta_n = (0:1:20);
x_n = 0.5.^delta_n;
a = [1,1]; %分子
b = [1,-0.25,0.5]; %分母
z1 = filter(a,b,x_n);
z2 = impz(a,b,21);
subplot(3,1,1);
stem(x_n);
title('输入序列的时域波形');xlabel('n')
subplot(3,1,2)
stem(z1);
title('系统0~20区间的样值');xlabel('n')
subplot(3,1,3)
stem(z2);
title('系统零状态响应波形');xlabel('n')