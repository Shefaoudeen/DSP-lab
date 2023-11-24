clc;
close all;

fprintf('\t IIR - chebyshev Bandstop filter using impulse invariant Transformation\n');
Ap = input('Enter stop band ripple in db, Ap: ');
As = input('Enter stop band attenuation in db, As: ');
Wpl = input('Enter lower passband edge frequency in rad: ');
Wpu = input('Enter upper passband edge frequency in rad: ');
Wsl = input('Enter lower stopband edge frequency in rad: ');
Wsu = input('Enter upper stopband edge frequency in rad: ');

Fs = input('Enter the sampling frequency in Hz, Fs: ');

Wp = [Wpl Wpu];
Ws = [Wsl Wsu];

omgp = (Wp * Fs);
omgs = (Ws * Fs);

[N, Wn] = cheb1ord(omgp,omgs, Ap, As , 's');

fprintf('\n');

disp('Chebyshev IIR BSF Filter');
fprintf('Order, N = ');
disp(N);
fprintf('Cutoff edge frequency, Wn = ');
disp(Wn)

[num,den] = cheby1(N,Ap, Wn, 'stop', 's');
[B,A] = impinvar(num, den, Fs);
W = 0:0.01:pi;
[h,ph] = freqz(B,A,W,'whole');
m = abs(h);
an = angle(h);

subplot(2,1,1);
plot(ph/pi, 20*log(m));
title('Butterworth IIR BSF filter - magnitude respones');
xlabel('Normalised frequency');
ylabel('Gain in dB');
subplot(2,1,2);
plot(ph/pi, an);
title('Butterworth IIR BPF filter - phase respones');
xlabel('Normalised frequency');
ylabel('Angle in Radians');


%{
IIR - Butterworth Bandpass filter using Bilinear Transformation
Enter stop band ripple in db, Ap: 3
Enter stop band attenuation in db, As: 18
Enter lower passband edge frequency in rad: 0.4*pi
Enter upper passband edge frequency in rad: 0.6*pi
Enter lower stopband edge frequency in rad: 0.1*pi
Enter upper stopband edge frequency in rad: 0.9*pi
Enter the sampling frequency in Hz, Fs: 500

Butterworth IIR BPF Filter
Order, N =      1

Cutoff edge frequency, Wn =    1.0e+03 *

    0.6830    1.4641
%}

