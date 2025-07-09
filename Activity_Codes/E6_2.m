% Example 6.2
% Modified Convolution Routine

x1= [1,2,3]; n1 = [-1:1]; 
x2= [2,4,3,5]; n2= [-2:1]; 
[x3,n3]=conv_m(x1,n1,x2,n2)

function [y,ny]=conv_m(x,nx,h,nh) 
nyb=nx(1)+nh(1); 
nye=nx(length(x))+nh(length(h)); 
ny=[nyb:nye]; 
y=conv(x,h) 
end