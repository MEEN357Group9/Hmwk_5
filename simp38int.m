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
elseif mod(length(fx)-1,3) == 0 %%%%%%%% also apparently this was wrong on the 
    %                               document, it's supposed to be
    %                               (length(x)-1)/3 because of something
    %                               about the number of points it uses 
    error('fx must be a vector with an odd number of elements')
elseif ~isnumeric(h) || ~isnumeric(fx)
    error('h and fx must be numeric.')
else
    % good job
end

% actual integration
Iin = zeros(1); % start summation

for j = 1:3:length(fx)-2 %%%%%%%%%% they said that it should just be the
                                %equation in lecture 9 slide 20 and then
                                % it's just playing around with the index
    
    Iin(j) = (3*h)*(fx(j) + 3*fx(j) + 3*fx(j+1) + fx(j+2))/8;
    
    %{
    %%%%%%% so the way the index goes is it's supposed to 
            do steps 1,2,3,4 then 4,5,6,7 then 7,8,9,10 and so on                   
 %}
          
    
end
I=sum(Iin);


end

