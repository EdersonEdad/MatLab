N = 512;
n = 6; %Define the order of the filter
fc = input('Enter the cutoff frequency: ');
fs = input('Enter the sampling frequency: ');
Wc= 2*fc/fs; %Normalizing the frequencies

[b_butter, a_butter] = butter (n, Wc, 'high');

rp_cheby1 = 0.5;
[b_cheby1, a_cheby1] = cheby1(n, rp_cheby1, Wc, 'high');

rp_cheby2 = 20;
[b_cheby2, a_cheby2] = cheby2(n, rp_cheby2, Wc, 'high');

figure;
subplot(2, 1, 1);

[h_butter, w_butter] = freqz(b_butter, a_butter, N, fs);
plot(w_butter, 20*log10(abs(h_butter)), 'b');
hold on;

[h_cheby1, w_cheby1] = freqz(b_cheby1, a_cheby1, N, fs);
plot(w_cheby1, 20*log10(abs(h_cheby1)), 'r--');

[h_cheby2, w_cheby2] = freqz(b_cheby2, a_cheby2, N, fs);
plot(w_cheby2, 20*log10(abs(h_cheby2)), 'g-.');
hold off;

title('Magnitude Response of IIR Highpass Filters');
xlabel('Frequency (Hz)');
ylabel('magnitude (dB)');
grid on;

legend('Butterworth', 'Chebyshev-Type-1', 'Chebyshev-Type-2');


subplot(2, 1, 2);

plot(w_butter, unwrap(angle(h_butter)), 'b'); hold on;
plot(w_cheby1, unwrap(angle(h_cheby1)), 'r--');
plot(w_cheby2, unwrap(angle(h_cheby2)), 'g-.');
hold off;

title ('Phase Response of IIR Highpass filters');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');
grid on;

