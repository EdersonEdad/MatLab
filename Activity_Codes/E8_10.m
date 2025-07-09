% Highstop IIR Filter Design and Comparison

clc; clear; close all;

% Filter Specifications
Fs = 8000; % Sampling frequency (Hz)
Fstop = [1000 3000]; % Stopband frequencies (Hz)
N = 6; % Filter order

% Normalize the stopband frequencies
Ws = 2 * Fstop / Fs;

% Butterworth Highstop Filter
[b_butter, a_butter] = butter(N, Ws, 'stop');

% Chebyshev Type 1 Highstop Filter
Rp = 0.5; % Passband ripple (dB)
[b_cheby1, a_cheby1] = cheby1(N, Rp, Ws, 'stop');

% Chebyshev Type 2 Highstop Filter
Rs = 20; % Stopband ripple (dB)
[b_cheby2, a_cheby2] = cheby2(N, Rs, Ws, 'stop');

% Frequency Response
[H_butter, f] = freqz(b_butter, a_butter, 1024, Fs);
[H_cheby1, ~] = freqz(b_cheby1, a_cheby1, 1024, Fs);
[H_cheby2, ~] = freqz(b_cheby2, a_cheby2, 1024, Fs);

% Plot Magnitude Responses
figure;
plot(f, 20*log10(abs(H_butter)), 'b', 'LineWidth', 1.5); hold on;
plot(f, 20*log10(abs(H_cheby1)), 'r', 'LineWidth', 1.5);
plot(f, 20*log10(abs(H_cheby2)), 'g', 'LineWidth', 1.5);
grid on; xlabel('Frequency (Hz)'); ylabel('Magnitude (dB)');
title('Highstop IIR Filter - Magnitude Response');
legend('Butterworth', 'Chebyshev Type 1', 'Chebyshev Type 2');

% Plot Phase Responses
figure;
plot(f, angle(H_butter) * (180/pi), 'b', 'LineWidth', 1.5); hold on;
plot(f, angle(H_cheby1) * (180/pi), 'r', 'LineWidth', 1.5);
plot(f, angle(H_cheby2) * (180/pi), 'g', 'LineWidth', 1.5);
grid on; xlabel('Frequency (Hz)'); ylabel('Phase (degrees)');
title('Highstop IIR Filter - Phase Response');
legend('Butterworth', 'Chebyshev Type 1', 'Chebyshev Type 2');