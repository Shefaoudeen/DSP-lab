clc;
close all;

disp('Random singals');
n = input('Enter the number of Samples: ');
y1 = rand(1,n);
y2 = randn(1,n);

plot(y1);
hold on;

plot(y2,'ro');
title('Random Signals');
xlabel('t');
ylabel('Amplitude');

legend('Uniform Distributed signal','Standard Normal Distributed signal');