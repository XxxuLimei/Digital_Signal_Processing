clc
clear all;close all
%% ����ԭʼ�ź�
t = -0.02 : 1/100000 : 0.02;
N = 1000;
k = -N : N;
%W = k *1000/ N;
W = k * 2 * pi;
origin = sin(2* pi * 150 * t) + sin(2 * pi * 325 * t) + sin(2 * pi * 400 * t);% ԭʼ�ź�Ϊ�����źŵ���
origin_F = origin * exp(-1i * t' * W) * (1/100000);% ����Ҷ�任
origin_F = abs(origin_F);% ȡ��ֵ
figure;
subplot(4, 1, 1); plot(t, origin); title('ԭ�ź�ʱ��')
%% ��ԭʼ�źŽ���680Hz�����ʲ���
Nsampling = 1/680; % ����Ƶ��
t = -0.02 : Nsampling : 0.02;
f_680Hz = sin(2 * pi * 150 * t) + sin(2 * pi * 325 * t) + sin(2 * pi * 400 * t); %��������ź�
F_680Hz = f_680Hz * exp(-1i * t' * W) * Nsampling; % ������ĸ���Ҷ�任
F_680Hz = abs(F_680Hz);
subplot(4, 1, 2); stem(t, f_680Hz); title('680Hz�����ź�ʱ��');
%% ��ԭʼ�źŽ���900Hz�����ʲ���
Nsampling = 1/900; % ����Ƶ��
t = -0.02 : Nsampling : 0.02;
f_900Hz = sin(2 * pi * 150 * t) + sin(2 * pi * 325 * t) + sin(2 * pi * 400 * t); %��������ź�
F_900Hz = f_900Hz * exp(-1i * t' * W) * Nsampling; % ������ĸ���Ҷ�任
F_900Hz = abs(F_900Hz);
subplot(4, 1, 3); stem(t, f_900Hz); title('900Hz�����ź�ʱ��');
%% ��ԭʼ�źŽ���1000Hz�����ʲ���
Nsampling = 1/1000; % ����Ƶ��
t = -0.02 : Nsampling : 0.02;
f_1000Hz = sin(2 * pi * 150 * t) + sin(2 * pi * 325 * t) + sin(2 * pi * 400 * t); %��������ź�
F_1000Hz = f_1000Hz * exp(-1i * t' * W) * Nsampling; % ������ĸ���Ҷ�任
F_1000Hz = abs(F_1000Hz);
subplot(4, 1, 4); stem(t, f_1000Hz); title('1000Hz�����ź�ʱ��');
xlabel('t/s')
%% ����Ƶ����Ӧ
figure;
subplot(4, 1, 1); plot(W/(2*pi), origin_F); title('ԭ�ź�Ƶ��');
subplot(4, 1, 2); plot(W/(2*pi), F_680Hz); title('680Hz�����ź�Ƶ��');
subplot(4, 1, 3); plot(W/(2*pi), F_900Hz); title('900Hz�����ź�Ƶ��');
subplot(4, 1, 4); plot(W/(2*pi), F_1000Hz); title('1000Hz�����ź�Ƶ��');