%% Reading and displaying image
A = imread('E:/download.jfif');
imshow(A);
%disp(A);

B = rand(50,40,3);
imwrite(B,'E:/download2.jpeg');

%Getting size of image
[row,col] = size(A);

disp(row);
disp(col);

fileName = input('Enter the file name:');
%% Clear the terminal & workspace
clc;
clear all;