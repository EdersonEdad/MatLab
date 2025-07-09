%Program 8_1 FIR_Lowpass
%A MATLAB program to design FIR Lowpass Filter using MATLAB
%function fir1().

clf; %Clear all figures
clear all; %Clear all variables
close all; %Close all figures
N = 512;
O = 64; %Define the order of the filter

fc = input('Enter the cutoff frequency: ');
fs = input('Enter the sampling frequency: ');

Wc=2*fc/fs; %Normalizing the frequencies
b=fir1(O,Wc,'low'); %Calculation of filter coefficients
freqz(b,1,N,fs); %Plotting the filter response
title('Magnitude and Phase Response of FIR Lowpass Filter');