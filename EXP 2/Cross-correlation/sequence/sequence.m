clc;
close all;

fprintf('Cross Correlation of two sequences \n')
x1 = input('Enter the input sequence-1: ');
spx1 = input('Enter the starting point of the sequence: ');

x2 = input('Enter the input sequence-2: ');
spx2 = input('Enter the starting point of the sequence: ');

len1 = length(x1);
len2 = length(x2);

subplot(3,1,1);
stem(spx1:spx1+len1-1,x1,'fill','r');
title('Sequence-1');
xlabel("n");
ylabel("X[n]");

subplot(3,1,2);
stem(spx2:spx2+len2-1,x2,'fill','r');
title('Sequence-2');
xlabel("n");
ylabel("Y[n]");

[autocorr,lags] = xcorr(x1,x2);
lags;
autocorr;

subplot(3,1,3);
stem(lags,autocorr,'fill','b');
title('Cross Correlation of the Sequence');
xlabel("n");
ylabel("Z[n]");