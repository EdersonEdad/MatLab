%Program P2_8
clf;
n1=1:50;
x1=cos(2*pi*0.05*n1);
subplot(3,1,1);
stem(n1,x1);
xlabel('n');ylabel('x1(n)');
title('signal #1');
n2=1:50;
x2=sin(2*pi*0.05*n2);
subplot(3,1,2);
stem(n2,x2);
xlabel('n');ylabel('x2(n)');
title('signal #2');
[y,n] = sigadd(x1,n1,x2,n2)
subplot(3,1,3);
stem(n,y);
xlabel('n');ylabel('y(n)');
title('Signal Addition');