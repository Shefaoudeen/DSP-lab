clc;
close all;
disp('Signal Manipulation');
N = input('Enter the total number of samples: ');
f1 = input('Enter the frequency of first signal: ');
f2 = input('Enter the frequency of second signal: ');
f3 = input('Enter the frequency of third signal: ');
fs = input('Enter the sampling frequency: ');

n = (0:N-1);
y1=sin(2*pi*(f1/fs)*n);
y2=sin(2*pi*(f2/fs)*n);
y3=sin(2*pi*(f3/fs)*n);

subplot(4,2,1);
plot(n,y1);
title('Signal-1');
xlabel('n');
ylabel('Amplitude');


subplot(4,2,3);
plot(n,y2);
title('Signal-2');
xlabel('n');
ylabel('Amplitude');

subplot(4,2,5);
plot(n,y3);
title('Signal-3');
xlabel('n');
ylabel('Amplitude');

nd =(20:N-1+20);
y1d = sin(2*pi*(f1/fs)*nd);
subplot(4,2,2);
plot(n,y1d);
title('Signal-1 Delayed by 20 samples');
xlabel('n');
ylabel('Amplitude');

na = (-10:N-1-10);
y2a = sin(2*pi*(f2/fs)*na);
subplot(4,2,4);
plot(n,y2a);
title('Signal-2 Advanced by 10 samples');
xlabel('n');
ylabel('Amplitude');

y4=y1+y2;
subplot(4,2,6);
plot(n,y4);
title('Signal-1 + Signal-2');
xlabel('n');
ylabel('Amplitude');


y5=y1.*y3;
subplot(4,2,7);
plot(n,y5);
title('Signal-1 + Signal-3');
xlabel('n');
ylabel('Amplitude');
