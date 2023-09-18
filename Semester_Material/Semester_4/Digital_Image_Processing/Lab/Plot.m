%% Ploting two signal
subplot(2,1,1);
x = linspace(0,10);
y1 = sin(x);
plot(x,y1);
title('Sin(x)');

subplot(2,1,2); 
y2 = sin(5*x);
plot(x,y2);
title('Sin(5*x)');
%% To clear the terminal & workspace
clc;
clear all;
