% a5task4.m
% This task calculates the weight of a ship based on the trapiziod method
% and 3/8th method. 
clc;
clearvars;
%Creating the variables 
ha=[0,1,2,3,4,5,6,7,8,9;... %%%%%% this row should be 0:3:27, idk why %%% take care of in line 8 
    0.00,0.31,.99,1.77,2.40,2.73,2.55,2.07,1.32,.585]; %%%%%%% also apparently we're supposed to take off the last zero in this second row according to the TA
a=2*ha(2,:);%whole area in in^2
h=3; %size of steps
x=3*ha(1,:);
fx=a;
trap=trapint(x,fx); %Uses trapaziod method
simp38=simp38int(h,fx); %3/8th mothod
d=62.4/12^3; %density of the water
weight_trap=d*trap; %determining the weight. 
weight_simp38=d*simp38; %determining the weight. 
t={'Using Trapoziod Method','Using Simpsion 3/8 Method'};
Weight=[weight_trap;weight_simp38];
Volume=[trap;simp38];
T=table(Weight,Volume, 'RowNames' ,t); %Making a table to make it look nice. 
disp(T)
