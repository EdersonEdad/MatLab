function [y,n] = sigshift(x,m,n0)
% y(n) = x(n-n0)
n = m+n0; y = x;