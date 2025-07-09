clc;
clear all;
close all;

%Program to perform Linear Convolution using Circular Convolution

x1=input('Enter the first sequence to be convoluted:');
x2=input('Enter the second sequence to be convoluted:');

l1=length(x1);

subplot(3,1,1);
stem(x1);
xlabel('Time index');
ylabel('Amplitude');
title('First sequence');
l2=length(x2);

subplot(3,1,2);
stem(x2);
xlabel('Time');
ylabel('Amplitude');
title('Second sequence');

if l1>l2
    l3=l1-l2;
    x2=[x2,zeros(1,l3)];
    
elseif l2>l1;
    l3=l2-l1;
    x1=[x1,zeros(1,l3)];
end

n=l1+l2-1;
f=cconv(x1,x2,n);
disp('The convoluted convoluted sequence is');
disp(f);
subplot(3,1,3);
stem(f);
xlabel('Time index');
ylabel('Amplitude');
title('Convoluted sequence');