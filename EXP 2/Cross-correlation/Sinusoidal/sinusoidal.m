clc;
close all;

fprintf('Cross Correlation of two sinusoidal signal \n');

f1 = input('Enter the frequency of Signal-1: ');
f2 = input('Enter the frequency of Signal-2: ');
fs = input('Enter the sampling frequency: ');
N = input('Enter the number of samples: ');

n=(0:N-1);
subplot(3,1,1);
x=sin(2*pi*(f1/fs)*n);
plot(n,x);
title('Signal-1');
xlabel('n');
ylabel('X[n]');

subplot(3,1,2);
y=sin(2*pi*(f2/fs)*n);
plot(n,y);
title('Signal-2');
xlabel('n');
ylabel('Y[n]');

[corr,lags]=xcorr(x,y);

subplot(3,1,3);
plot(lags,corr);
title('Cross-Correlation');
xlabel('n');
ylabel('Z[n]');
