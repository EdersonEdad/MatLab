x = [3, -1 ,1 ,4 ,2];
N = length(x);
X = zeros(N,1)
for k = 0:N-1
 for n = 0:N-1
 X(k+1) = X(k+1) + x(n+1)*exp(-i*pi/2*n*k)
 end
end
t = 0:N-1
subplot(311)
stem(t,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time domain - Input sequence')

subplot(312)
stem(t,X)
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response')

subplot(313)
stem(t,angle(X))
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase response')