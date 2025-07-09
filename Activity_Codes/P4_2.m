X = [5, 3-2j, -3, 3+2j]; 
N = length(X);
x = zeros(N,1); 

for n = 0:N-1
    for k = 0:N-1
        x(n+1) = x(n+1) + (1/N) * X(k+1) * exp(i * 2 * pi * k * n / N);
    end
end
t = 0:N-1;
subplot(311);
stem(t,abs(X));
xlabel('Frequency');
ylabel('|X(k)|');
title('Frequency domain - Magnitude response');

subplot(312);
stem(t,angle(X));
xlabel('Frequency');
ylabel('Phase');
title('Frequency domain - Phase response');

subplot(313);
stem(t,real(x)); 
xlabel('Time (s)');
ylabel('Amplitude');
title('Time domain - Inverse (DFT)');
