%% Creating & displaying matrix
%%Array index starts with 1
%Both of the below method of creating matrix row wise is acceptable
A = [2 3 4 ; 6 3 1];
B = [5,2,1 ; 4,2,1];

C = magic(4); % create random numbers matrix of 4x4

disp(A);
disp(B);
disp(C);

B(1,2) = 133;

%% Displaying single row & column

disp(A(:,2));
disp(A(1,:));
%% For clearing purpose
clc;
clear all;
