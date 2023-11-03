clc;
close all;

fprintf('Sampling and Aliasing effect\n');
f1=input('Enter the frequency of frequency-1:');
f2=input('Enter the frequency of frequency-2:');
f3=input('Enter the frequency of frequency-3:');
fs=input('Enter the Sampling Frequency:');
N=input('Enter the no.of Samples:');

subplot(2,2,1);
n=(0:N-1);
signal=cos(2*pi*(f1/fs)*n)+cos(2*pi*(f2/fs)*n)+cos(2*pi*(f3/fs)*n);
[y,f]=pspectrum(signal,fs);
plot(f,y);
title('Power Density at fs=10khz');
xlabel('Frequency(Hz)');
ylabel('Power');

subplot(2,2,3);
fs=2*f3;
n=(0:N-1);
signal=cos(2*pi*(f1/fs)*n)+cos(2*pi*(f2/fs)*n)+cos(2*pi*(f3/fs)*n);
[y,f]=pspectrum(signal,fs);
plot(f,y);
title('Nquist sampled frequency');
xlabel('Frequency(Hz)');
ylabel('Power');

subplot(2,2,2);
fs=f3/1.5;
n=(0:N-1);
signal=cos(2*pi*(f1/fs)*n)+cos(2*pi*(f2/fs)*n)+cos(2*pi*(f3/fs)*n);
[y,f]=pspectrum(signal,fs);
plot(f,y);
title('Under sampled frequency');
xlabel('Frequency(Hz)');
ylabel('Power');

subplot(2,2,4);
fs=4*f3;
n=(0:N-1);
signal=cos(2*pi*(f1/fs)*n)+cos(2*pi*(f2/fs)*n)+cos(2*pi*(f3/fs)*n);
[y,f]=pspectrum(signal,fs);
plot(f,y);
title('Over sampled frequency');
xlabel('Frequency(Hz)');
ylabel('Power');





