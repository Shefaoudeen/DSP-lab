clc;
close all;

disp('Auto correlation of two signals:');
f1=input('Enter the frequency:');
fs=input('Enter the sampled frequency:');
N=input('Enter the no.of samples:');

t=(0:0.01:7);

subplot(3,1,1);
y1=sin(2*pi*f1*t);
plot(t,y1);
title('Input Signal');
xlabel('t');
ylabel('x(t)');

n=(0:N-1);

subplot(3,1,2);
y2=sin(2*pi*(f1/fs)*n);
plot(n,y2);
title('Sampled Signal');
xlabel('n');
ylabel('x[n]');

subplot(3,1,3);
[autocorr,lags]=xcorr(y2);
plot(lags,autocorr);
title('Auto-corelation of  Signal');
xlabel('n');
ylabel('y[n]');