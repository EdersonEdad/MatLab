% Program P7_1
% Evaluation of the DTFT
clf;
% Compute the frequency samples of the DTFT
w = 0:8*pi/511:pi;
num = [0.7 -0.5*exp(-1i*w) + 0.3*exp(-2i*w) + exp(-3i*w)];
den = [1 + 0.3*exp(-1i*w) - 0.5*exp(-2i*w) + 0.7*exp(-3i*w)];
h = freqz(num, den, w);

unwrap_phase = unwrap(angle(h));
subplot(1,1,1) 
plot(w/pi, unwrap_phase);grid
title('Phase spectrum arg[H(e^{j\omega})] phase_unwrapped')
xlabel('\omega /\pi');
xlim([0,1]);
ylabel('Phase (radians)');
