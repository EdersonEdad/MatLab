%Program P2_7
clf;
n1=input('Enter the minimum value'); 
n2=input('Enter the maximum value'); 
n0=input('Enter the value of n0'); 
[x,n] = stepseq(n0,n1,n2);
stem(n,x);
xlabel('n');ylabel('u(n)');
title('unit step');