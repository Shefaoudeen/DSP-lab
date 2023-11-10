close all;
clc;

fprintf('<strong>Verification of Parsversal theorem</strong>\n');
disp('Parsevals theorem');

x=input('Enter the Input Sequence x[n]:');
N=length(x);
fprintf('The legnth of the sequence:');
disp(N);

y=fft(x,N);
disp(y);

lhs=sum(abs(x).^2);
disp(lhs);
rhs=sum(abs(y).^2)/N;
disp(rhs);

if(lhs==rhs)
    fprintf('Hence proved Parsversal Theorem');
else
    disp('Parsversal theorem is not proved');
end    
    
%{
Verification of Parsversal theorem
Parsevals theorem
Enter the Input Sequence x[n]:[1 2 3 4 5]
The legnth of the sequence:     5

  15.0000 + 0.0000i  -2.5000 + 3.4410i  -2.5000 + 0.8123i  -2.5000 - 0.8123i  -2.5000 - 3.4410i

    55

    55

Hence proved Parsversal Theorem
%}
