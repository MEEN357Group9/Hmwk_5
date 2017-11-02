%% A5TASK6  Application of backwarddiff.m
%
% Assignment 5, Task 6
% Group 9
%
 % dT/dt = -k*(T - T_amb)
 % T = temp of the body
 % T_amb = 23 C
 % k = proportionality constant
 
 t = [0,5,10,15,20,25,30,35,40,45,50];
 T = [100,80,50,40,35,30,27,25,24,23.5,23.5];
 
 T_amb = 23; % Degrees C
 
 equ = zeros(1,11);
 y = zeros(1,11);
 for i = 1:11
    equ(i) = T(i) - T_amb;
    I(i) = backwarddiff(i,i);
 end
 
 %y = [1,2,3,4,5,6,7,8,9,10,11];
 
 figure
 plot(equ,I)
 