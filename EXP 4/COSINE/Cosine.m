clc;
close all;

fprintf('Verification of Sampling Theorem\n');
f = input('Enter the frequency of the Cosine signal: ');
subplot(2,2,1);
t = (-3:0.01:3);
signal = 2*cos(2*pi*f*t);
plot(t,signal);
title('Cosine Signal');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,2,2);
fus = f/1.5;
t = (-3*fus:0.1:3*fus);
signal_undersampled = 2*cos(2*pi*(f/fus)*t);
stem(t/fus,signal_undersampled, 'b');
hold on;
plot(t/fus, signal_undersampled, 'r' , 'LineWidth', 0.75);
title('Cosine Signal - Undersampled');
xlabel('Time(t)');
ylabel('Amplitude');

subplot(2,2,3);
fns = 2*f;
t = (-3*fns:0.1:3*fns);
signal_nquist = 2*cos(2*pi*(f/fns)*t);
stem(t/fns,signal_nquist, 'b');
hold on;
plot(t/fns, signal_nquist, 'r' , 'LineWidth', 0.75);
title('Cosine Signal - Nquist sampled');
xlabel('n');
ylabel('Amplitude');

subplot(2,2,4);
fos = 4*f;
t = (-3*fos:0.1:3*fos);
signal_oversampled = 2*cos(2*pi*(f/fos)*t);
stem(t/fos,signal_oversampled, 'b');
hold on;
plot(t/fos, signal_oversampled, 'r' , 'LineWidth', 0.75);
title('Cosine Signal - Oversampled');
xlabel('n');
ylabel('Amplitude');

fprintf("\nUndersampling => Sampling freq : " + fus + "\n");
fprintf("\nNquistsampling => Sampling freq : " + fns + "\n");
fprintf("\nOversampling => Sampling freq : " + fos + "\n");