close all;
clc;

fprintf('\t <strong>Verification of Linearity property of DFT </strong>\n')
disp("Linearity");

x1=input('Enter the Input Sequence x1[n]:');
x2=input('Enter the Input Sequence x2[n]:');

N1=length(x1);
fprintf('Length of the x1[n]');
disp(N1);

N2=length(x2);
fprintf('Length of the x2[n]');
disp(N2);

a1=input('Enter the co-efficient of x1[n]');
a2=input('Enter the co-efficient of x2[n]');

a=a1*x1+a2*x2;
lhs=fft(a);
fprintf('The Lhs are:');
disp(lhs);

X1=fft(x1,N1);
X2=fft(x2,N2);
Y1=a1*X1;
Y2=a2*X2;
rhs=Y1+Y2;

fprintf('The Rhs are:');
disp(rhs);
if(lhs==rhs)
    fprintf('LHS=RHS');
else
    disp('Linearity not proved');
end 

%{
    output:
	            Verification of Linearity property of DFT 
Linearity
    Enter the Input Sequence x1[n]:[1 2 3 4]
    Enter the Input Sequence x2[n]:[5 6 7 8]
    Length of the x1[n]     4
    Length of the x2[n]     4

    Enter the co-efficient of x1[n]2
    Enter the co-efficient of x2[n]3

    The Lhs are:  98.0000 + 0.0000i -10.0000 +10.0000i -10.0000 + 0.0000i -10.0000 -10.0000i
    The Rhs are:  98.0000 + 0.0000i -10.0000 +10.0000i -10.0000 + 0.0000i -10.0000 -10.0000i

    LHS=RHS
%}