% Example 6.4
% Resolving Example 1 using deconv_m function


x3 = [6,17,34,43,38,24]; 
nx3=[0:5] ; 
xl= [2,3,4]; 
nx1=[0,1,2]; 
[y,ny ]= deconv_m(x3,nx3,xl,nx1)

disp('y = ');
disp(x2);
disp('ny');
disp(n3);
disp('r');
disp(r);

% modified deconvolution routine
function[y, ny] = deconv_m(x, nx, h, nh)
   
    nyb = nx(1) - nh(1);        
    nye = nx(end) - nh(end);     
    ny = nyb:nye;               
    [y, r] = deconv(x, h);  
end