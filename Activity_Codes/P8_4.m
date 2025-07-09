%Program 8_4 FIR_Bandstop
%A MATLAB program to design FIR Bandstop Filter using MATLAB
%function fir1().
clf; %Clear all figures
clear all; %Clear all variables
close all; %Close all figures

N = 512;
O = 64; %Define the order of the filter
fn = input('Enter the stopband range of frequencies: ');
fs = input('Enter the sampling frequency: ');

Wn=2*fn/fs; %Normalizing the frequencies
b=fir1(O,Wn,'stop'); %Calculation of filter coefficients
freqz(b,1,N,fs); %Plotting the filter response
title('Magnitude and Phase response');