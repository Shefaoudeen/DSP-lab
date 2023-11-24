close all;
clc;

fprintf('IIR-Butterworth Highpass Filter using impulse invariant transformation\n');
ap=input('Enter pass band ripple in db:');
as=input('Enter the stop band attenuation:');
wp=input('Enter the pass band edge frequency:');
ws=input('Enter the stop band edge frequency:');
Ts=input('Enter the sampling time period:');

omgp=(wp/Ts);
omgs=(ws/Ts);
[N,Wn]=buttord(omgp,omgs,ap,as,'s');

fprintf('The order of the filter is:\n');
disp(N);
fprintf('The cut-off frequency of the filter is:\n');
disp(Wn);
[num,den]=butter(N,Wn,'high','s');
[b,a]=impinvar(num,den,(1/Ts));

w=0:0.01:pi;
[h,ph]=freqz(b,a,w,'whole');
m=abs(h);
ang=angle(h);
subplot(2,2,1);
plot(ph/pi,20*log(m));
title('Butterworth IIR High  Filter');
xlabel('Normalised Frequency');
ylabel('Gain');

subplot(2,2,3);
plot(ph/pi,ang);
title('Butterworth IIR Filter');
xlabel('Normalised Frequency');
ylabel('Angle in Radians');

[N,Wn]=cheb1ord(omgp,omgs,ap,as,'s');
fprintf('The order of the filter is:\n');
disp(N);
fprintf('The cut-off frequency of the filter is:\n');
disp(Wn);
[num,den]=cheby1(N,ap,Wn,'high','s');
[b,a]=impinvar(num,den,(1/Ts));
w=0:0.01:pi;
[h,ph]=freqz(b,a,w,'whole');
m=abs(h);
ang=angle(h);

subplot(2,2,2);
plot(ph/pi,20*log(m));
title('Chebyshev IIR Filter');
xlabel('Normalised Frequency');
ylabel('Gain');

subplot(2,2,4);
plot(ph/pi,ang);
title('Chebyshev IIR Filter');
xlabel('Normalised Frequency');
ylabel('Angle in Radians');

%{
IIR-Butterworth Highpass Filter using impulse invariant transformation
Enter pass band ripple in db:4.436
Enter the stop band attenuation:20
Enter the pass band edge frequency:0.7*pi
Enter the stop band edge frequency:0.35*pi
Enter the sampling time period:0.1
The order of the filter is:
     3

The cut-off frequency of the filter is:
   23.6496

The order of the filter is:
     3

The cut-off frequency of the filter is:
   21.9911
%}
