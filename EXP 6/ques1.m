close all;
clc;

fprintf('\t <strong> Computation of 8-point DFT </strong> \n');
x = input('Enter the input sequence x[n] = ' );
N = length(x);
fprintf('\t <strong> Length of the input sequence : </strong> \n');
disp(N);
t=0:N-1;

subplot(3,3,1);
fprintf("<strong> Input sequence : </strong>\n");
disp(x);
stem(t,x,'red');
title('Input Sequence');
xlabel('n');
ylabel('value');

x_real = real(x);
fprintf("Real Value of Input sequence : ");
disp(x_real);
subplot(3,3,2);
stem(t,x_real,'red');
title('Input - Real sequence');
xlabel('n');
ylabel('value');

x_img = imag(x);
fprintf("Imaginary Value of Input sequence : ");
disp(x_img);
subplot(3,3,3);
stem(t,x_img);
title('Input - Imaginary sequence');
xlabel('n');
ylabel('value');

dft = fft(x,N);
fprintf('<strong>DFT of Input sequence : </strong>')
disp(dft);
subplot(3,3,4);
stem(t,dft,'red');
title('DFT');
xlabel('n');
ylabel('Value');

mag =abs(dft);
fprintf('Magnitude of the DFT sequence: ');
disp(mag);
subplot(3,3,5);
stem(t,mag,'green');
title('Magnitude sequence');
xlabel('n');
ylabel('Magnitude');

phase = angle(dft);
disp('Phase of the DFT sequence: ');
fprintf('\t Phase Angle in Radians: ');
disp(phase);
phaseang = rad2deg(phase);
fprintf('\t Phase Angle in Degree : ');
disp(phaseang)
subplot(3,3,6);
stem(t,phaseang,'green');
title('Phase Angle sequence');
xlabel('n');
ylabel('Degree');

idft = ifft(dft);
fprintf('<strong>IDFT of input sequence</strong>');
disp(idft)
subplot(3,3,7);
stem(t,idft);
title('IDFT sequence');
xlabel('n');
ylabel('Value');

idft_real = real(idft);
fprintf('Real Value of IDFT: ');
disp(idft_real)
subplot(3,3,8);
stem(t,idft_real);
title('IDFT real sequence');
xlabel('n');
ylabel('Value');

idft_imag = imag(idft);
fprintf('Imaginery Value of IDFT: ');
disp(idft_imag)
subplot(3,3,9);
stem(t,idft_imag, 'green');
title('IDFT Imaginery sequence');
xlabel('n');
ylabel('Value');




%{
Computation of 8-point DFT  
Enter the input sequence x[n] = [1+i 1+i 1+i 1+i 0 0 0 0]
	  Length of the input sequence :  
     8

 Input sequence : 
   1.0000 + 1.0000i   1.0000 + 1.0000i   1.0000 + 1.0000i   1.0000 + 1.0000i   0.0000 + 0.0000i   0.0000 + 0.0000i   0.0000 + 0.0000i   0.0000 + 0.0000i
 
Real Value of Input sequence :      1     1     1     1     0     0     0     0

Imaginary Value of Input sequence :      1     1     1     1     0     0     0     0

DFT of Input sequence :   Columns 1 through 7

   4.0000 + 4.0000i   3.4142 - 1.4142i   0.0000 + 0.0000i   1.4142 + 0.5858i   0.0000 + 0.0000i   0.5858 + 1.4142i   0.0000 + 0.0000i

  Column 8

  -1.4142 + 3.4142i

Magnitude of the DFT sequence:     5.6569    3.6955         0    1.5307         0    1.5307         0    3.6955

Phase of the DFT sequence: 
	 Phase Angle in Radians:     0.7854   -0.3927         0    0.3927         0    1.1781         0    1.9635

	 Phase Angle in Degree :    45.0000  -22.5000         0   22.5000         0   67.5000         0  112.5000

IDFT of input sequence  Columns 1 through 7

   1.0000 + 1.0000i   1.0000 + 1.0000i   1.0000 + 1.0000i   1.0000 + 1.0000i   0.0000 + 0.0000i   0.0000 + 0.0000i   0.0000 + 0.0000i

  Column 8

   0.0000 + 0.0000i

Real Value of IDFT:      1     1     1     1     0     0     0     0

Imaginery Value of IDFT:      1     1     1     1     0     0     0     0

%}