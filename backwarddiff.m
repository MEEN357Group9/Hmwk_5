function I = backwarddiff(x,fx)

chk1 = length(x);
chk2 = length(fx);

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
     error('One of your inputs is not a vector')
end

if isnumeric(fx) ~= 1
     error('One of your inputs is not a vector')
end

I = zeros;
for i = 3:chk1-2
    I(i-2) = (3*fx(i) - 4*fx(i-1) + fx(i-2))/(2*(x(i) - x(i-1)));
    % this starts at 3-2 which is 1 which will take care of the negatives
    % make counter 3-(chk1-2)
end


end