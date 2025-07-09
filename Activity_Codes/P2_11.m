%Program P2_11
clf;
n=0:10;
x=n;
subplot(2,1,1);
stem(n,x);
axis([-11 11 0 11]);
xlabel('n');ylabel('x(n)');
title('Original signal');
[y,n] = sigfold(x,n);
subplot(2,1,2);
stem(n,y);
axis([-11 11 0 11]);
xlabel('n');ylabel('y(n)');
title('Folded signal');