clc;
clear all;
close all;

%Program for Circular convolution using discrete convolution expression

x=input('Enter the first sequence:');
n1=length(x);
h=input('Enter the second sequence:');
n2=length(h);

n=0:1:n1-1;

subplot(3,1,1);
stem(n,x);
xlabel('Time');
ylabel('Amplitude');
title('First sequence Response x[n]');
n=0:1:n2-1;

subplot(3,1,2);
stem(n,h);
xlabel('Time');
ylabel('Amplitude');
title('Second sequence Response x[n]');

n=n1+n2-1;
if n1>n2
    n3=n1-n2;
    h=[h,zeros(1,n3)];
elseif n2>n1;
    n3=n2-n1;
    x=[x,zeros(1,n3)];
end

x=[x,zeros(1,n-n1)]; 
h=[h,zeros(1,n-n2)];
for n=1:n;
    y(n)=0;
 for i=1:n
    j=n-i+1;
 if(j<=0)
    j=n+j;
 end 
    y(n)=y(n)+x(i)*h(j);  
 end
end

disp('Circular convolution of x & h is');
disp(y);

subplot(3,1,3);
stem(y);
xlabel('Time');
ylabel('Amplitude');
title('Circular Convoluted Sequence Response');