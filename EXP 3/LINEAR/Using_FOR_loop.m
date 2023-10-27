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

ly = lx+lh-1;

X = [x,zeros(1,(ly-lx))];
H = [h,zeros(1,(ly-lh))];

y = zeros(1,ly);

for i=1: ly
    for j=1:i
        y(i) = y(i)+[X(j)*H(i-j+1)];
    end
end

subplot(1,3,3);
stem(spx+sph:spx+sph+ly-1,y,'fill','b');
xlabel('Sample');
ylabel('Amplitude');
title('Linear Convolution using For loop');
