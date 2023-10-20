clc;
close all;

%%Impulse
disp('Unit Impulse Signal')
range = input('Enter the range of X-axis: ');
x_axis = (-range:0.001:range);
y_axis = [zeros(1,1000*range),ones(1,1),zeros(1,1000*range)];
subplot(3,2,1);
plot(x_axis,y_axis);
title('Unit Impulse signal');
xlabel('t');
ylabel('Amplitude')

%%Step
disp('Unit Step Signal')
range = input('Enter the range of X-axis: ');
x_axis = (-range:0.0001:range);
y_axis = [zeros(1,10000*range),ones(1,10000*range+1)];
subplot(3,2,2);
plot(x_axis,y_axis);
title('Unit Step signal');
xlabel('t');
ylabel('Amplitude')

%%Ramp
disp('Unit Ramp Signal')
range = input('Enter the range of X-axis: ');
x_axis = (-range:1:range);
y_axis = [zeros(1,range),x_axis(range+1:2*range+1)];
subplot(3,2,3);
plot(x_axis,y_axis);
title('Unit Ramp signal');
xlabel('t');
ylabel('Amplitude')

%%Exponential
disp('Discrete time exponential Signal')
range = input('Enter the time period: ');
A = input('Enter the pre-exponential factor: '); 
x_axis = (-range/2:0.1:range);
y_axis = A*exp(x_axis);
subplot(3,2,4);
plot(x_axis,y_axis);
title('Continuous time exponential signal');
xlabel('t');
ylabel('Amplitude')

%%Sinusoidal
disp('Continuous time Sinusoidal Signal')
N = input('Enter the time period N: ');
A = input('\nEnter the Amplitude: ');
f = input('\nEnter the frequency: ');
x_axis = (0:0.001:N);
y_axis = A*sin(2*pi*f*x_axis);
subplot(3,2,5);
plot(x_axis,y_axis);
title('Continuous time Sinusoidal signal');
xlabel('t');
ylabel('Amplitude')


%%Cosine
disp('\nContinuous time Cosine Signal\n')
N = input('Enter the time period N: ');
A = input('\nEnter the Amplitude: ');
f = input('\nEnter the frequency: ');
x_axis = (0:0.0001:N);
y_axis = A*cos(2*pi*f*x_axis);
subplot(3,2,6);
plot(x_axis,y_axis);
title('Continuous time Cosine signal');
xlabel('t');
ylabel('Amplitude')
