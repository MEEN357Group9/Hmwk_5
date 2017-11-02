function [ I ] = simp38int( h, fx )
% Takes data sampled at evenly spaced locations as inputs and returns an
% approximation of the integral over the sample range based on Simpson's
% multiple-application 3/8 rule 
% 
% Inputs:
% h            is step size separating adjacent sampling locations
% fx           is function data taken at uniform locations separated by a
%               distance of h
%
% Outputs: 
% I            is the approximation for the integral of fx over its sampled
%               range

% input error checking 

if ~isscalar(h)
    error('h must be a scalar value.')
elseif ~isvector(fx)
    error('fx must be a vector.')
elseif mod(length(fx),2) == 0
    error('fx must be a vector with an odd number of elements')
elseif ~isnumeric(h) || ~isnumeric(fx)
    error('h and fx must be numeric.')
else
    % good job
end

% actual integration
Iin = 0; % start summation

for j = 1:length(fx)
    
    % first and last fx are special
    if j == 1 || j == length(fx)
        Iin = Iin + fx(j);
    else
        Iin = Iin + 3 * fx(j);
    end
    
end

I = 3*h / 8 * Iin;

end

