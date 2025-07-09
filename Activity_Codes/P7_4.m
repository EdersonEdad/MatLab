%Program P7_4
%Convolution Property of DTFT
clf;

% Frequency Range
w = -pi:2*pi/255:pi;

% Input Sequence
x1 = [1,2,3,4,5];
x2 = [6,7,8,9,10];

% Computed Convolution
y = conv(x1,x2);

% Computation of DFT
h1 = freqz(x1, 1, w);
h2 = freqz(x2, 1, w);

% Calculation of Product and Convolutional DFT
hp = h1.*h2;
h3 = freqz(y,1,w);

%Plotting
subplot(2,2,1)
plot(w/pi,abs(hp));grid
title('Product of Magnitude Spectra')
xlabel('Frequency (\omega/\pi)' );
ylabel('Magnitude');

subplot(2,2,2)
plot(w/pi,abs(h3));grid
title('Magnitude Spectrum of Convolved Sequence')
xlabel('Frequency (\omega/\pi)' );
ylabel('Magnitude');

subplot(2,2,3)
plot(w/pi,angle(hp));grid
title('Sum of Phase Spectra')
xlabel('Frequency (\omega/\pi)' );
ylabel('Magnitude');

subplot(2,2,4)
plot(w/pi, angle(h3));grid
title('Phase Spectrum of Convolved Sequence')
xlabel('Frequency (\omega/\pi)' );
ylabel('Magnitude');