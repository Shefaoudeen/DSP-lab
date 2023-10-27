clc;
close all;

x = input('Enter the input Sequence 1 : ');
spx = input('Enter the starting point of sequence 1 : ');
lx = length(x);
subplot(1,3,1);
stem(spx:spx+lx-1,x,'r');
xlabel('Sample');
ylabel('Amplitude');
title('Input Sequence 1');

h = input('Enter the input Sequence 2 : ');
sph = input('Enter the starting point of sequence 2 : ');
lh = length(h);
subplot(1,3,2);
stem(sph:sph+lh-1,h,'g');
xlabel('Sample');
ylabel('Amplitude');
title('Input Sequence 2');

ly = lx+lh-1;

X = [x,zeros(1,(ly-lx))];
H = [h,zeros(1,(ly-lh))];

circfft = ifft(fft(X).*fft(H));

subplot(1,3,3);
stem(spx+sph:spx+sph+ly-1,circfft,'fill','b');
xlabel('Sample');
ylabel('Amplitude');
title('Circular Convolution using For loop');
