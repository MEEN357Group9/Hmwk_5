% a5task4.m
clc;
clearvars;
ha=[0,1,2,3,4,5,6,7,8,9;... %%%%%% this row should be 0:3:27, idk why
    0.00,0.31,.99,1.77,2.40,2.73,2.55,2.07,1.32,.585]; %%%%%%% also apparently we're supposed to take off the last zero in this second row according to the TA
a=2*ha(2,:);%whole area in in^2
h=3;
x=3*ha(1,:);
fx=a;
trap=trapint(x,fx);
simp38=simp38int(h,fx);
d=62.4/12^3; 
weight_trap=d*trap;
weight_simp38=d*simp38;
t={'Using Trapoziod Method','Using Simpsion 3/8 Method'};
Weight=[weight_trap;weight_simp38];
Volume=[trap;simp38];
T=table(Weight,Volume, 'RowNames' ,t);
disp(T)
