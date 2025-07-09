% Program P9_2
% Illustration of Aliasing Effect in the Time Domain
% Program adapted from [Kra94] with permission from
% The Mathworks, Inc., Natick, MA.
clf;
T = 0.1;f = 13;
n = (0:T:1)';
xs = cos(2*pi*f*n);

% Chnaging the range of t to cover the full span of ya(t)
t = linspace(min(n), max(n), 500)';
ya_original = sinc((1/T)*t(:,ones(size(n))) - (1/T)*n(:,ones(size(t)))')*xs;

plot(n,xs,'o',t,ya_original);
grid;
xlabel('Time, msec');
ylabel('Amplitude');
title('Reconstructed continuous-time signal y_{a}(t)');
axis([0 1 -1.2 1.2]);

%change frequency to 3Hz
f_3Hz = 3;
xs_3hz = cos(2*pi*f_3Hz*n);
ya_3Hz = sinc((1/T)*t(:,ones(size(n))) - (1/T)*n(:,ones(size(t)))')*xs_3hz;

%plotting the signal with 3hz
figure;
subplot(2,1,1);
plot(n,xs,'o',t,ya_3Hz);
grid;
xlabel('Time, msec');
ylabel('Amplitude');
title('Reconstructed continuous-time signal y_{a}(t) - Frrequency 3Hz');
axis([0 1 -1.2 1.2]);

%Change frequency to 7Hz
f_7Hz = 7;
xs_7hz = cos(2*pi*f_7Hz*n);
ya_7Hz = sinc((1/T)*t(:,ones(size(n))) - (1/T)*n(:,ones(size(t)))')*xs_7hz;

%plotting the signal with 3hz
figure;
subplot(2,1,2);
plot(n,xs,'o',t,ya_7Hz);
grid;
xlabel('Time, msec');
ylabel('Amplitude');
title('Reconstructed continuous-time signal y_{a}(t) - Frrequency 7Hz');
axis([0 1 -1.2 1.2]);