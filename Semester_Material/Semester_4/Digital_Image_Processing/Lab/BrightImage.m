%% To clear the terminal & workspace 
clc;
clear all;
%% Britening & darkening image
%% HINT: If image is rgb (0-255), we can bright it by adding number of 
%% pixel we want to bright because 0 is black and 255 is red. It means
%% by incresing pixel length, image will be more bright and other case
%% of dark is opposite to this!!
A = imread('E:\Digital Image Processing\Lab\download.jfif');

subplot(131);
imshow(A);
title('Orignal Image');

subplot(132);
imshow(A+120); % Bright image
title('Bright image:120');

subplot(133);
imshow(A-120); % Dark image
title('Dark image:120');

impixelinfo;  % Show pixel details