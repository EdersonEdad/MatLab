%Program P7_5
%Modulation Property of DTFT

% Clear the figure Window
clf;

%Frequency Range
w = -pi:2*pi/255:pi;

% Defining the 2 sequences
x1 = [5,10,15];
x2 = [1 -1 1 ];

% Product of the Sequence
y = x1.*x2;

% Frequency response using FFT
h1 = freqz(x1, 1, w);
h2 = freqz(x2, 1, w);
h3 = freqz(y, 1, w);

%Plotting 
subplot(3,1,1)
plot(w/pi,abs(h1));grid
title('Magnitude Spectrum of First Sequence')
xlabel('Frequency (\omega/\pi)' );
ylabel('Magnitude');

subplot(3,1,2)
plot(w/pi,abs(h2));grid
title('Magnitude Spectrum of Second Sequence')
xlabel('Frequency (\omega/\pi)' );
ylabel('Magnitude');

subplot(3,1,3)
plot(w/pi,abs(h3));grid
title('Magnitude Spectrum of Product Sequence')
xlabel('Frequency (\omega/\pi)' );
ylabel('Magnitude');