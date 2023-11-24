close all;
clc;

fprintf('IIR-Butterworth Filter using Bilinear transformation');
ap=input('Enter pass band ripple in db:');
as=input('Enter the stop band attenuation:');
wp=input('Enter the pass band edge frequency:');
ws=input('Enter the stop band edge frequency:');
Ts=input('Enter the sampling time period:');
omgp=(2/Ts)*tan(wp/2);
omgs=(2/Ts)*tan(ws/2);
[N,Wn]=buttord(omgp,omgs,ap,as,'s');
fprintf('The order of the filter is:\n');
disp(N);
fprintf('The cut-off frequency of the filter is:\n');
disp(Wn);
[num,den]=butter(N,Wn,'high','s');
[b,a]=bilinear(num,den,(1/Ts));
w=0:0.01:pi;
[h,ph]=freqz(b,a,w,'whole');
m=abs(h);
ang=angle(h);

subplot(2,2,1);
plot(ph/pi,20*log10(m));
title('Butterworth IIR Filter');
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
[b,a]=bilinear(num,den,(1/Ts));
w=0:0.01:pi;
[h,ph]=freqz(b,a,w,'whole');
m=abs(h);
ang=angle(h);

subplot(2,2,2);
plot(ph/pi,20*log10(m));
title('Chebyshev IIR Filter');
xlabel('Normalised Frequency');
ylabel('Gain');

subplot(2,2,4);
plot(ph/pi,ang);
title('Chebyshev IIR Filter');
xlabel('Normalised Frequency');
ylabel('Angle in Radians');

%{
IIR-Butterworth Filter using Bilinear transformation

Enter pass band ripple in db:1
Enter the stop band attenuation:15
Enter the pass band edge frequency:0.2*pi
Enter the stop band edge frequency:0.3*pi
Enter the sampling time period:1
The order of the filter is:
     6

The cut-off frequency of the filter is:
    0.7662

The order of the filter is:
     4

The cut-off frequency of the filter is:
    0.6498
%}