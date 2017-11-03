function I = backwarddiff(x,fx)
% This function approximates the derivative using the backwards difference method
% for O(h^2) 
%
% Inputs:
% x            (N-element vector) numerical data for sample locations
% fx           (N-element vector) function data taken at locations defined
%              in input x
%
% Outputs: 
% I            is the approximation for the differentiation of fx over its sampled
%              range


chk1 = length(x);
chk2 = length(fx);

% For error checking
if chk1 ~= chk2
    error('x and fx are not the same length')
end

if isvector(x) ~= 1
    error('One of your inputs is not a vector')
end

if isvector(fx) ~= 1
    error('One of your inputs is not a vector')
end

if isnumeric(x) ~= 1
     error('One of your inputs is not a vector with numerical data')
end

if isnumeric(fx) ~= 1
     error('One of your inputs is not a vector with numerical data')
end

% Approximation of derivative by backward difference method
I = zeros;
for i = 3:chk1-2 % starts at 3 instead of 1 so term i-2 does not fall below zero
    I(i-2) = (3*fx(i) - 4*fx(i-1) + fx(i-2))/(2*(x(i) - x(i-1)));
end

end