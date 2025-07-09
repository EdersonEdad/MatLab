% Program P9_1
% Illustration of the Sampling Process in the Time Domain
clf;
t = 0:0.0005:1;
f = 13; % frequency
xa = cos(2*pi*f*t);
subplot(3,1,1)
plot(t,xa);grid
xlabel('Time, msec');ylabel('Amplitude');
title('Continuous-time signal x_{a}(t)');
axis([0 1 -1.2 1.2])

subplot(3,1,2);
T = 0.1; % sampling period
n = 0:T:1;
xs = cos(2*pi*f*n);
k = 0:length(n)-1;
stem(k,xs); grid
xlabel('Time index n');ylabel('Amplitude');
title('Discrete-time signal x[n]');
axis([0 (length(n)-1) -1.2 1.2])

%lower sampling
subplot(3,1,3);
T_lower = 0.05; %lower sampling period
n_lower = 0:T_lower:1;
xs_lower = cos(2*pi*f*n_lower);
k_lower = 0:length(n_lower)-1;
stem(k_lower, xs_lower); grid
xlabel('Time index n');ylabel('Amplitude');
title('Discrete-time signal x[n] (Lower T)');

%Higher sampling period
figure;
subplot(2,1,1);
T_higher = 0.2; % higher sampling period
n_higher = 0:T_higher:1;
xs_higher = cos(2*pi*f*n_higher);
k_higher = 0:length(n_higher)-1; 
stem(k_higher, xs_higher); grid; 
xlabel('Time index n');
ylabel('Amplitude');
title('Discrete-time signal x[n] (Higher T)');
