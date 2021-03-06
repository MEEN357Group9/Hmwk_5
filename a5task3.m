% a5task3
% intervals versus actual integral; curves wanted, using trapezoidal and
% simpson 3/8 rule

clc;
close all;
clear all;

% cover range from 3 to 30 intervals

% initiallize matrices
Itrap = zeros(1);
Isim = zeros(1);
u = 1;
v = 1;
sizest = zeros(1);
sizess = zeros(1);

% trapezoidal integration
for j = 3:30
    
    h = 3/j; %interval
    x = linspace(0,3,j); % x values
    y = x.^2.*sin(x); % corresponding y values
    
    sizest(u) = j;
    Itrap(u) = trapint(x,y);
    
    u = u +1;
end

for k = 3:3:30
   h = 3/k; %interval
    x = linspace(0,3,k); % x values
    y = x.^2.*sin(x); 

Isim(v) = simp38int(h,y);
        sizess(v) = k;
        v = v + 1;
end

% legit integral
fun = @(x) x.^2.*sin(x);
I = integral(fun,0,3);
x2 = [3,30];
y2 = [I,I];

% plots
plot(sizest,Itrap,sizess,Isim,x2,y2)
title('Integral Approximations')
xlabel('Number of Integration Steps')
ylabel('Approximations')
legend('Trapezoidal Integration','Simpson''s 3/8 Rule Integration',...
    'True Integration','location','southeast')



