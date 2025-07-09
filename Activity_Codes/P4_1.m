clf;
N = 1000; 
x = linspace(-1,1,N);
f = sign(x);
sum = 0.*x;
M = input('Number of coefficient (M):'); 
for j = 1:2:M
sum = sum + 4/pi*sin(j*pi*x)/j;
end
subplot(2,1,1);
plot(x, sum, 'r')
xlabel('Time index n');ylabel('Amplitude'); 
title('Fourier Series with M=1000'); 
hold on
plot(x,f,'LineWidth',2)
hold on
subplot(2,1,2);
error = abs(sum-f);
plot(x,error);
xlabel('Time index n');ylabel('error'); 
title('Error with M=1');    