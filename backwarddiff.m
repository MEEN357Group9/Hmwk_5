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


for i = chk1:-1:1
    I = (3*fx(i) - 4*fx(i-1) + fx(i-2))/(2*x(i-1) - x(i));
    if fx(i) <= 0
       fx = 0;
    end
end



end