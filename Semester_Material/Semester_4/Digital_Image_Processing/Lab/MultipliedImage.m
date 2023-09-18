%% To clear the terminal & workspace
clc;
clear all;
%% Mulitplication of image

A = imread('E:\Digital Image Processing\Lab\download.jfif');
imshow(A);

BW1 = roipoly;
BW1 = uint8(BW1);
imshow(A);

BW2 = roipoly;
BW2 = uint8(BW2);
BW = BW1+BW2;
subplot(121);
imshow(A);
title('Orignal image');
subplot(122);
imshow(A.*BW);
title('Image after multiplication');