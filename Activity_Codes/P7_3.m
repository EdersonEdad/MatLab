%Program P7_3
%Frequency-Shifting Properties of DTFT
clf;
% Frequency Range 
w = -pi:2*pi/255:pi; 
wo = 0.8*pi;   % this parameter controls the amount of frequency-shift

% Original Sequence
num1 = [-2, -1, 0, 1, 2];
L = length(num1);

% Computation of DFT (Original Sequence)
h1 = freqz(num1, 1, w);

%Time Index
n = 0:L-1;

% Computation of DFT (Frequency Shift Sequnece) 
num2 = exp(wo*i*n).*num1;
h2 = freqz(num2, 1, w);

% Plotting
subplot(2,2,1)
plot(w/pi, abs(h1));grid
title('Magnitude Spectrum of Original Sequence')
xlabel('Frequency (\omega/\pi)' );
ylabel('Magnitude');

subplot(2,2,2)
plot(w/pi, abs(h2));grid
title('Magnitude Spectrum of Frequency-Shifted Sequence')
xlabel('Frequency (\omega/\pi)' );
ylabel('Magnitude');


subplot(2,2,3)
plot(w/pi, angle(h1));grid
title('Phase Spectrum of Original Sequence')
xlabel('Frequency (\omega/\pi)' );
ylabel('Magnitude');


subplot(2,2,4)
plot(w/pi, angle(h2));grid
title('Phase Spectrum of Frequency-Shifted Sequence')
xlabel('Frequency (\omega/\pi)' );
ylabel('Magnitude');
