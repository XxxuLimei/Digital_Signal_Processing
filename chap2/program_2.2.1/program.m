clc
clear all;close all
%% 设置原始信号
t = -0.02 : 1/100000 : 0.02;
N = 1000;
k = -N : N;
%W = k *1000/ N;
W = k * 2 * pi;
origin = sin(2* pi * 150 * t) + sin(2 * pi * 325 * t) + sin(2 * pi * 400 * t);% 原始信号为正弦信号叠加
origin_F = origin * exp(-1i * t' * W) * (1/100000);% 傅里叶变换
origin_F = abs(origin_F);% 取正值
figure;
subplot(4, 1, 1); plot(t, origin); title('原信号时域')
%% 对原始信号进行680Hz采样率采样
Nsampling = 1/680; % 采样频率
t = -0.02 : Nsampling : 0.02;
f_680Hz = sin(2 * pi * 150 * t) + sin(2 * pi * 325 * t) + sin(2 * pi * 400 * t); %采样后的信号
F_680Hz = f_680Hz * exp(-1i * t' * W) * Nsampling; % 采样后的傅里叶变换
F_680Hz = abs(F_680Hz);
subplot(4, 1, 2); stem(t, f_680Hz); title('680Hz采样信号时域');
%% 对原始信号进行900Hz采样率采样
Nsampling = 1/900; % 采样频率
t = -0.02 : Nsampling : 0.02;
f_900Hz = sin(2 * pi * 150 * t) + sin(2 * pi * 325 * t) + sin(2 * pi * 400 * t); %采样后的信号
F_900Hz = f_900Hz * exp(-1i * t' * W) * Nsampling; % 采样后的傅里叶变换
F_900Hz = abs(F_900Hz);
subplot(4, 1, 3); stem(t, f_900Hz); title('900Hz采样信号时域');
%% 对原始信号进行1000Hz采样率采样
Nsampling = 1/1000; % 采样频率
t = -0.02 : Nsampling : 0.02;
f_1000Hz = sin(2 * pi * 150 * t) + sin(2 * pi * 325 * t) + sin(2 * pi * 400 * t); %采样后的信号
F_1000Hz = f_1000Hz * exp(-1i * t' * W) * Nsampling; % 采样后的傅里叶变换
F_1000Hz = abs(F_1000Hz);
subplot(4, 1, 4); stem(t, f_1000Hz); title('1000Hz采样信号时域');
xlabel('t/s')
%% 绘制频域响应
figure;
subplot(4, 1, 1); plot(W/(2*pi), origin_F); title('原信号频域');
subplot(4, 1, 2); plot(W/(2*pi), F_680Hz); title('680Hz采样信号频域');
subplot(4, 1, 3); plot(W/(2*pi), F_900Hz); title('900Hz采样信号频域');
subplot(4, 1, 4); plot(W/(2*pi), F_1000Hz); title('1000Hz采样信号频域');