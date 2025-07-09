% Example 6.3
% Division of Polynomial
% Computes the result of dividing b by a in a polynomial part p and a remainder r

x3 = [6, 17, 34, 43, 38, 24];  
n1 = [0:5];                     
xl = [2, 3, 4];              
n2 = [0,1,2];                     
[x2, n3] = deconv_m(x3, n1, xl, n2); 

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

