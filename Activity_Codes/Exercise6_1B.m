% Example 6.2
% Modified Convolution Routine

x1 = [1, 2, 3, 2]; n1 = [-1:2];
x2 = [1, 0, 0, 0, 0, 0, -1]; n2 = [-3:3];
[x3,n3] = conv_m(x1,n1,x2,n2)

function [y, ny]= conv_m(x,nx,h,nh) 
nyb = nx(1)+ nh(1);  
nye = nx(length(x))+ nh(length(h)); 
ny =[nyb:nye]; 
y = conv(x,h);

end