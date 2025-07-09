% Bandpass IIR Filter Design and Comparison

clc; clear; close all;

% Filter Specifications
Fs = 10000; % Sampling frequency (Hz)
Fp = [1000 3000]; % Passband frequencies (Hz)
N = 6; % Filter order

% Normalize the passband frequencies
Wp = 2 * Fp / Fs;

% Butterworth Bandpass Filter
[b_butter, a_butter] = butter(N, Wp, 'bandpass');

% Chebyshev Type 1 Bandpass Filter
Rp = 0.5; % Passband ripple (dB)
[b_cheby1, a_cheby1] = cheby1(N, Rp, Wp, 'bandpass');

% Chebyshev Type 2 Bandpass Filter
Rs = 20; % Stopband ripple (dB)
[b_cheby2, a_cheby2] = cheby2(N, Rs, Wp, 'bandpass');

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
title('Bandpass IIR Filter - Magnitude Response');
legend('Butterworth', 'Chebyshev Type 1', 'Chebyshev Type 2');

% Plot Phase Responses
figure;
plot(f, angle(H_butter) * (180/pi), 'b', 'LineWidth', 1.5); hold on;
plot(f, angle(H_cheby1) * (180/pi), 'r', 'LineWidth', 1.5);
plot(f, angle(H_cheby2) * (180/pi), 'g', 'LineWidth', 1.5);
grid on; xlabel('Frequency (Hz)'); ylabel('Phase (degrees)');
title('Bandpass IIR Filter - Phase Response');
legend('Butterworth', 'Chebyshev Type 1', 'Chebyshev Type 2');