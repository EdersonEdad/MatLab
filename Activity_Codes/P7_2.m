%Program P7_2
%Time-Shifting Properties of DTFT
clf;
N = 256;
w = -pi:2*pi/N:pi; 
wo = 0.4*pi; 
D1 = 10; % Original time shift value
D2 = 20; % New time shift value
num = [1 2 3 4 5 6 7 8 9];
h1 = fftshift(fft(num, N));

h2 = fftshift(fft([zeros(1,D2) num], N));

axis_freq = linspace(-pi, pi, N);

subplot(2,2,1)
plot(axis_freq, abs(h1));grid
title('Magnitude Spectrum of Original Sequence')
xlabel('Frequency (\Omega)');
ylabel('Magnitude');

subplot(2,2,2)
plot(axis_freq, abs(h2));grid
title('Magnitude Spectrum of Time-Shifted Sequence')
xlabel('Frequency (\Omega)');
ylabel('Magnitude');

subplot(2,2,3)
plot(axis_freq, angle(h1));grid
title('Phase Spectrum of Original Sequence')
xlabel('Frequency (\Omega)');
ylabel('Magnitude');

subplot(2,2,4)
plot(axis_freq, angle(h2));grid
title('Phase Spectrum of Time-Shifted Sequence')
xlabel('Frequency (\Omega)');
ylabel('Magnitude');
