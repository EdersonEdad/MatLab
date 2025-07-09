% Program 8_5 IIR_Butterworth_Lowpass
%A MATLAB program to design IIR Butterworth Lowpass Filter
clf; %Clear all figures
clear all; %Clear all variables
close all; %Close all figures

N = 512;
n = 6; %Define the order of the filter
fc = input('Enter the cutoff frequency: ');
fs = input('Enter the sampling frequency: ');

Wc = 2 * fc / fs; %Normalizing the frequencies
[b,a]=butter(n,Wc,'low'); %Calculation of filter coefficients
freqz(b,a,N,fs); %Plotting the filter response
title('Magnitude and Phase response of Butterworth IIR Lowpass filter');