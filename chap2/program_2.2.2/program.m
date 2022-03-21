clc
clear all;close all
%% 设置原始信号
t = -0.02 : 1/100000 : 0.02;
origin = sin(2* pi * 150 * t) + sin(2 * pi * 325 * t) + sin(2 * pi * 400 * t);% 原始信号为正弦信号叠加
figure;
subplot(4, 1, 1); plot(t, origin); title('原信号时域')
%% 恢复原始信号
% 从680Hz采样信号恢复
n = -100 : 100;
Nsampling = 1/680;
n_sam = n * Nsampling;
f_uncovery = sin(2 * pi * 150 * n_sam) + sin(2 * pi * 325 * n_sam) + sin(2 * pi * 400 * n_sam);
f_covery = f_uncovery * sinc((1/Nsampling) * (ones(length(n_sam), 1) * t - n_sam' * ones(1, length(t))));
subplot(4, 1, 2); plot(t, f_covery); title('680Hz信号恢复');
% 从900Hz采样信号恢复
Nsampling = 1/900;
n_sam = n * Nsampling;
f_uncovery = sin(2 * pi * 150 * n_sam) + sin(2 * pi * 325 * n_sam) + sin(2 * pi * 400 * n_sam);
f_covery = f_uncovery * sinc((1/Nsampling) * (ones(length(n_sam), 1) * t - n_sam' * ones(1, length(t))));
subplot(4, 1, 3); plot(t, f_covery); title('900Hz信号恢复');
% 从1000Hz采样信号恢复
Nsampling = 1/1000;
n_sam = n * Nsampling;
f_uncovery = sin(2 * pi * 150 * n_sam) + sin(2 * pi * 325 * n_sam) + sin(2 * pi * 400 * n_sam);
f_covery = f_uncovery * sinc((1/Nsampling) * (ones(length(n_sam), 1) * t - n_sam' * ones(1, length(t))));
subplot(4, 1, 4); plot(t, f_covery); title('1000Hz信号恢复');xlabel('t/s')