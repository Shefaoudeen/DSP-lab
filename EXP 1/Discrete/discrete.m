clc;
close all;

%%Impulse
disp('Unit Impulse Signal\n')
range = input('Enter the range of X-axis: ');
x_axis = (-range:1:range);
y_axis = [zeros(1,range),ones(1,1),zeros(1,range)];
subplot(3,2,1);
stem(x_axis,y_axis);
title('Unit Impulse signal');
xlabel('n');
ylabel('Amplitude')

%%Step
disp('\nUnit Step Signal\n')
range = input('Enter the range of X-axis: ');
x_axis = (-range:1:range);
y_axis = [zeros(1,range),ones(1,range+1)];
subplot(3,2,2);
stem(x_axis,y_axis);
title('Unit Step signal');
xlabel('n');
ylabel('Amplitude')

%%Ramp
disp('\nUnit Ramp Signal\n')
range = input('Enter the range of X-axis: ');
x_axis = (-range:1:range);
y_axis = [zeros(1,range),x_axis(range+1:2*range+1)];
subplot(3,2,3);
stem(x_axis,y_axis);
title('Unit Ramp signal');
xlabel('n');
ylabel('Amplitude')

%%Exponential
disp('\nDiscrete time exponential Signal\n')
range = input('Enter the time period: ');
A = input('\nEnter the pre-exponential factor: '); 
x_axis = (-range/2:0.1:range);
y_axis = A*exp(x_axis);
subplot(3,2,4);
stem(x_axis,y_axis);
title('Discrete time exponential signal');
xlabel('n');
ylabel('Amplitude')

%%Sinusoidal
disp('\nDiscrete time Sinusoidal Signal\n')
N = input('Enter the time period N: ');
A = input('\nEnter the Amplitude: ');
f = input('\nEnter the frequency: ');
x_axis = (0:0.1:N);
y_axis = A*sin(2*pi*f*x_axis);
subplot(3,2,5);
stem(x_axis,y_axis);
title('Discrete time Sinusoidal signal');
xlabel('n');
ylabel('Amplitude')


%%Cosine
disp('\nDiscrete time Cosine Signal\n')
N = input('Enter the time period N: ');
A = input('\nEnter the Amplitude: ');
f = input('\nEnter the frequency: ');
x_axis = (0:0.1:N);
y_axis = A*cos(2*pi*f*x_axis);
subplot(3,2,6);
stem(x_axis,y_axis);
title('Discrete time Cosine signal');
xlabel('n');
ylabel('Amplitude')
