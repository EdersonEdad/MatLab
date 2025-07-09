% Program P9_1
% Illustration of the Sampling Process in the Time Domain
clf;
t = 0:0.0005:1;
f_3hz = 3; % frequency
xa_3hz = cos(2*pi*f_3hz*t);
subplot(3,2,1)
plot(t,xa_3hz);grid
xlabel('Time, msec');ylabel('Amplitude');
title('Continuous-time signal x_{a}(t)- 3 Hz');
axis([0 1 -1.2 1.2])

T = 0.1; % original sampling period
n = 0:T:1;
xs = cos(2*pi*f_3hz*n);
k = 0:length(n)-1;
subplot(3,2,2);
stem(k,xs); grid
xlabel('Time index n');ylabel('Amplitude');
title('Discrete-time signal x[n] - 3 Hz (Original T)');

%frequency = 7Hz
t = 0:0.0005:1;
f_7hz = 7; % frequency
xa_7hz = cos(2*pi*f_7hz*t);
subplot(3,2,3)
plot(t,xa_7hz);grid
xlabel('Time, msec');ylabel('Amplitude');
title('Continuous-time signal x_{a}(t)- 7 Hz');
axis([0 1 -1.2 1.2])
xs_7hz = cos(2*pi*f_7hz*n)
subplot(3,2,4);
stem (k, xs_7hz);grid
xlabel('Time index n');ylabel('Amplitude');
title('Discrete-time signal x[n] - 7 Hz (Original T)');

subplot(3,2,5:6);
t = 0:0.0005:1;
f = 13; % frequency
xa = cos(2*pi*f*t);
plot(t, xa);grid
xlabel('Time, mesc');ylabel('Amplitude');
title('Discrete-time signal x_(a)(t) - 13 Hz');
axis([0 1 -1.2 1.2])