%Program P2_12
clf;
A=input('Multiply the amplitude of the signal by: ');
n=0:5
x=n
subplot(2,1,1);
stem(n,x);
axis([-10 10 -15 12]);
xlabel('n');ylabel('x(n)');
title('Original signal');
[y,n] = sigamp(x,A,n);
subplot(2,1,2);
stem(n,y);
axis([-10 10 -15 12]);
xlabel('n');ylabel('y(n)');
title('Amplitude Scaling');