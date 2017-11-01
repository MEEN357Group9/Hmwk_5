function [ I ] = trapint(x,fx)
% Takes data sample locations and function samplings at those locations as
% inputs and returns an approximation of the integral over the sample range
% based on the trapezoidal rule
%
% Inputs:
% x              is the data sample locations
% fx             is the function samplings at provided location
%
% Outputs: 
% I              is the approximation of the integral over the sample range

% input error checking
if length(x) ~= length(fx) 
    error('x and fx need to be the same length')
elseif ~isvector(x) || ~isvector(fx)
    error('Check x or fx. They must be arrays, not matrices.')
elseif ~isnumeric(x) || ~isnumeric(fx)
    error('Check x or fx. The elements of the array must be numeric.')
else
    % good job; continue on
end


% actual function runnning
I = 0; % start off with 0 as the integral
for j = 1: (length(x)-1)
    I2 = (fx(j) + fx(j+1))/2*(x(j+1) - x(j));
    I = I2 + I;
end


end

