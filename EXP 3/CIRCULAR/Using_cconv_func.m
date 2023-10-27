clc;
close all;

x = input('Enter the input Sequence 1 : ');
spx = input('Enter the starting point of sequence 1 : ');
lx = length(x);
subplot(1,3,1);
stem(spx:spx+lx-1,x,'fill','r');
xlabel('Sample');
ylabel('Amplitude');
title('Input Sequence 1');

h = input('Enter the input Sequence 2 : ');
sph = input('Enter the starting point of sequence 2 : ');
lh = length(h);
subplot(1,3,2);
stem(sph:sph+lh-1,h,'fill','g');
xlabel('Sample');
ylabel('Amplitude');
title('Input Sequence 2');

y = cconv(x,h);
ly = length(y);
subplot(1,3,3);
stem(spx+sph:spx+sph+ly-1,y);
xlabel('Sample');
ylabel('Amplitude');
title('Circular Convolution');
