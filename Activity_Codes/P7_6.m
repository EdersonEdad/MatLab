% Program P7_6
% Time Reversal Property of DTFT
% Clear figure and workspace
clf;

% Define the frequency range for DTFT evaluation
w = -pi:2*pi/255:pi; 

% Original sequence
num = [1,3,5,7,9,11,13];     
L = length(num) - 1; 

% Compute DTFT of the original sequence
h1 = freqz(num, 1, w); 

% Compute DTFT of the time-reversed sequence
h2 = freqz(fliplr(num), 1, w); 

% Adjust the phase of the time-reversed sequence
h3 = exp(w * L * 1i) .* h2; 

% Plot magnitude spectrum of the original sequence
subplot(2,2,1)
plot(w/pi, abs(h1)); grid
title('Magnitude Spectrum of Original Sequence')
xlabel('\omega/\pi'); 
ylabel('Magnitude'); 

% Plot magnitude spectrum of the time-reversed sequence
subplot(2,2,2)
plot(w/pi, abs(h3)); grid
title('Magnitude Spectrum of Time-Reversed Sequence')
xlabel('Frequency \omega/\pi'); 
ylabel('Magnitude'); 

% Plot phase spectrum of the original sequence
subplot(2,2,3)
plot(w/pi, angle(h1)); grid
title('Phase Spectrum of Original Sequence')
xlabel('Freqeuncy \omega/\pi'); 
ylabel('Phase (radians)'); 

% Plot phase spectrum of the time-reversed sequence
subplot(2,2,4)
plot(w/pi, angle(h3)); grid
title('Phase Spectrum of Time-Reversed Sequence')
xlabel('Frequency \omega/\pi'); 
ylabel('Phase (radians)'); 