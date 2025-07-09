%Program 8_7 IIR_Chebyshev_Type_2_Lowpass
%A MATLAB program to design IIR Butterworth Lowpass Filter
clf; %Clear all figures
clear all; %Clear all variables
close all; %Close all figures

N = 512;
n = 6; %Define the order of the filter
R = 20; %Stopband ripple in decibles
fc = input('Enter the cutoff frequency: ');
fs = input('Enter the sampling frequency: ');
Wc = 2 * fc / fs; %Normalizing the frequencies

[b,a]=cheby2(n,R,Wc,'low');%Calculation of filter coefficients
freqz(b,a,N,fs); %Plotting the filter response
title('Magnitude and Phase Response of Chebyshev-Type-2 IIR Lowpass Filter');