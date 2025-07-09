%Program 8_6 IIR_Chebyshev_Type_1_Lowpass
%A MATLAB program to design IIR Butterworth Lowpass Filter
clf; %Clear all figures
clear all; %Clear all variables
close all; %Close all figures

N = 512;
n = 6; %Define the order of the filter
rp = 0.5; %Define the Passband peak-to-peak ripple in decibels
fc = input('Enter the cutoff frequency: ');
fs = input('Enter the sampling frequency: ');
Wc = 2 * fc / fs; %Normalizing the frequencies

[b,a]=cheby1(n,rp,Wc,'low'); %Calculating filter coefficients
freqz(b,a,N,fs); %Plotting the filter response
title('Magnitude and Phase Response of Chebyshev-Type-1 IIR Lowpass Filter');