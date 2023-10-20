clc;
close all;

x = input('Enter the input sequence: ');
spx = input('Enter the starting point of the sequence: ');

len = length(x);
subplot(2,1,1);
stem(spx:spx+len-1,x,'fill','r');
title('Sequence');
xlabel("n");
ylabel("X[n]");

[autocorr,lags] = xcorr(x);
lags;
autocorr;
subplot(2,1,2);
stem(lags,autocorr,'fill','b');
title('Autocorrelation of the Sequence');
xlabel("n");
ylabel("Y[n]");