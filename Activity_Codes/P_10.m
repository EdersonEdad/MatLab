%Program P2_10
clf;
m=input('Number of delay(+)/ advance(-) signal: ');
n0=0:7;
x=n0; 
subplot(2,1,1);
stem(n0,x);
axis([-10 10 0 10]);
xlabel('n');ylabel('x(n)');
title('Original signal');
[y,n] = sigshift(x,m,n0);
subplot(2,1,2);
stem(n,y);
axis([-10 10 0 10]);
xlabel('n');ylabel('y(n)');
title('Shifted signals');